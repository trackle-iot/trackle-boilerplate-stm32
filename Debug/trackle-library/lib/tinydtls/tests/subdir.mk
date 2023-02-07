################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../trackle-library/lib/tinydtls/tests/cbc_aes128-test.c \
../trackle-library/lib/tinydtls/tests/cbc_aes128-testdata.c \
../trackle-library/lib/tinydtls/tests/ccm-test.c \
../trackle-library/lib/tinydtls/tests/ccm-testdata.c \
../trackle-library/lib/tinydtls/tests/dsrv-test.c \
../trackle-library/lib/tinydtls/tests/dtls-client.c \
../trackle-library/lib/tinydtls/tests/dtls-server.c \
../trackle-library/lib/tinydtls/tests/netq-test.c \
../trackle-library/lib/tinydtls/tests/pcap.c 

C_DEPS += \
./trackle-library/lib/tinydtls/tests/cbc_aes128-test.d \
./trackle-library/lib/tinydtls/tests/cbc_aes128-testdata.d \
./trackle-library/lib/tinydtls/tests/ccm-test.d \
./trackle-library/lib/tinydtls/tests/ccm-testdata.d \
./trackle-library/lib/tinydtls/tests/dsrv-test.d \
./trackle-library/lib/tinydtls/tests/dtls-client.d \
./trackle-library/lib/tinydtls/tests/dtls-server.d \
./trackle-library/lib/tinydtls/tests/netq-test.d \
./trackle-library/lib/tinydtls/tests/pcap.d 

OBJS += \
./trackle-library/lib/tinydtls/tests/cbc_aes128-test.o \
./trackle-library/lib/tinydtls/tests/cbc_aes128-testdata.o \
./trackle-library/lib/tinydtls/tests/ccm-test.o \
./trackle-library/lib/tinydtls/tests/ccm-testdata.o \
./trackle-library/lib/tinydtls/tests/dsrv-test.o \
./trackle-library/lib/tinydtls/tests/dtls-client.o \
./trackle-library/lib/tinydtls/tests/dtls-server.o \
./trackle-library/lib/tinydtls/tests/netq-test.o \
./trackle-library/lib/tinydtls/tests/pcap.o 


# Each subdirectory must supply rules for building sources it contributes
trackle-library/lib/tinydtls/tests/%.o trackle-library/lib/tinydtls/tests/%.su: ../trackle-library/lib/tinydtls/tests/%.c trackle-library/lib/tinydtls/tests/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F207xx -DWITH_LWIP -c -I../Core/Inc -I../Drivers/STM32F2xx_HAL_Driver/Inc -I../Drivers/STM32F2xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F2xx/Include -I../Drivers/CMSIS/Include -I../LWIP/App -I../LWIP/Target -I../Middlewares/Third_Party/LwIP/src/include -I../Middlewares/Third_Party/LwIP/system -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -I../Middlewares/Third_Party/LwIP/src/include/netif/ppp -I../Middlewares/Third_Party/LwIP/src/include/lwip -I../Middlewares/Third_Party/LwIP/src/include/lwip/apps -I../Middlewares/Third_Party/LwIP/src/include/lwip/priv -I../Middlewares/Third_Party/LwIP/src/include/lwip/prot -I../Middlewares/Third_Party/LwIP/src/include/netif -I../Middlewares/Third_Party/LwIP/src/include/posix -I../Middlewares/Third_Party/LwIP/src/include/posix/sys -I../Middlewares/Third_Party/LwIP/system/arch -I"/Users/flavio/STM32CubeIDE/workspace_1.11.2/Trackle_nucleo_boilerplate/trackle-library/include" -I"/Users/flavio/STM32CubeIDE/workspace_1.11.2/Trackle_nucleo_boilerplate/trackle-library/lib/micro-ecc" -I"/Users/flavio/STM32CubeIDE/workspace_1.11.2/Trackle_nucleo_boilerplate/trackle-library/lib/tinydtls" -I"/Users/flavio/STM32CubeIDE/workspace_1.11.2/Trackle_nucleo_boilerplate/trackle-library/lib/tinydtls/aes" -I"/Users/flavio/STM32CubeIDE/workspace_1.11.2/Trackle_nucleo_boilerplate/trackle-library/lib/tinydtls/sha2" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-trackle-2d-library-2f-lib-2f-tinydtls-2f-tests

clean-trackle-2d-library-2f-lib-2f-tinydtls-2f-tests:
	-$(RM) ./trackle-library/lib/tinydtls/tests/cbc_aes128-test.d ./trackle-library/lib/tinydtls/tests/cbc_aes128-test.o ./trackle-library/lib/tinydtls/tests/cbc_aes128-test.su ./trackle-library/lib/tinydtls/tests/cbc_aes128-testdata.d ./trackle-library/lib/tinydtls/tests/cbc_aes128-testdata.o ./trackle-library/lib/tinydtls/tests/cbc_aes128-testdata.su ./trackle-library/lib/tinydtls/tests/ccm-test.d ./trackle-library/lib/tinydtls/tests/ccm-test.o ./trackle-library/lib/tinydtls/tests/ccm-test.su ./trackle-library/lib/tinydtls/tests/ccm-testdata.d ./trackle-library/lib/tinydtls/tests/ccm-testdata.o ./trackle-library/lib/tinydtls/tests/ccm-testdata.su ./trackle-library/lib/tinydtls/tests/dsrv-test.d ./trackle-library/lib/tinydtls/tests/dsrv-test.o ./trackle-library/lib/tinydtls/tests/dsrv-test.su ./trackle-library/lib/tinydtls/tests/dtls-client.d ./trackle-library/lib/tinydtls/tests/dtls-client.o ./trackle-library/lib/tinydtls/tests/dtls-client.su ./trackle-library/lib/tinydtls/tests/dtls-server.d ./trackle-library/lib/tinydtls/tests/dtls-server.o ./trackle-library/lib/tinydtls/tests/dtls-server.su ./trackle-library/lib/tinydtls/tests/netq-test.d ./trackle-library/lib/tinydtls/tests/netq-test.o ./trackle-library/lib/tinydtls/tests/netq-test.su ./trackle-library/lib/tinydtls/tests/pcap.d ./trackle-library/lib/tinydtls/tests/pcap.o ./trackle-library/lib/tinydtls/tests/pcap.su

.PHONY: clean-trackle-2d-library-2f-lib-2f-tinydtls-2f-tests

