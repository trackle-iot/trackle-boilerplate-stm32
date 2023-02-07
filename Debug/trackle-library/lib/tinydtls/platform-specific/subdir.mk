################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../trackle-library/lib/tinydtls/platform-specific/dtls_prng_contiki.c \
../trackle-library/lib/tinydtls/platform-specific/dtls_prng_espidf.c \
../trackle-library/lib/tinydtls/platform-specific/dtls_prng_lwip.c \
../trackle-library/lib/tinydtls/platform-specific/dtls_prng_posix.c \
../trackle-library/lib/tinydtls/platform-specific/dtls_prng_riot.c \
../trackle-library/lib/tinydtls/platform-specific/dtls_prng_win.c \
../trackle-library/lib/tinydtls/platform-specific/dtls_prng_zephyr.c 

C_DEPS += \
./trackle-library/lib/tinydtls/platform-specific/dtls_prng_contiki.d \
./trackle-library/lib/tinydtls/platform-specific/dtls_prng_espidf.d \
./trackle-library/lib/tinydtls/platform-specific/dtls_prng_lwip.d \
./trackle-library/lib/tinydtls/platform-specific/dtls_prng_posix.d \
./trackle-library/lib/tinydtls/platform-specific/dtls_prng_riot.d \
./trackle-library/lib/tinydtls/platform-specific/dtls_prng_win.d \
./trackle-library/lib/tinydtls/platform-specific/dtls_prng_zephyr.d 

OBJS += \
./trackle-library/lib/tinydtls/platform-specific/dtls_prng_contiki.o \
./trackle-library/lib/tinydtls/platform-specific/dtls_prng_espidf.o \
./trackle-library/lib/tinydtls/platform-specific/dtls_prng_lwip.o \
./trackle-library/lib/tinydtls/platform-specific/dtls_prng_posix.o \
./trackle-library/lib/tinydtls/platform-specific/dtls_prng_riot.o \
./trackle-library/lib/tinydtls/platform-specific/dtls_prng_win.o \
./trackle-library/lib/tinydtls/platform-specific/dtls_prng_zephyr.o 


# Each subdirectory must supply rules for building sources it contributes
trackle-library/lib/tinydtls/platform-specific/%.o trackle-library/lib/tinydtls/platform-specific/%.su: ../trackle-library/lib/tinydtls/platform-specific/%.c trackle-library/lib/tinydtls/platform-specific/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F207xx -DWITH_LWIP -c -I../Core/Inc -I../Drivers/STM32F2xx_HAL_Driver/Inc -I../Drivers/STM32F2xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F2xx/Include -I../Drivers/CMSIS/Include -I../LWIP/App -I../LWIP/Target -I../Middlewares/Third_Party/LwIP/src/include -I../Middlewares/Third_Party/LwIP/system -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -I../Middlewares/Third_Party/LwIP/src/include/netif/ppp -I../Middlewares/Third_Party/LwIP/src/include/lwip -I../Middlewares/Third_Party/LwIP/src/include/lwip/apps -I../Middlewares/Third_Party/LwIP/src/include/lwip/priv -I../Middlewares/Third_Party/LwIP/src/include/lwip/prot -I../Middlewares/Third_Party/LwIP/src/include/netif -I../Middlewares/Third_Party/LwIP/src/include/posix -I../Middlewares/Third_Party/LwIP/src/include/posix/sys -I../Middlewares/Third_Party/LwIP/system/arch -I"/Users/flavio/STM32CubeIDE/workspace_1.11.2/Trackle_nucleo_boilerplate/trackle-library/include" -I"/Users/flavio/STM32CubeIDE/workspace_1.11.2/Trackle_nucleo_boilerplate/trackle-library/lib/micro-ecc" -I"/Users/flavio/STM32CubeIDE/workspace_1.11.2/Trackle_nucleo_boilerplate/trackle-library/lib/tinydtls" -I"/Users/flavio/STM32CubeIDE/workspace_1.11.2/Trackle_nucleo_boilerplate/trackle-library/lib/tinydtls/aes" -I"/Users/flavio/STM32CubeIDE/workspace_1.11.2/Trackle_nucleo_boilerplate/trackle-library/lib/tinydtls/sha2" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-trackle-2d-library-2f-lib-2f-tinydtls-2f-platform-2d-specific

clean-trackle-2d-library-2f-lib-2f-tinydtls-2f-platform-2d-specific:
	-$(RM) ./trackle-library/lib/tinydtls/platform-specific/dtls_prng_contiki.d ./trackle-library/lib/tinydtls/platform-specific/dtls_prng_contiki.o ./trackle-library/lib/tinydtls/platform-specific/dtls_prng_contiki.su ./trackle-library/lib/tinydtls/platform-specific/dtls_prng_espidf.d ./trackle-library/lib/tinydtls/platform-specific/dtls_prng_espidf.o ./trackle-library/lib/tinydtls/platform-specific/dtls_prng_espidf.su ./trackle-library/lib/tinydtls/platform-specific/dtls_prng_lwip.d ./trackle-library/lib/tinydtls/platform-specific/dtls_prng_lwip.o ./trackle-library/lib/tinydtls/platform-specific/dtls_prng_lwip.su ./trackle-library/lib/tinydtls/platform-specific/dtls_prng_posix.d ./trackle-library/lib/tinydtls/platform-specific/dtls_prng_posix.o ./trackle-library/lib/tinydtls/platform-specific/dtls_prng_posix.su ./trackle-library/lib/tinydtls/platform-specific/dtls_prng_riot.d ./trackle-library/lib/tinydtls/platform-specific/dtls_prng_riot.o ./trackle-library/lib/tinydtls/platform-specific/dtls_prng_riot.su ./trackle-library/lib/tinydtls/platform-specific/dtls_prng_win.d ./trackle-library/lib/tinydtls/platform-specific/dtls_prng_win.o ./trackle-library/lib/tinydtls/platform-specific/dtls_prng_win.su ./trackle-library/lib/tinydtls/platform-specific/dtls_prng_zephyr.d ./trackle-library/lib/tinydtls/platform-specific/dtls_prng_zephyr.o ./trackle-library/lib/tinydtls/platform-specific/dtls_prng_zephyr.su

.PHONY: clean-trackle-2d-library-2f-lib-2f-tinydtls-2f-platform-2d-specific

