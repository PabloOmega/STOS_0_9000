################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/src/draw/sw/lv_draw_sw.c \
../lvgl/src/draw/sw/lv_draw_sw_arc.c \
../lvgl/src/draw/sw/lv_draw_sw_bg_img.c \
../lvgl/src/draw/sw/lv_draw_sw_border.c \
../lvgl/src/draw/sw/lv_draw_sw_box_shadow.c \
../lvgl/src/draw/sw/lv_draw_sw_fill.c \
../lvgl/src/draw/sw/lv_draw_sw_gradient.c \
../lvgl/src/draw/sw/lv_draw_sw_img.c \
../lvgl/src/draw/sw/lv_draw_sw_letter.c \
../lvgl/src/draw/sw/lv_draw_sw_line.c \
../lvgl/src/draw/sw/lv_draw_sw_mask.c \
../lvgl/src/draw/sw/lv_draw_sw_mask_rect.c \
../lvgl/src/draw/sw/lv_draw_sw_transform.c \
../lvgl/src/draw/sw/lv_draw_sw_triangle.c 

C_DEPS += \
./lvgl/src/draw/sw/lv_draw_sw.d \
./lvgl/src/draw/sw/lv_draw_sw_arc.d \
./lvgl/src/draw/sw/lv_draw_sw_bg_img.d \
./lvgl/src/draw/sw/lv_draw_sw_border.d \
./lvgl/src/draw/sw/lv_draw_sw_box_shadow.d \
./lvgl/src/draw/sw/lv_draw_sw_fill.d \
./lvgl/src/draw/sw/lv_draw_sw_gradient.d \
./lvgl/src/draw/sw/lv_draw_sw_img.d \
./lvgl/src/draw/sw/lv_draw_sw_letter.d \
./lvgl/src/draw/sw/lv_draw_sw_line.d \
./lvgl/src/draw/sw/lv_draw_sw_mask.d \
./lvgl/src/draw/sw/lv_draw_sw_mask_rect.d \
./lvgl/src/draw/sw/lv_draw_sw_transform.d \
./lvgl/src/draw/sw/lv_draw_sw_triangle.d 

OBJS += \
./lvgl/src/draw/sw/lv_draw_sw.o \
./lvgl/src/draw/sw/lv_draw_sw_arc.o \
./lvgl/src/draw/sw/lv_draw_sw_bg_img.o \
./lvgl/src/draw/sw/lv_draw_sw_border.o \
./lvgl/src/draw/sw/lv_draw_sw_box_shadow.o \
./lvgl/src/draw/sw/lv_draw_sw_fill.o \
./lvgl/src/draw/sw/lv_draw_sw_gradient.o \
./lvgl/src/draw/sw/lv_draw_sw_img.o \
./lvgl/src/draw/sw/lv_draw_sw_letter.o \
./lvgl/src/draw/sw/lv_draw_sw_line.o \
./lvgl/src/draw/sw/lv_draw_sw_mask.o \
./lvgl/src/draw/sw/lv_draw_sw_mask_rect.o \
./lvgl/src/draw/sw/lv_draw_sw_transform.o \
./lvgl/src/draw/sw/lv_draw_sw_triangle.o 


# Each subdirectory must supply rules for building sources it contributes
lvgl/src/draw/sw/%.o lvgl/src/draw/sw/%.su lvgl/src/draw/sw/%.cyclo: ../lvgl/src/draw/sw/%.c lvgl/src/draw/sw/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H743xx -DSTM32_THREAD_SAFE_STRATEGY=4 -c -I../FATFS/Target -I../FATFS/App -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"../Drivers/SSD1963/Src" -I../Drivers/SSD1963/Inc -I../lvgl -I../USB_HOST/App -I../USB_HOST/Target -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/HID/Inc -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Core/ThreadSafe -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-src-2f-draw-2f-sw

