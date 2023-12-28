################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/src/draw/nxp/pxp/lv_draw_buf_pxp.c \
../lvgl/src/draw/nxp/pxp/lv_draw_pxp.c \
../lvgl/src/draw/nxp/pxp/lv_draw_pxp_bg_img.c \
../lvgl/src/draw/nxp/pxp/lv_draw_pxp_fill.c \
../lvgl/src/draw/nxp/pxp/lv_draw_pxp_img.c \
../lvgl/src/draw/nxp/pxp/lv_draw_pxp_layer.c \
../lvgl/src/draw/nxp/pxp/lv_pxp_cfg.c \
../lvgl/src/draw/nxp/pxp/lv_pxp_osa.c \
../lvgl/src/draw/nxp/pxp/lv_pxp_utils.c 

C_DEPS += \
./lvgl/src/draw/nxp/pxp/lv_draw_buf_pxp.d \
./lvgl/src/draw/nxp/pxp/lv_draw_pxp.d \
./lvgl/src/draw/nxp/pxp/lv_draw_pxp_bg_img.d \
./lvgl/src/draw/nxp/pxp/lv_draw_pxp_fill.d \
./lvgl/src/draw/nxp/pxp/lv_draw_pxp_img.d \
./lvgl/src/draw/nxp/pxp/lv_draw_pxp_layer.d \
./lvgl/src/draw/nxp/pxp/lv_pxp_cfg.d \
./lvgl/src/draw/nxp/pxp/lv_pxp_osa.d \
./lvgl/src/draw/nxp/pxp/lv_pxp_utils.d 

OBJS += \
./lvgl/src/draw/nxp/pxp/lv_draw_buf_pxp.o \
./lvgl/src/draw/nxp/pxp/lv_draw_pxp.o \
./lvgl/src/draw/nxp/pxp/lv_draw_pxp_bg_img.o \
./lvgl/src/draw/nxp/pxp/lv_draw_pxp_fill.o \
./lvgl/src/draw/nxp/pxp/lv_draw_pxp_img.o \
./lvgl/src/draw/nxp/pxp/lv_draw_pxp_layer.o \
./lvgl/src/draw/nxp/pxp/lv_pxp_cfg.o \
./lvgl/src/draw/nxp/pxp/lv_pxp_osa.o \
./lvgl/src/draw/nxp/pxp/lv_pxp_utils.o 


# Each subdirectory must supply rules for building sources it contributes
lvgl/src/draw/nxp/pxp/%.o lvgl/src/draw/nxp/pxp/%.su lvgl/src/draw/nxp/pxp/%.cyclo: ../lvgl/src/draw/nxp/pxp/%.c lvgl/src/draw/nxp/pxp/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H743xx -DSTM32_THREAD_SAFE_STRATEGY=4 -c -I../FATFS/Target -I../FATFS/App -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"../Drivers/SSD1963/Src" -I../Drivers/SSD1963/Inc -I../lvgl -I../USB_HOST/App -I../USB_HOST/Target -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/HID/Inc -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Core/ThreadSafe -I"C:/Users/Pablo/Documents/Programacion/STM32/STOS_0_9000/Drivers/io" -I"C:/Users/Pablo/Documents/Programacion/STM32/STOS_0_9000/Drivers/screen" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-src-2f-draw-2f-nxp-2f-pxp

clean-lvgl-2f-src-2f-draw-2f-nxp-2f-pxp:
	-$(RM) ./lvgl/src/draw/nxp/pxp/lv_draw_buf_pxp.cyclo ./lvgl/src/draw/nxp/pxp/lv_draw_buf_pxp.d ./lvgl/src/draw/nxp/pxp/lv_draw_buf_pxp.o ./lvgl/src/draw/nxp/pxp/lv_draw_buf_pxp.su ./lvgl/src/draw/nxp/pxp/lv_draw_pxp.cyclo ./lvgl/src/draw/nxp/pxp/lv_draw_pxp.d ./lvgl/src/draw/nxp/pxp/lv_draw_pxp.o ./lvgl/src/draw/nxp/pxp/lv_draw_pxp.su ./lvgl/src/draw/nxp/pxp/lv_draw_pxp_bg_img.cyclo ./lvgl/src/draw/nxp/pxp/lv_draw_pxp_bg_img.d ./lvgl/src/draw/nxp/pxp/lv_draw_pxp_bg_img.o ./lvgl/src/draw/nxp/pxp/lv_draw_pxp_bg_img.su ./lvgl/src/draw/nxp/pxp/lv_draw_pxp_fill.cyclo ./lvgl/src/draw/nxp/pxp/lv_draw_pxp_fill.d ./lvgl/src/draw/nxp/pxp/lv_draw_pxp_fill.o ./lvgl/src/draw/nxp/pxp/lv_draw_pxp_fill.su ./lvgl/src/draw/nxp/pxp/lv_draw_pxp_img.cyclo ./lvgl/src/draw/nxp/pxp/lv_draw_pxp_img.d ./lvgl/src/draw/nxp/pxp/lv_draw_pxp_img.o ./lvgl/src/draw/nxp/pxp/lv_draw_pxp_img.su ./lvgl/src/draw/nxp/pxp/lv_draw_pxp_layer.cyclo ./lvgl/src/draw/nxp/pxp/lv_draw_pxp_layer.d ./lvgl/src/draw/nxp/pxp/lv_draw_pxp_layer.o ./lvgl/src/draw/nxp/pxp/lv_draw_pxp_layer.su ./lvgl/src/draw/nxp/pxp/lv_pxp_cfg.cyclo ./lvgl/src/draw/nxp/pxp/lv_pxp_cfg.d ./lvgl/src/draw/nxp/pxp/lv_pxp_cfg.o ./lvgl/src/draw/nxp/pxp/lv_pxp_cfg.su ./lvgl/src/draw/nxp/pxp/lv_pxp_osa.cyclo ./lvgl/src/draw/nxp/pxp/lv_pxp_osa.d ./lvgl/src/draw/nxp/pxp/lv_pxp_osa.o ./lvgl/src/draw/nxp/pxp/lv_pxp_osa.su ./lvgl/src/draw/nxp/pxp/lv_pxp_utils.cyclo ./lvgl/src/draw/nxp/pxp/lv_pxp_utils.d ./lvgl/src/draw/nxp/pxp/lv_pxp_utils.o ./lvgl/src/draw/nxp/pxp/lv_pxp_utils.su

.PHONY: clean-lvgl-2f-src-2f-draw-2f-nxp-2f-pxp

