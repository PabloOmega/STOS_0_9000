################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/examples/others/file_explorer/lv_example_file_explorer_1.c \
../lvgl/examples/others/file_explorer/lv_example_file_explorer_2.c \
../lvgl/examples/others/file_explorer/lv_example_file_explorer_3.c 

C_DEPS += \
./lvgl/examples/others/file_explorer/lv_example_file_explorer_1.d \
./lvgl/examples/others/file_explorer/lv_example_file_explorer_2.d \
./lvgl/examples/others/file_explorer/lv_example_file_explorer_3.d 

OBJS += \
./lvgl/examples/others/file_explorer/lv_example_file_explorer_1.o \
./lvgl/examples/others/file_explorer/lv_example_file_explorer_2.o \
./lvgl/examples/others/file_explorer/lv_example_file_explorer_3.o 


# Each subdirectory must supply rules for building sources it contributes
lvgl/examples/others/file_explorer/%.o lvgl/examples/others/file_explorer/%.su lvgl/examples/others/file_explorer/%.cyclo: ../lvgl/examples/others/file_explorer/%.c lvgl/examples/others/file_explorer/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H743xx -DSTM32_THREAD_SAFE_STRATEGY=4 -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"../Drivers/SSD1963/Src" -I../Drivers/SSD1963/Inc -I../lvgl -I../USB_HOST/App -I../USB_HOST/Target -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/HID/Inc -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Core/ThreadSafe -I"C:/Users/Pablo/Documents/Programacion/STM32/STOS_0_9000/Drivers/io" -I"C:/Users/Pablo/Documents/Programacion/STM32/STOS_0_9000/Drivers/screen" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-examples-2f-others-2f-file_explorer

clean-lvgl-2f-examples-2f-others-2f-file_explorer:
	-$(RM) ./lvgl/examples/others/file_explorer/lv_example_file_explorer_1.cyclo ./lvgl/examples/others/file_explorer/lv_example_file_explorer_1.d ./lvgl/examples/others/file_explorer/lv_example_file_explorer_1.o ./lvgl/examples/others/file_explorer/lv_example_file_explorer_1.su ./lvgl/examples/others/file_explorer/lv_example_file_explorer_2.cyclo ./lvgl/examples/others/file_explorer/lv_example_file_explorer_2.d ./lvgl/examples/others/file_explorer/lv_example_file_explorer_2.o ./lvgl/examples/others/file_explorer/lv_example_file_explorer_2.su ./lvgl/examples/others/file_explorer/lv_example_file_explorer_3.cyclo ./lvgl/examples/others/file_explorer/lv_example_file_explorer_3.d ./lvgl/examples/others/file_explorer/lv_example_file_explorer_3.o ./lvgl/examples/others/file_explorer/lv_example_file_explorer_3.su

.PHONY: clean-lvgl-2f-examples-2f-others-2f-file_explorer