clean-lvgl-2f-src-2f-draw-2f-sw:
	-$(RM) ./lvgl/src/draw/sw/lv_draw_sw.cyclo ./lvgl/src/draw/sw/lv_draw_sw.d ./lvgl/src/draw/sw/lv_draw_sw.o ./lvgl/src/draw/sw/lv_draw_sw.su ./lvgl/src/draw/sw/lv_draw_sw_arc.cyclo ./lvgl/src/draw/sw/lv_draw_sw_arc.d ./lvgl/src/draw/sw/lv_draw_sw_arc.o ./lvgl/src/draw/sw/lv_draw_sw_arc.su ./lvgl/src/draw/sw/lv_draw_sw_bg_img.cyclo ./lvgl/src/draw/sw/lv_draw_sw_bg_img.d ./lvgl/src/draw/sw/lv_draw_sw_bg_img.o ./lvgl/src/draw/sw/lv_draw_sw_bg_img.su ./lvgl/src/draw/sw/lv_draw_sw_border.cyclo ./lvgl/src/draw/sw/lv_draw_sw_border.d ./lvgl/src/draw/sw/lv_draw_sw_border.o ./lvgl/src/draw/sw/lv_draw_sw_border.su ./lvgl/src/draw/sw/lv_draw_sw_box_shadow.cyclo ./lvgl/src/draw/sw/lv_draw_sw_box_shadow.d ./lvgl/src/draw/sw/lv_draw_sw_box_shadow.o ./lvgl/src/draw/sw/lv_draw_sw_box_shadow.su ./lvgl/src/draw/sw/lv_draw_sw_fill.cyclo ./lvgl/src/draw/sw/lv_draw_sw_fill.d ./lvgl/src/draw/sw/lv_draw_sw_fill.o ./lvgl/src/draw/sw/lv_draw_sw_fill.su ./lvgl/src/draw/sw/lv_draw_sw_gradient.cyclo ./lvgl/src/draw/sw/lv_draw_sw_gradient.d ./lvgl/src/draw/sw/lv_draw_sw_gradient.o ./lvgl/src/draw/sw/lv_draw_sw_gradient.su ./lvgl/src/draw/sw/lv_draw_sw_img.cyclo ./lvgl/src/draw/sw/lv_draw_sw_img.d ./lvgl/src/draw/sw/lv_draw_sw_img.o ./lvgl/src/draw/sw/lv_draw_sw_img.su ./lvgl/src/draw/sw/lv_draw_sw_letter.cyclo ./lvgl/src/draw/sw/lv_draw_sw_letter.d ./lvgl/src/draw/sw/lv_draw_sw_letter.o ./lvgl/src/draw/sw/lv_draw_sw_letter.su ./lvgl/src/draw/sw/lv_draw_sw_line.cyclo ./lvgl/src/draw/sw/lv_draw_sw_line.d ./lvgl/src/draw/sw/lv_draw_sw_line.o ./lvgl/src/draw/sw/lv_draw_sw_line.su ./lvgl/src/draw/sw/lv_draw_sw_mask.cyclo ./lvgl/src/draw/sw/lv_draw_sw_mask.d ./lvgl/src/draw/sw/lv_draw_sw_mask.o ./lvgl/src/draw/sw/lv_draw_sw_mask.su ./lvgl/src/draw/sw/lv_draw_sw_mask_rect.cyclo ./lvgl/src/draw/sw/lv_draw_sw_mask_rect.d ./lvgl/src/draw/sw/lv_draw_sw_mask_rect.o ./lvgl/src/draw/sw/lv_draw_sw_mask_rect.su ./lvgl/src/draw/sw/lv_draw_sw_transform.cyclo ./lvgl/src/draw/sw/lv_draw_sw_transform.d ./lvgl/src/draw/sw/lv_draw_sw_transform.o ./lvgl/src/draw/sw/lv_draw_sw_transform.su ./lvgl/src/draw/sw/lv_draw_sw_triangle.cyclo ./lvgl/src/draw/sw/lv_draw_sw_triangle.d ./lvgl/src/draw/sw/lv_draw_sw_triangle.o ./lvgl/src/draw/sw/lv_draw_sw_triangle.su

.PHONY: clean-lvgl-2f-src-2f-draw-2f-sw

