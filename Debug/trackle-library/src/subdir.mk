################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../trackle-library/src/chunked_transfer.cpp \
../trackle-library/src/coap.cpp \
../trackle-library/src/coap_channel.cpp \
../trackle-library/src/diagnostic.cpp \
../trackle-library/src/dtls_message_channel.cpp \
../trackle-library/src/dtls_protocol.cpp \
../trackle-library/src/events.cpp \
../trackle-library/src/logging.cpp \
../trackle-library/src/messages.cpp \
../trackle-library/src/protocol.cpp \
../trackle-library/src/protocol_defs.cpp \
../trackle-library/src/publisher.cpp \
../trackle-library/src/trackle.cpp \
../trackle-library/src/trackle_interface.cpp \
../trackle-library/src/trackle_protocol_functions.cpp 

OBJS += \
./trackle-library/src/chunked_transfer.o \
./trackle-library/src/coap.o \
./trackle-library/src/coap_channel.o \
./trackle-library/src/diagnostic.o \
./trackle-library/src/dtls_message_channel.o \
./trackle-library/src/dtls_protocol.o \
./trackle-library/src/events.o \
./trackle-library/src/logging.o \
./trackle-library/src/messages.o \
./trackle-library/src/protocol.o \
./trackle-library/src/protocol_defs.o \
./trackle-library/src/publisher.o \
./trackle-library/src/trackle.o \
./trackle-library/src/trackle_interface.o \
./trackle-library/src/trackle_protocol_functions.o 

CPP_DEPS += \
./trackle-library/src/chunked_transfer.d \
./trackle-library/src/coap.d \
./trackle-library/src/coap_channel.d \
./trackle-library/src/diagnostic.d \
./trackle-library/src/dtls_message_channel.d \
./trackle-library/src/dtls_protocol.d \
./trackle-library/src/events.d \
./trackle-library/src/logging.d \
./trackle-library/src/messages.d \
./trackle-library/src/protocol.d \
./trackle-library/src/protocol_defs.d \
./trackle-library/src/publisher.d \
./trackle-library/src/trackle.d \
./trackle-library/src/trackle_interface.d \
./trackle-library/src/trackle_protocol_functions.d 


# Each subdirectory must supply rules for building sources it contributes
trackle-library/src/%.o trackle-library/src/%.su: ../trackle-library/src/%.cpp trackle-library/src/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m3 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F207xx -DWITH_LWIP -c -I../Core/Inc -I../Drivers/STM32F2xx_HAL_Driver/Inc -I../Drivers/STM32F2xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F2xx/Include -I../Drivers/CMSIS/Include -I../LWIP/App -I../LWIP/Target -I../Middlewares/Third_Party/LwIP/src/include -I../Middlewares/Third_Party/LwIP/system -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -I../Middlewares/Third_Party/LwIP/src/include/netif/ppp -I../Middlewares/Third_Party/LwIP/src/include/lwip -I../Middlewares/Third_Party/LwIP/src/include/lwip/apps -I../Middlewares/Third_Party/LwIP/src/include/lwip/priv -I../Middlewares/Third_Party/LwIP/src/include/lwip/prot -I../Middlewares/Third_Party/LwIP/src/include/netif -I../Middlewares/Third_Party/LwIP/src/include/posix -I../Middlewares/Third_Party/LwIP/src/include/posix/sys -I../Middlewares/Third_Party/LwIP/system/arch -I"/Users/flavio/STM32CubeIDE/workspace_1.11.2/Trackle_nucleo_boilerplate/trackle-library/include" -I"/Users/flavio/STM32CubeIDE/workspace_1.11.2/Trackle_nucleo_boilerplate/trackle-library/lib/micro-ecc" -I"/Users/flavio/STM32CubeIDE/workspace_1.11.2/Trackle_nucleo_boilerplate/trackle-library/lib/tinydtls" -I"/Users/flavio/STM32CubeIDE/workspace_1.11.2/Trackle_nucleo_boilerplate/trackle-library/lib/tinydtls/aes" -I"/Users/flavio/STM32CubeIDE/workspace_1.11.2/Trackle_nucleo_boilerplate/trackle-library/lib/tinydtls/sha2" -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-trackle-2d-library-2f-src

clean-trackle-2d-library-2f-src:
	-$(RM) ./trackle-library/src/chunked_transfer.d ./trackle-library/src/chunked_transfer.o ./trackle-library/src/chunked_transfer.su ./trackle-library/src/coap.d ./trackle-library/src/coap.o ./trackle-library/src/coap.su ./trackle-library/src/coap_channel.d ./trackle-library/src/coap_channel.o ./trackle-library/src/coap_channel.su ./trackle-library/src/diagnostic.d ./trackle-library/src/diagnostic.o ./trackle-library/src/diagnostic.su ./trackle-library/src/dtls_message_channel.d ./trackle-library/src/dtls_message_channel.o ./trackle-library/src/dtls_message_channel.su ./trackle-library/src/dtls_protocol.d ./trackle-library/src/dtls_protocol.o ./trackle-library/src/dtls_protocol.su ./trackle-library/src/events.d ./trackle-library/src/events.o ./trackle-library/src/events.su ./trackle-library/src/logging.d ./trackle-library/src/logging.o ./trackle-library/src/logging.su ./trackle-library/src/messages.d ./trackle-library/src/messages.o ./trackle-library/src/messages.su ./trackle-library/src/protocol.d ./trackle-library/src/protocol.o ./trackle-library/src/protocol.su ./trackle-library/src/protocol_defs.d ./trackle-library/src/protocol_defs.o ./trackle-library/src/protocol_defs.su ./trackle-library/src/publisher.d ./trackle-library/src/publisher.o ./trackle-library/src/publisher.su ./trackle-library/src/trackle.d ./trackle-library/src/trackle.o ./trackle-library/src/trackle.su ./trackle-library/src/trackle_interface.d ./trackle-library/src/trackle_interface.o ./trackle-library/src/trackle_interface.su ./trackle-library/src/trackle_protocol_functions.d ./trackle-library/src/trackle_protocol_functions.o ./trackle-library/src/trackle_protocol_functions.su

.PHONY: clean-trackle-2d-library-2f-src

