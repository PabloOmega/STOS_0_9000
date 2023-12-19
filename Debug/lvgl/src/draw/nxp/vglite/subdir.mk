################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/src/draw/nxp/vglite/lv_draw_buf_vglite.c \
../lvgl/src/draw/nxp/vglite/lv_draw_vglite.c \
../lvgl/src/draw/nxp/vglite/lv_draw_vglite_arc.c \
../lvgl/src/draw/nxp/vglite/lv_draw_vglite_bg_img.c \
../lvgl/src/draw/nxp/vglite/lv_draw_vglite_border.c \
../lvgl/src/draw/nxp/vglite/lv_draw_vglite_fill.c \
../lvgl/src/draw/nxp/vglite/lv_draw_vglite_img.c \
../lvgl/src/draw/nxp/vglite/lv_draw_vglite_label.c \
../lvgl/src/draw/nxp/vglite/lv_draw_vglite_layer.c \
../lvgl/src/draw/nxp/vglite/lv_draw_vglite_line.c \
../lvgl/src/draw/nxp/vglite/lv_vglite_buf.c \
../lvgl/src/draw/nxp/vglite/lv_vglite_matrix.c \
../lvgl/src/draw/nxp/vglite/lv_vglite_path.c \
../lvgl/src/draw/nxp/vglite/lv_vglite_utils.c 

C_DEPS += \
./lvgl/src/draw/nxp/vglite/lv_draw_buf_vglite.d \
./lvgl/src/draw/nxp/vglite/lv_draw_vglite.d \
./lvgl/src/draw/nxp/vglite/lv_draw_vglite_arc.d \
./lvgl/src/draw/nxp/vglite/lv_draw_vglite_bg_img.d \
./lvgl/src/draw/nxp/vglite/lv_draw_vglite_border.d \
./lvgl/src/draw/nxp/vglite/lv_draw_vglite_fill.d \
./lvgl/src/draw/nxp/vglite/lv_draw_vglite_img.d \
./lvgl/src/draw/nxp/vglite/lv_draw_vglite_label.d \
./lvgl/src/draw/nxp/vglite/lv_draw_vglite_layer.d \
./lvgl/src/draw/nxp/vglite/lv_draw_vglite_line.d \
./lvgl/src/draw/nxp/vglite/lv_vglite_buf.d \
./lvgl/src/draw/nxp/vglite/lv_vglite_matrix.d \
./lvgl/src/draw/nxp/vglite/lv_vglite_path.d \
./lvgl/src/draw/nxp/vglite/lv_vglite_utils.d 

OBJS += \
./lvgl/src/draw/nxp/vglite/lv_draw_buf_vglite.o \
./lvgl/src/draw/nxp/vglite/lv_draw_vglite.o \
./lvgl/src/draw/nxp/vglite/lv_draw_vglite_arc.o \
./lvgl/src/draw/nxp/vglite/lv_draw_vglite_bg_img.o \
./lvgl/src/draw/nxp/vglite/lv_draw_vglite_border.o \
./lvgl/src/draw/nxp/vglite/lv_draw_vglite_fill.o \
./lvgl/src/draw/nxp/vglite/lv_draw_vglite_img.o \
./lvgl/src/draw/nxp/vglite/lv_draw_vglite_label.o \
./lvgl/src/draw/nxp/vglite/lv_draw_vglite_layer.o \
./lvgl/src/draw/nxp/vglite/lv_draw_vglite_line.o \
./lvgl/src/draw/nxp/vglite/lv_vglite_buf.o \
./lvgl/src/draw/nxp/vglite/lv_vglite_matrix.o \
./lvgl/src/draw/nxp/vglite/lv_vglite_path.o \
./lvgl/src/draw/nxp/vglite/lv_vglite_utils.o 


# Each subdirectory must supply rules for building sources it contributes
lvgl/src/draw/nxp/vglite/%.o lvgl/src/draw/nxp/vglite/%.su lvgl/src/draw/nxp/vglite/%.cyclo: ../lvgl/src/draw/nxp/vglite/%.c lvgl/src/draw/nxp/vglite/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H743xx -DSTM32_THREAD_SAFE_STRATEGY=4 -c -I../FATFS/Target -I../FATFS/App -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"../Drivers/SSD1963/Src" -I../Drivers/SSD1963/Inc -I../lvgl -I../USB_HOST/App -I../USB_HOST/Target -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/HID/Inc -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Core/ThreadSafe -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-src-2f-draw-2f-nxp-2f-vglite

