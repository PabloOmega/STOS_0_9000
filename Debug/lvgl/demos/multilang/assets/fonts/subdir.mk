################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/demos/multilang/assets/fonts/font_multilang_large.c \
../lvgl/demos/multilang/assets/fonts/font_multilang_small.c 

C_DEPS += \
./lvgl/demos/multilang/assets/fonts/font_multilang_large.d \
./lvgl/demos/multilang/assets/fonts/font_multilang_small.d 

OBJS += \
./lvgl/demos/multilang/assets/fonts/font_multilang_large.o \
./lvgl/demos/multilang/assets/fonts/font_multilang_small.o 


# Each subdirectory must supply rules for building sources it contributes
lvgl/demos/multilang/assets/fonts/%.o lvgl/demos/multilang/assets/fonts/%.su lvgl/demos/multilang/assets/fonts/%.cyclo: ../lvgl/demos/multilang/assets/fonts/%.c lvgl/demos/multilang/assets/fonts/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H743xx -DSTM32_THREAD_SAFE_STRATEGY=4 -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"../Drivers/SSD1963/Src" -I../Drivers/SSD1963/Inc -I../lvgl -I../USB_HOST/App -I../USB_HOST/Target -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/HID/Inc -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Core/ThreadSafe -I"C:/Users/Pablo/Documents/Programacion/STM32/STOS_0_9000/Drivers/io" -I"C:/Users/Pablo/Documents/Programacion/STM32/STOS_0_9000/Drivers/screen" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-demos-2f-multilang-2f-assets-2f-fonts

clean-lvgl-2f-demos-2f-multilang-2f-assets-2f-fonts:
	-$(RM) ./lvgl/demos/multilang/assets/fonts/font_multilang_large.cyclo ./lvgl/demos/multilang/assets/fonts/font_multilang_large.d ./lvgl/demos/multilang/assets/fonts/font_multilang_large.o ./lvgl/demos/multilang/assets/fonts/font_multilang_large.su ./lvgl/demos/multilang/assets/fonts/font_multilang_small.cyclo ./lvgl/demos/multilang/assets/fonts/font_multilang_small.d ./lvgl/demos/multilang/assets/fonts/font_multilang_small.o ./lvgl/demos/multilang/assets/fonts/font_multilang_small.su

.PHONY: clean-lvgl-2f-demos-2f-multilang-2f-assets-2f-fonts

