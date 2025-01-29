#include "trackle_interface.h"
#include <string.h>

#include "lwip/inet.h"
#include "lwip/ip_addr.h"
#include "lwip/dns.h"
#include "lwip/sockets.h"
#include "lwip/udp.h"

// Local firmware includes
#include "trackle_hardcoded_credentials.h"

// Cloud POST functions
static int funSuccess(const char *args);
static int funFailure(const char *args);
static int incrementCloudNumber(const char *args);

// Cloud GET functions
static const void *getCloudNumberMessage(const char *args);
static const void *getHalfCloudNumber(const char *args);

// Cloud GET variables
static int cloudNumber = 0;

#define MAIN_LOOP_PERIOD_MS 10
uint32_t last_publish = 0;

int _gettimeofday( struct timeval *tv, void *tzvp )
{
    uint64_t t = HAL_GetTick();  // get uptime in nanoseconds
    tv->tv_sec = t / 1000;  // convert to seconds
    tv->tv_usec = ( t % 1000 ) / 1000;  // get remaining microseconds
    return 0;  // return non-zero for error
} // end _gettimeofday()

// cloud socket
struct Trackle *trackle_s;
struct sockaddr_in cloud_addr;
struct in_addr *cloud_in_addr;

int cloud_socket;
int connection_status = 0;

static system_tick_t getMillis(void)
{
    return HAL_GetTick();
}

// BEGIN -- Cloud POST functions --------------------------------------------------------------------------------------------------------------------

funSuccess(const char *args)
{
    return 1;
}

static int funFailure(const char *args)
{
    return -1;
}

static int incrementCloudNumber(const char *args)
{
    cloudNumber++;
    return 1;
}

// END -- Cloud POST functions ----------------------------------------------------------------------------------------------------------------------

// BEGIN -- Cloud GET functions --------------------------------------------------------------------------------------------------------------------

static char cloudNumberMessage[64];
static const void *getCloudNumberMessage(const char *args)
{
    sprintf(cloudNumberMessage, "The number is %d !", cloudNumber);
    return cloudNumberMessage;
}

static const void *getHalfCloudNumber(const char *args)
{
    static char buffer[40];
    buffer[0] = '\0';
    sprintf(buffer, "{\"halfCloudNumber\":%d}", cloudNumber / 2);
    return buffer;
}

// END -- Cloud GET functions ----------------------------------------------------------------------------------------------------------------------

void log_cb(const char *msg, int level, const char *category, void *attribute, void *reserved)
{
    printf("%ld Log_cb: (%s) -> %s\n", getMillis(), (category ? category : ""), msg);
}

void sleep_cb(uint32_t sleep)
{
	osDelay(sleep);
}

void dns_callback(const char *name, const ip_addr_t *ipaddr, void *callback_arg)
{
	if (ipaddr != NULL) {
		*((uint32_t *)callback_arg) = 0;
	} else {
		*((uint32_t *)callback_arg) = 0;
	}
}

bool bDNSFound = false;
ip_addr_t ip_Addr;

void dns_found_cb(const char *name, const ip_addr_t *ipaddr, void *callback_arg)
{
    ip_Addr = *ipaddr;
    bDNSFound = true;
}

int connect_cb_udp(const char *address, int port)
{
    printf("Connecting socket\n");

    dns_gethostbyname(address, &ip_Addr, dns_found_cb, NULL);

    while( !bDNSFound ) {
        printf("Resolving %s...\n", address);
        osDelay(500);
    }

    printf( "DNS found: %i.%i.%i.%i\n",
            ip4_addr1(&ip_Addr.u_addr.ip4),
            ip4_addr2(&ip_Addr.u_addr.ip4),
            ip4_addr3(&ip_Addr.u_addr.ip4),
            ip4_addr4(&ip_Addr.u_addr.ip4) );

    memcpy(&cloud_addr.sin_addr.s_addr, &ip_Addr.u_addr.ip4, sizeof(ip_Addr.u_addr.ip4));
    cloud_addr.sin_family = AF_INET;
    cloud_addr.sin_port = htons(port);

    cloud_socket = lwip_socket(AF_INET, SOCK_DGRAM, IPPROTO_IP);
    if (cloud_socket < 0)
    {
        printf("Unable to create socket: errno %d", errno);
        return -3;
    }
    printf("Socket created, sending to %s:%d\n", address, port);

    // setting socket timeout
    struct timeval socket_timeout;
    socket_timeout.tv_sec = 0;
    socket_timeout.tv_usec = 1000; // 1ms
    lwip_setsockopt(cloud_socket, SOL_SOCKET, SO_RCVTIMEO, (struct timeval *)&socket_timeout, sizeof(struct timeval));

    return 1;
}