clean-lvgl-2f-src-2f-draw-2f-nxp-2f-vglite:
	-$(RM) ./lvgl/src/draw/nxp/vglite/lv_draw_buf_vglite.cyclo ./lvgl/src/draw/nxp/vglite/lv_draw_buf_vglite.d ./lvgl/src/draw/nxp/vglite/lv_draw_buf_vglite.o ./lvgl/src/draw/nxp/vglite/lv_draw_buf_vglite.su ./lvgl/src/draw/nxp/vglite/lv_draw_vglite.cyclo ./lvgl/src/draw/nxp/vglite/lv_draw_vglite.d ./lvgl/src/draw/nxp/vglite/lv_draw_vglite.o ./lvgl/src/draw/nxp/vglite/lv_draw_vglite.su ./lvgl/src/draw/nxp/vglite/lv_draw_vglite_arc.cyclo ./lvgl/src/draw/nxp/vglite/lv_draw_vglite_arc.d ./lvgl/src/draw/nxp/vglite/lv_draw_vglite_arc.o ./lvgl/src/draw/nxp/vglite/lv_draw_vglite_arc.su ./lvgl/src/draw/nxp/vglite/lv_draw_vglite_bg_img.cyclo ./lvgl/src/draw/nxp/vglite/lv_draw_vglite_bg_img.d ./lvgl/src/draw/nxp/vglite/lv_draw_vglite_bg_img.o ./lvgl/src/draw/nxp/vglite/lv_draw_vglite_bg_img.su ./lvgl/src/draw/nxp/vglite/lv_draw_vglite_border.cyclo ./lvgl/src/draw/nxp/vglite/lv_draw_vglite_border.d ./lvgl/src/draw/nxp/vglite/lv_draw_vglite_border.o ./lvgl/src/draw/nxp/vglite/lv_draw_vglite_border.su ./lvgl/src/draw/nxp/vglite/lv_draw_vglite_fill.cyclo ./lvgl/src/draw/nxp/vglite/lv_draw_vglite_fill.d ./lvgl/src/draw/nxp/vglite/lv_draw_vglite_fill.o ./lvgl/src/draw/nxp/vglite/lv_draw_vglite_fill.su ./lvgl/src/draw/nxp/vglite/lv_draw_vglite_img.cyclo ./lvgl/src/draw/nxp/vglite/lv_draw_vglite_img.d ./lvgl/src/draw/nxp/vglite/lv_draw_vglite_img.o ./lvgl/src/draw/nxp/vglite/lv_draw_vglite_img.su ./lvgl/src/draw/nxp/vglite/lv_draw_vglite_label.cyclo ./lvgl/src/draw/nxp/vglite/lv_draw_vglite_label.d ./lvgl/src/draw/nxp/vglite/lv_draw_vglite_label.o ./lvgl/src/draw/nxp/vglite/lv_draw_vglite_label.su ./lvgl/src/draw/nxp/vglite/lv_draw_vglite_layer.cyclo ./lvgl/src/draw/nxp/vglite/lv_draw_vglite_layer.d ./lvgl/src/draw/nxp/vglite/lv_draw_vglite_layer.o ./lvgl/src/draw/nxp/vglite/lv_draw_vglite_layer.su ./lvgl/src/draw/nxp/vglite/lv_draw_vglite_line.cyclo ./lvgl/src/draw/nxp/vglite/lv_draw_vglite_line.d ./lvgl/src/draw/nxp/vglite/lv_draw_vglite_line.o ./lvgl/src/draw/nxp/vglite/lv_draw_vglite_line.su ./lvgl/src/draw/nxp/vglite/lv_vglite_buf.cyclo ./lvgl/src/draw/nxp/vglite/lv_vglite_buf.d ./lvgl/src/draw/nxp/vglite/lv_vglite_buf.o ./lvgl/src/draw/nxp/vglite/lv_vglite_buf.su ./lvgl/src/draw/nxp/vglite/lv_vglite_matrix.cyclo ./lvgl/src/draw/nxp/vglite/lv_vglite_matrix.d ./lvgl/src/draw/nxp/vglite/lv_vglite_matrix.o ./lvgl/src/draw/nxp/vglite/lv_vglite_matrix.su ./lvgl/src/draw/nxp/vglite/lv_vglite_path.cyclo ./lvgl/src/draw/nxp/vglite/lv_vglite_path.d ./lvgl/src/draw/nxp/vglite/lv_vglite_path.o ./lvgl/src/draw/nxp/vglite/lv_vglite_path.su ./lvgl/src/draw/nxp/vglite/lv_vglite_utils.cyclo ./lvgl/src/draw/nxp/vglite/lv_vglite_utils.d ./lvgl/src/draw/nxp/vglite/lv_vglite_utils.o ./lvgl/src/draw/nxp/vglite/lv_vglite_utils.su

.PHONY: clean-lvgl-2f-src-2f-draw-2f-nxp-2f-vglite

