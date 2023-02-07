################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../trackle-library/lib/tinydtls/aes/rijndael.c \
../trackle-library/lib/tinydtls/aes/rijndael_wrap.c 

C_DEPS += \
./trackle-library/lib/tinydtls/aes/rijndael.d \
./trackle-library/lib/tinydtls/aes/rijndael_wrap.d 

OBJS += \
./trackle-library/lib/tinydtls/aes/rijndael.o \
./trackle-library/lib/tinydtls/aes/rijndael_wrap.o 


# Each subdirectory must supply rules for building sources it contributes
trackle-library/lib/tinydtls/aes/%.o trackle-library/lib/tinydtls/aes/%.su: ../trackle-library/lib/tinydtls/aes/%.c trackle-library/lib/tinydtls/aes/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F207xx -DWITH_LWIP -c -I../Core/Inc -I../Drivers/STM32F2xx_HAL_Driver/Inc -I../Drivers/STM32F2xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F2xx/Include -I../Drivers/CMSIS/Include -I../LWIP/App -I../LWIP/Target -I../Middlewares/Third_Party/LwIP/src/include -I../Middlewares/Third_Party/LwIP/system -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -I../Middlewares/Third_Party/LwIP/src/include/netif/ppp -I../Middlewares/Third_Party/LwIP/src/include/lwip -I../Middlewares/Third_Party/LwIP/src/include/lwip/apps -I../Middlewares/Third_Party/LwIP/src/include/lwip/priv -I../Middlewares/Third_Party/LwIP/src/include/lwip/prot -I../Middlewares/Third_Party/LwIP/src/include/netif -I../Middlewares/Third_Party/LwIP/src/include/posix -I../Middlewares/Third_Party/LwIP/src/include/posix/sys -I../Middlewares/Third_Party/LwIP/system/arch -I"/Users/flavio/STM32CubeIDE/workspace_1.11.2/Trackle_nucleo_boilerplate/trackle-library/include" -I"/Users/flavio/STM32CubeIDE/workspace_1.11.2/Trackle_nucleo_boilerplate/trackle-library/lib/micro-ecc" -I"/Users/flavio/STM32CubeIDE/workspace_1.11.2/Trackle_nucleo_boilerplate/trackle-library/lib/tinydtls" -I"/Users/flavio/STM32CubeIDE/workspace_1.11.2/Trackle_nucleo_boilerplate/trackle-library/lib/tinydtls/aes" -I"/Users/flavio/STM32CubeIDE/workspace_1.11.2/Trackle_nucleo_boilerplate/trackle-library/lib/tinydtls/sha2" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-trackle-2d-library-2f-lib-2f-tinydtls-2f-aes

clean-trackle-2d-library-2f-lib-2f-tinydtls-2f-aes:
	-$(RM) ./trackle-library/lib/tinydtls/aes/rijndael.d ./trackle-library/lib/tinydtls/aes/rijndael.o ./trackle-library/lib/tinydtls/aes/rijndael.su ./trackle-library/lib/tinydtls/aes/rijndael_wrap.d ./trackle-library/lib/tinydtls/aes/rijndael_wrap.o ./trackle-library/lib/tinydtls/aes/rijndael_wrap.su

.PHONY: clean-trackle-2d-library-2f-lib-2f-tinydtls-2f-aes

