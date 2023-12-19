################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/examples/widgets/list/lv_example_list_1.c \
../lvgl/examples/widgets/list/lv_example_list_2.c 

C_DEPS += \
./lvgl/examples/widgets/list/lv_example_list_1.d \
./lvgl/examples/widgets/list/lv_example_list_2.d 

OBJS += \
./lvgl/examples/widgets/list/lv_example_list_1.o \
./lvgl/examples/widgets/list/lv_example_list_2.o 


# Each subdirectory must supply rules for building sources it contributes
lvgl/examples/widgets/list/%.o lvgl/examples/widgets/list/%.su lvgl/examples/widgets/list/%.cyclo: ../lvgl/examples/widgets/list/%.c lvgl/examples/widgets/list/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H743xx -DSTM32_THREAD_SAFE_STRATEGY=4 -c -I../FATFS/Target -I../FATFS/App -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"../Drivers/SSD1963/Src" -I../Drivers/SSD1963/Inc -I../lvgl -I../USB_HOST/App -I../USB_HOST/Target -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/HID/Inc -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Core/ThreadSafe -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-examples-2f-widgets-2f-list

clean-lvgl-2f-examples-2f-widgets-2f-list:
	-$(RM) ./lvgl/examples/widgets/list/lv_example_list_1.cyclo ./lvgl/examples/widgets/list/lv_example_list_1.d ./lvgl/examples/widgets/list/lv_example_list_1.o ./lvgl/examples/widgets/list/lv_example_list_1.su ./lvgl/examples/widgets/list/lv_example_list_2.cyclo ./lvgl/examples/widgets/list/lv_example_list_2.d ./lvgl/examples/widgets/list/lv_example_list_2.o ./lvgl/examples/widgets/list/lv_example_list_2.su

.PHONY: clean-lvgl-2f-examples-2f-widgets-2f-list

