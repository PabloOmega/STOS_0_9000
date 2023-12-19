################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/examples/libs/tiny_ttf/lv_example_tiny_ttf_1.c \
../lvgl/examples/libs/tiny_ttf/lv_example_tiny_ttf_2.c \
../lvgl/examples/libs/tiny_ttf/lv_example_tiny_ttf_3.c \
../lvgl/examples/libs/tiny_ttf/ubuntu_font.c 

C_DEPS += \
./lvgl/examples/libs/tiny_ttf/lv_example_tiny_ttf_1.d \
./lvgl/examples/libs/tiny_ttf/lv_example_tiny_ttf_2.d \
./lvgl/examples/libs/tiny_ttf/lv_example_tiny_ttf_3.d \
./lvgl/examples/libs/tiny_ttf/ubuntu_font.d 

OBJS += \
./lvgl/examples/libs/tiny_ttf/lv_example_tiny_ttf_1.o \
./lvgl/examples/libs/tiny_ttf/lv_example_tiny_ttf_2.o \
./lvgl/examples/libs/tiny_ttf/lv_example_tiny_ttf_3.o \
./lvgl/examples/libs/tiny_ttf/ubuntu_font.o 


# Each subdirectory must supply rules for building sources it contributes
lvgl/examples/libs/tiny_ttf/%.o lvgl/examples/libs/tiny_ttf/%.su lvgl/examples/libs/tiny_ttf/%.cyclo: ../lvgl/examples/libs/tiny_ttf/%.c lvgl/examples/libs/tiny_ttf/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H743xx -DSTM32_THREAD_SAFE_STRATEGY=4 -c -I../FATFS/Target -I../FATFS/App -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"../Drivers/SSD1963/Src" -I../Drivers/SSD1963/Inc -I../lvgl -I../USB_HOST/App -I../USB_HOST/Target -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/HID/Inc -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Core/ThreadSafe -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-examples-2f-libs-2f-tiny_ttf

clean-lvgl-2f-examples-2f-libs-2f-tiny_ttf:
	-$(RM) ./lvgl/examples/libs/tiny_ttf/lv_example_tiny_ttf_1.cyclo ./lvgl/examples/libs/tiny_ttf/lv_example_tiny_ttf_1.d ./lvgl/examples/libs/tiny_ttf/lv_example_tiny_ttf_1.o ./lvgl/examples/libs/tiny_ttf/lv_example_tiny_ttf_1.su ./lvgl/examples/libs/tiny_ttf/lv_example_tiny_ttf_2.cyclo ./lvgl/examples/libs/tiny_ttf/lv_example_tiny_ttf_2.d ./lvgl/examples/libs/tiny_ttf/lv_example_tiny_ttf_2.o ./lvgl/examples/libs/tiny_ttf/lv_example_tiny_ttf_2.su ./lvgl/examples/libs/tiny_ttf/lv_example_tiny_ttf_3.cyclo ./lvgl/examples/libs/tiny_ttf/lv_example_tiny_ttf_3.d ./lvgl/examples/libs/tiny_ttf/lv_example_tiny_ttf_3.o ./lvgl/examples/libs/tiny_ttf/lv_example_tiny_ttf_3.su ./lvgl/examples/libs/tiny_ttf/ubuntu_font.cyclo ./lvgl/examples/libs/tiny_ttf/ubuntu_font.d ./lvgl/examples/libs/tiny_ttf/ubuntu_font.o ./lvgl/examples/libs/tiny_ttf/ubuntu_font.su

.PHONY: clean-lvgl-2f-examples-2f-libs-2f-tiny_ttf