int disconnect_cb()
{
    if (cloud_socket)
        lwip_close(cloud_socket);
    return 1;
}

int send_cb_udp(const unsigned char *buf, uint32_t buflen, void *tmp)
{
    size_t sent = lwip_sendto(cloud_socket, (const char *)buf, buflen, 0, (struct sockaddr *)&cloud_addr, sizeof(cloud_addr));
    if ((int)sent > 0)
    {
        printf("send_cb_udp sent %d\n", sent);
    }

    return (int)sent;
}

int receive_cb_udp(unsigned char *buf, uint32_t buflen, void *tmp)
{
    size_t res = lwip_recvfrom(cloud_socket, (char *)buf, buflen, 0, (struct sockaddr *)NULL, NULL);
    if ((int)res > 0)
    {
        printf("receive_cb_udp received %d\n", res);
    }

    // on timeout error, set bytes received to 0
    if ((int)res < 0 && errno == 11)
    {
        res = 0;
    }

    return (int)res;
}

/* Trackle Task */
void startTrackle(void)
{

    trackle_s = newTrackle();
    trackleSetDeviceId(trackle_s, HARDCODED_DEVICE_ID);

    // calback per i log e livello del log
    trackleSetLogCallback(trackle_s, log_cb);
    trackleSetLogLevel(trackle_s, TRACKLE_INFO);
    trackleSetConnectionType(trackle_s, CONNECTION_TYPE_WIFI);

    // configurazione delle callback
    trackleSetMillis(trackle_s, getMillis);
    trackleSetSendCallback(trackle_s, send_cb_udp);
    trackleSetReceiveCallback(trackle_s, receive_cb_udp);
    trackleSetConnectCallback(trackle_s, connect_cb_udp);
    trackleSetDisconnectCallback(trackle_s, disconnect_cb);
    trackleSetSleepCallback(trackle_s, sleep_cb);
    trackleSetKeys(trackle_s, HARDCODED_PRIVATE_KEY);

    //trackleGet(trackle_s, "getJson111", (void *(*)(const char *))getJsonFn, VAR_JSON);

    // Registering POST functions callable from cloud
	tracklePost(trackle_s, "funSuccess", funSuccess, ALL_USERS);
	tracklePost(trackle_s, "funFailure", funFailure, ALL_USERS);
	tracklePost(trackle_s, "incrementCloudNumber", incrementCloudNumber, ALL_USERS);

	// Registering values GETtable from cloud as result of a function call
	trackleGet(trackle_s, "getCloudNumberMessage", getCloudNumberMessage, VAR_STRING);
	trackleGet(trackle_s, "getHalfCloudNumber", getHalfCloudNumber, VAR_JSON);

    trackleConnect(trackle_s);
}

static void publishIfPeriodElapsed()
{
    static int waitingMillis = 0;
    waitingMillis += MAIN_LOOP_PERIOD_MS;
    if (waitingMillis > 20000)
    {
        tracklePublish(trackle_s, "timed_events/every20s", "20 seconds passed", 60, PUBLIC, WITH_ACK, 0);
        waitingMillis = 0;
    }
}

void loopTrackle(void)
{
    trackleLoop(trackle_s);
    publishIfPeriodElapsed();
	osDelay(MAIN_LOOP_PERIOD_MS);
}
