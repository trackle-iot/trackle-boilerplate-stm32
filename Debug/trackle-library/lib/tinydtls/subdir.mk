################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../trackle-library/lib/tinydtls/ccm.c \
../trackle-library/lib/tinydtls/crypto.c \
../trackle-library/lib/tinydtls/dtls.c \
../trackle-library/lib/tinydtls/dtls_debug.c \
../trackle-library/lib/tinydtls/dtls_prng.c \
../trackle-library/lib/tinydtls/dtls_time.c \
../trackle-library/lib/tinydtls/hmac.c \
../trackle-library/lib/tinydtls/netq.c \
../trackle-library/lib/tinydtls/peer.c \
../trackle-library/lib/tinydtls/session.c 

C_DEPS += \
./trackle-library/lib/tinydtls/ccm.d \
./trackle-library/lib/tinydtls/crypto.d \
./trackle-library/lib/tinydtls/dtls.d \
./trackle-library/lib/tinydtls/dtls_debug.d \
./trackle-library/lib/tinydtls/dtls_prng.d \
./trackle-library/lib/tinydtls/dtls_time.d \
./trackle-library/lib/tinydtls/hmac.d \
./trackle-library/lib/tinydtls/netq.d \
./trackle-library/lib/tinydtls/peer.d \
./trackle-library/lib/tinydtls/session.d 

OBJS += \
./trackle-library/lib/tinydtls/ccm.o \
./trackle-library/lib/tinydtls/crypto.o \
./trackle-library/lib/tinydtls/dtls.o \
./trackle-library/lib/tinydtls/dtls_debug.o \
./trackle-library/lib/tinydtls/dtls_prng.o \
./trackle-library/lib/tinydtls/dtls_time.o \
./trackle-library/lib/tinydtls/hmac.o \
./trackle-library/lib/tinydtls/netq.o \
./trackle-library/lib/tinydtls/peer.o \
./trackle-library/lib/tinydtls/session.o 


# Each subdirectory must supply rules for building sources it contributes
trackle-library/lib/tinydtls/%.o trackle-library/lib/tinydtls/%.su: ../trackle-library/lib/tinydtls/%.c trackle-library/lib/tinydtls/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F207xx -DWITH_LWIP -c -I../Core/Inc -I../Drivers/STM32F2xx_HAL_Driver/Inc -I../Drivers/STM32F2xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F2xx/Include -I../Drivers/CMSIS/Include -I../LWIP/App -I../LWIP/Target -I../Middlewares/Third_Party/LwIP/src/include -I../Middlewares/Third_Party/LwIP/system -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -I../Middlewares/Third_Party/LwIP/src/include/netif/ppp -I../Middlewares/Third_Party/LwIP/src/include/lwip -I../Middlewares/Third_Party/LwIP/src/include/lwip/apps -I../Middlewares/Third_Party/LwIP/src/include/lwip/priv -I../Middlewares/Third_Party/LwIP/src/include/lwip/prot -I../Middlewares/Third_Party/LwIP/src/include/netif -I../Middlewares/Third_Party/LwIP/src/include/posix -I../Middlewares/Third_Party/LwIP/src/include/posix/sys -I../Middlewares/Third_Party/LwIP/system/arch -I"/Users/flavio/STM32CubeIDE/workspace_1.11.2/Trackle_nucleo_boilerplate/trackle-library/include" -I"/Users/flavio/STM32CubeIDE/workspace_1.11.2/Trackle_nucleo_boilerplate/trackle-library/lib/micro-ecc" -I"/Users/flavio/STM32CubeIDE/workspace_1.11.2/Trackle_nucleo_boilerplate/trackle-library/lib/tinydtls" -I"/Users/flavio/STM32CubeIDE/workspace_1.11.2/Trackle_nucleo_boilerplate/trackle-library/lib/tinydtls/aes" -I"/Users/flavio/STM32CubeIDE/workspace_1.11.2/Trackle_nucleo_boilerplate/trackle-library/lib/tinydtls/sha2" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-trackle-2d-library-2f-lib-2f-tinydtls

clean-trackle-2d-library-2f-lib-2f-tinydtls:
	-$(RM) ./trackle-library/lib/tinydtls/ccm.d ./trackle-library/lib/tinydtls/ccm.o ./trackle-library/lib/tinydtls/ccm.su ./trackle-library/lib/tinydtls/crypto.d ./trackle-library/lib/tinydtls/crypto.o ./trackle-library/lib/tinydtls/crypto.su ./trackle-library/lib/tinydtls/dtls.d ./trackle-library/lib/tinydtls/dtls.o ./trackle-library/lib/tinydtls/dtls.su ./trackle-library/lib/tinydtls/dtls_debug.d ./trackle-library/lib/tinydtls/dtls_debug.o ./trackle-library/lib/tinydtls/dtls_debug.su ./trackle-library/lib/tinydtls/dtls_prng.d ./trackle-library/lib/tinydtls/dtls_prng.o ./trackle-library/lib/tinydtls/dtls_prng.su ./trackle-library/lib/tinydtls/dtls_time.d ./trackle-library/lib/tinydtls/dtls_time.o ./trackle-library/lib/tinydtls/dtls_time.su ./trackle-library/lib/tinydtls/hmac.d ./trackle-library/lib/tinydtls/hmac.o ./trackle-library/lib/tinydtls/hmac.su ./trackle-library/lib/tinydtls/netq.d ./trackle-library/lib/tinydtls/netq.o ./trackle-library/lib/tinydtls/netq.su ./trackle-library/lib/tinydtls/peer.d ./trackle-library/lib/tinydtls/peer.o ./trackle-library/lib/tinydtls/peer.su ./trackle-library/lib/tinydtls/session.d ./trackle-library/lib/tinydtls/session.o ./trackle-library/lib/tinydtls/session.su

.PHONY: clean-trackle-2d-library-2f-lib-2f-tinydtls

