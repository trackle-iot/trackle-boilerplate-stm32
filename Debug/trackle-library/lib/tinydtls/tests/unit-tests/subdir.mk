################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../trackle-library/lib/tinydtls/tests/unit-tests/test_ccm.c \
../trackle-library/lib/tinydtls/tests/unit-tests/test_ecc.c \
../trackle-library/lib/tinydtls/tests/unit-tests/test_prf.c \
../trackle-library/lib/tinydtls/tests/unit-tests/testdriver.c 

C_DEPS += \
./trackle-library/lib/tinydtls/tests/unit-tests/test_ccm.d \
./trackle-library/lib/tinydtls/tests/unit-tests/test_ecc.d \
./trackle-library/lib/tinydtls/tests/unit-tests/test_prf.d \
./trackle-library/lib/tinydtls/tests/unit-tests/testdriver.d 

OBJS += \
./trackle-library/lib/tinydtls/tests/unit-tests/test_ccm.o \
./trackle-library/lib/tinydtls/tests/unit-tests/test_ecc.o \
./trackle-library/lib/tinydtls/tests/unit-tests/test_prf.o \
./trackle-library/lib/tinydtls/tests/unit-tests/testdriver.o 


# Each subdirectory must supply rules for building sources it contributes
trackle-library/lib/tinydtls/tests/unit-tests/%.o trackle-library/lib/tinydtls/tests/unit-tests/%.su: ../trackle-library/lib/tinydtls/tests/unit-tests/%.c trackle-library/lib/tinydtls/tests/unit-tests/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F207xx -DWITH_LWIP -c -I../Core/Inc -I../Drivers/STM32F2xx_HAL_Driver/Inc -I../Drivers/STM32F2xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F2xx/Include -I../Drivers/CMSIS/Include -I../LWIP/App -I../LWIP/Target -I../Middlewares/Third_Party/LwIP/src/include -I../Middlewares/Third_Party/LwIP/system -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -I../Middlewares/Third_Party/LwIP/src/include/netif/ppp -I../Middlewares/Third_Party/LwIP/src/include/lwip -I../Middlewares/Third_Party/LwIP/src/include/lwip/apps -I../Middlewares/Third_Party/LwIP/src/include/lwip/priv -I../Middlewares/Third_Party/LwIP/src/include/lwip/prot -I../Middlewares/Third_Party/LwIP/src/include/netif -I../Middlewares/Third_Party/LwIP/src/include/posix -I../Middlewares/Third_Party/LwIP/src/include/posix/sys -I../Middlewares/Third_Party/LwIP/system/arch -I"/Users/flavio/STM32CubeIDE/workspace_1.11.2/Trackle_nucleo_boilerplate/trackle-library/include" -I"/Users/flavio/STM32CubeIDE/workspace_1.11.2/Trackle_nucleo_boilerplate/trackle-library/lib/micro-ecc" -I"/Users/flavio/STM32CubeIDE/workspace_1.11.2/Trackle_nucleo_boilerplate/trackle-library/lib/tinydtls" -I"/Users/flavio/STM32CubeIDE/workspace_1.11.2/Trackle_nucleo_boilerplate/trackle-library/lib/tinydtls/aes" -I"/Users/flavio/STM32CubeIDE/workspace_1.11.2/Trackle_nucleo_boilerplate/trackle-library/lib/tinydtls/sha2" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-trackle-2d-library-2f-lib-2f-tinydtls-2f-tests-2f-unit-2d-tests

clean-trackle-2d-library-2f-lib-2f-tinydtls-2f-tests-2f-unit-2d-tests:
	-$(RM) ./trackle-library/lib/tinydtls/tests/unit-tests/test_ccm.d ./trackle-library/lib/tinydtls/tests/unit-tests/test_ccm.o ./trackle-library/lib/tinydtls/tests/unit-tests/test_ccm.su ./trackle-library/lib/tinydtls/tests/unit-tests/test_ecc.d ./trackle-library/lib/tinydtls/tests/unit-tests/test_ecc.o ./trackle-library/lib/tinydtls/tests/unit-tests/test_ecc.su ./trackle-library/lib/tinydtls/tests/unit-tests/test_prf.d ./trackle-library/lib/tinydtls/tests/unit-tests/test_prf.o ./trackle-library/lib/tinydtls/tests/unit-tests/test_prf.su ./trackle-library/lib/tinydtls/tests/unit-tests/testdriver.d ./trackle-library/lib/tinydtls/tests/unit-tests/testdriver.o ./trackle-library/lib/tinydtls/tests/unit-tests/testdriver.su

.PHONY: clean-trackle-2d-library-2f-lib-2f-tinydtls-2f-tests-2f-unit-2d-tests

