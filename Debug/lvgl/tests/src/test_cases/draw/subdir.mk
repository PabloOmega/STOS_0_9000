################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/tests/src/test_cases/draw/test_clip_corner.c \
../lvgl/tests/src/test_cases/draw/test_draw_arc.c \
../lvgl/tests/src/test_cases/draw/test_draw_blend.c \
../lvgl/tests/src/test_cases/draw/test_draw_label.c \
../lvgl/tests/src/test_cases/draw/test_draw_layer.c \
../lvgl/tests/src/test_cases/draw/test_draw_line.c \
../lvgl/tests/src/test_cases/draw/test_draw_rectangle.c \
../lvgl/tests/src/test_cases/draw/test_draw_transform.c \
../lvgl/tests/src/test_cases/draw/test_draw_triangle.c \
../lvgl/tests/src/test_cases/draw/test_image_formats.c 

C_DEPS += \
./lvgl/tests/src/test_cases/draw/test_clip_corner.d \
./lvgl/tests/src/test_cases/draw/test_draw_arc.d \
./lvgl/tests/src/test_cases/draw/test_draw_blend.d \
./lvgl/tests/src/test_cases/draw/test_draw_label.d \
./lvgl/tests/src/test_cases/draw/test_draw_layer.d \
./lvgl/tests/src/test_cases/draw/test_draw_line.d \
./lvgl/tests/src/test_cases/draw/test_draw_rectangle.d \
./lvgl/tests/src/test_cases/draw/test_draw_transform.d \
./lvgl/tests/src/test_cases/draw/test_draw_triangle.d \
./lvgl/tests/src/test_cases/draw/test_image_formats.d 

OBJS += \
./lvgl/tests/src/test_cases/draw/test_clip_corner.o \
./lvgl/tests/src/test_cases/draw/test_draw_arc.o \
./lvgl/tests/src/test_cases/draw/test_draw_blend.o \
./lvgl/tests/src/test_cases/draw/test_draw_label.o \
./lvgl/tests/src/test_cases/draw/test_draw_layer.o \
./lvgl/tests/src/test_cases/draw/test_draw_line.o \
./lvgl/tests/src/test_cases/draw/test_draw_rectangle.o \
./lvgl/tests/src/test_cases/draw/test_draw_transform.o \
./lvgl/tests/src/test_cases/draw/test_draw_triangle.o \
./lvgl/tests/src/test_cases/draw/test_image_formats.o 


# Each subdirectory must supply rules for building sources it contributes
lvgl/tests/src/test_cases/draw/%.o lvgl/tests/src/test_cases/draw/%.su lvgl/tests/src/test_cases/draw/%.cyclo: ../lvgl/tests/src/test_cases/draw/%.c lvgl/tests/src/test_cases/draw/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H743xx -DSTM32_THREAD_SAFE_STRATEGY=4 -c -I../FATFS/Target -I../FATFS/App -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"../Drivers/SSD1963/Src" -I../Drivers/SSD1963/Inc -I../lvgl -I../USB_HOST/App -I../USB_HOST/Target -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/HID/Inc -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Core/ThreadSafe -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-tests-2f-src-2f-test_cases-2f-draw

clean-lvgl-2f-tests-2f-src-2f-test_cases-2f-draw:
	-$(RM) ./lvgl/tests/src/test_cases/draw/test_clip_corner.cyclo ./lvgl/tests/src/test_cases/draw/test_clip_corner.d ./lvgl/tests/src/test_cases/draw/test_clip_corner.o ./lvgl/tests/src/test_cases/draw/test_clip_corner.su ./lvgl/tests/src/test_cases/draw/test_draw_arc.cyclo ./lvgl/tests/src/test_cases/draw/test_draw_arc.d ./lvgl/tests/src/test_cases/draw/test_draw_arc.o ./lvgl/tests/src/test_cases/draw/test_draw_arc.su ./lvgl/tests/src/test_cases/draw/test_draw_blend.cyclo ./lvgl/tests/src/test_cases/draw/test_draw_blend.d ./lvgl/tests/src/test_cases/draw/test_draw_blend.o ./lvgl/tests/src/test_cases/draw/test_draw_blend.su ./lvgl/tests/src/test_cases/draw/test_draw_label.cyclo ./lvgl/tests/src/test_cases/draw/test_draw_label.d ./lvgl/tests/src/test_cases/draw/test_draw_label.o ./lvgl/tests/src/test_cases/draw/test_draw_label.su ./lvgl/tests/src/test_cases/draw/test_draw_layer.cyclo ./lvgl/tests/src/test_cases/draw/test_draw_layer.d ./lvgl/tests/src/test_cases/draw/test_draw_layer.o ./lvgl/tests/src/test_cases/draw/test_draw_layer.su ./lvgl/tests/src/test_cases/draw/test_draw_line.cyclo ./lvgl/tests/src/test_cases/draw/test_draw_line.d ./lvgl/tests/src/test_cases/draw/test_draw_line.o ./lvgl/tests/src/test_cases/draw/test_draw_line.su ./lvgl/tests/src/test_cases/draw/test_draw_rectangle.cyclo ./lvgl/tests/src/test_cases/draw/test_draw_rectangle.d ./lvgl/tests/src/test_cases/draw/test_draw_rectangle.o ./lvgl/tests/src/test_cases/draw/test_draw_rectangle.su ./lvgl/tests/src/test_cases/draw/test_draw_transform.cyclo ./lvgl/tests/src/test_cases/draw/test_draw_transform.d ./lvgl/tests/src/test_cases/draw/test_draw_transform.o ./lvgl/tests/src/test_cases/draw/test_draw_transform.su ./lvgl/tests/src/test_cases/draw/test_draw_triangle.cyclo ./lvgl/tests/src/test_cases/draw/test_draw_triangle.d ./lvgl/tests/src/test_cases/draw/test_draw_triangle.o ./lvgl/tests/src/test_cases/draw/test_draw_triangle.su ./lvgl/tests/src/test_cases/draw/test_image_formats.cyclo ./lvgl/tests/src/test_cases/draw/test_image_formats.d ./lvgl/tests/src/test_cases/draw/test_image_formats.o ./lvgl/tests/src/test_cases/draw/test_image_formats.su

.PHONY: clean-lvgl-2f-tests-2f-src-2f-test_cases-2f-draw

