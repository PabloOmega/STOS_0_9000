################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/src/dev/sdl/lv_sdl_keyboard.c \
../lvgl/src/dev/sdl/lv_sdl_mouse.c \
../lvgl/src/dev/sdl/lv_sdl_mousewheel.c \
../lvgl/src/dev/sdl/lv_sdl_window.c 

C_DEPS += \
./lvgl/src/dev/sdl/lv_sdl_keyboard.d \
./lvgl/src/dev/sdl/lv_sdl_mouse.d \
./lvgl/src/dev/sdl/lv_sdl_mousewheel.d \
./lvgl/src/dev/sdl/lv_sdl_window.d 

OBJS += \
./lvgl/src/dev/sdl/lv_sdl_keyboard.o \
./lvgl/src/dev/sdl/lv_sdl_mouse.o \
./lvgl/src/dev/sdl/lv_sdl_mousewheel.o \
./lvgl/src/dev/sdl/lv_sdl_window.o 


# Each subdirectory must supply rules for building sources it contributes
lvgl/src/dev/sdl/%.o lvgl/src/dev/sdl/%.su lvgl/src/dev/sdl/%.cyclo: ../lvgl/src/dev/sdl/%.c lvgl/src/dev/sdl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H743xx -DSTM32_THREAD_SAFE_STRATEGY=4 -c -I../FATFS/Target -I../FATFS/App -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"../Drivers/SSD1963/Src" -I../Drivers/SSD1963/Inc -I../lvgl -I../USB_HOST/App -I../USB_HOST/Target -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/HID/Inc -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Core/ThreadSafe -I"C:/Users/Pablo/Documents/Programacion/STM32/STOS_0_9000/Drivers/io" -I"C:/Users/Pablo/Documents/Programacion/STM32/STOS_0_9000/Drivers/screen" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-src-2f-dev-2f-sdl

clean-lvgl-2f-src-2f-dev-2f-sdl:
	-$(RM) ./lvgl/src/dev/sdl/lv_sdl_keyboard.cyclo ./lvgl/src/dev/sdl/lv_sdl_keyboard.d ./lvgl/src/dev/sdl/lv_sdl_keyboard.o ./lvgl/src/dev/sdl/lv_sdl_keyboard.su ./lvgl/src/dev/sdl/lv_sdl_mouse.cyclo ./lvgl/src/dev/sdl/lv_sdl_mouse.d ./lvgl/src/dev/sdl/lv_sdl_mouse.o ./lvgl/src/dev/sdl/lv_sdl_mouse.su ./lvgl/src/dev/sdl/lv_sdl_mousewheel.cyclo ./lvgl/src/dev/sdl/lv_sdl_mousewheel.d ./lvgl/src/dev/sdl/lv_sdl_mousewheel.o ./lvgl/src/dev/sdl/lv_sdl_mousewheel.su ./lvgl/src/dev/sdl/lv_sdl_window.cyclo ./lvgl/src/dev/sdl/lv_sdl_window.d ./lvgl/src/dev/sdl/lv_sdl_window.o ./lvgl/src/dev/sdl/lv_sdl_window.su

.PHONY: clean-lvgl-2f-src-2f-dev-2f-sdl

