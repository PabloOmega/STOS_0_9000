################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/src/stdlib/builtin/lv_mem_core_builtin.c \
../lvgl/src/stdlib/builtin/lv_sprintf_builtin.c \
../lvgl/src/stdlib/builtin/lv_string_builtin.c \
../lvgl/src/stdlib/builtin/lv_tlsf.c 

C_DEPS += \
./lvgl/src/stdlib/builtin/lv_mem_core_builtin.d \
./lvgl/src/stdlib/builtin/lv_sprintf_builtin.d \
./lvgl/src/stdlib/builtin/lv_string_builtin.d \
./lvgl/src/stdlib/builtin/lv_tlsf.d 

OBJS += \
./lvgl/src/stdlib/builtin/lv_mem_core_builtin.o \
./lvgl/src/stdlib/builtin/lv_sprintf_builtin.o \
./lvgl/src/stdlib/builtin/lv_string_builtin.o \
./lvgl/src/stdlib/builtin/lv_tlsf.o 


# Each subdirectory must supply rules for building sources it contributes
lvgl/src/stdlib/builtin/%.o lvgl/src/stdlib/builtin/%.su lvgl/src/stdlib/builtin/%.cyclo: ../lvgl/src/stdlib/builtin/%.c lvgl/src/stdlib/builtin/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H743xx -DSTM32_THREAD_SAFE_STRATEGY=4 -c -I../FATFS/Target -I../FATFS/App -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"../Drivers/SSD1963/Src" -I../Drivers/SSD1963/Inc -I../lvgl -I../USB_HOST/App -I../USB_HOST/Target -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/HID/Inc -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Core/ThreadSafe -I"C:/Users/Pablo/Documents/Programacion/STM32/STOS_0_9000/Drivers/io" -I"C:/Users/Pablo/Documents/Programacion/STM32/STOS_0_9000/Drivers/screen" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-src-2f-stdlib-2f-builtin

clean-lvgl-2f-src-2f-stdlib-2f-builtin:
	-$(RM) ./lvgl/src/stdlib/builtin/lv_mem_core_builtin.cyclo ./lvgl/src/stdlib/builtin/lv_mem_core_builtin.d ./lvgl/src/stdlib/builtin/lv_mem_core_builtin.o ./lvgl/src/stdlib/builtin/lv_mem_core_builtin.su ./lvgl/src/stdlib/builtin/lv_sprintf_builtin.cyclo ./lvgl/src/stdlib/builtin/lv_sprintf_builtin.d ./lvgl/src/stdlib/builtin/lv_sprintf_builtin.o ./lvgl/src/stdlib/builtin/lv_sprintf_builtin.su ./lvgl/src/stdlib/builtin/lv_string_builtin.cyclo ./lvgl/src/stdlib/builtin/lv_string_builtin.d ./lvgl/src/stdlib/builtin/lv_string_builtin.o ./lvgl/src/stdlib/builtin/lv_string_builtin.su ./lvgl/src/stdlib/builtin/lv_tlsf.cyclo ./lvgl/src/stdlib/builtin/lv_tlsf.d ./lvgl/src/stdlib/builtin/lv_tlsf.o ./lvgl/src/stdlib/builtin/lv_tlsf.su

.PHONY: clean-lvgl-2f-src-2f-stdlib-2f-builtin

