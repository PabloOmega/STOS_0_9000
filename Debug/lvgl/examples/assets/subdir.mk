################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/examples/assets/animimg001.c \
../lvgl/examples/assets/animimg002.c \
../lvgl/examples/assets/animimg003.c \
../lvgl/examples/assets/img_caret_down.c \
../lvgl/examples/assets/img_cogwheel_argb.c \
../lvgl/examples/assets/img_cogwheel_indexed16.c \
../lvgl/examples/assets/img_cogwheel_rgb.c \
../lvgl/examples/assets/img_hand.c \
../lvgl/examples/assets/img_skew_strip.c \
../lvgl/examples/assets/img_star.c \
../lvgl/examples/assets/imgbtn_left.c \
../lvgl/examples/assets/imgbtn_mid.c \
../lvgl/examples/assets/imgbtn_right.c 

C_DEPS += \
./lvgl/examples/assets/animimg001.d \
./lvgl/examples/assets/animimg002.d \
./lvgl/examples/assets/animimg003.d \
./lvgl/examples/assets/img_caret_down.d \
./lvgl/examples/assets/img_cogwheel_argb.d \
./lvgl/examples/assets/img_cogwheel_indexed16.d \
./lvgl/examples/assets/img_cogwheel_rgb.d \
./lvgl/examples/assets/img_hand.d \
./lvgl/examples/assets/img_skew_strip.d \
./lvgl/examples/assets/img_star.d \
./lvgl/examples/assets/imgbtn_left.d \
./lvgl/examples/assets/imgbtn_mid.d \
./lvgl/examples/assets/imgbtn_right.d 

OBJS += \
./lvgl/examples/assets/animimg001.o \
./lvgl/examples/assets/animimg002.o \
./lvgl/examples/assets/animimg003.o \
./lvgl/examples/assets/img_caret_down.o \
./lvgl/examples/assets/img_cogwheel_argb.o \
./lvgl/examples/assets/img_cogwheel_indexed16.o \
./lvgl/examples/assets/img_cogwheel_rgb.o \
./lvgl/examples/assets/img_hand.o \
./lvgl/examples/assets/img_skew_strip.o \
./lvgl/examples/assets/img_star.o \
./lvgl/examples/assets/imgbtn_left.o \
./lvgl/examples/assets/imgbtn_mid.o \
./lvgl/examples/assets/imgbtn_right.o 


# Each subdirectory must supply rules for building sources it contributes
lvgl/examples/assets/%.o lvgl/examples/assets/%.su lvgl/examples/assets/%.cyclo: ../lvgl/examples/assets/%.c lvgl/examples/assets/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H743xx -DSTM32_THREAD_SAFE_STRATEGY=4 -c -I../FATFS/Target -I../FATFS/App -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"../Drivers/SSD1963/Src" -I../Drivers/SSD1963/Inc -I../lvgl -I../USB_HOST/App -I../USB_HOST/Target -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/HID/Inc -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Core/ThreadSafe -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-examples-2f-assets

clean-lvgl-2f-examples-2f-assets:
	-$(RM) ./lvgl/examples/assets/animimg001.cyclo ./lvgl/examples/assets/animimg001.d ./lvgl/examples/assets/animimg001.o ./lvgl/examples/assets/animimg001.su ./lvgl/examples/assets/animimg002.cyclo ./lvgl/examples/assets/animimg002.d ./lvgl/examples/assets/animimg002.o ./lvgl/examples/assets/animimg002.su ./lvgl/examples/assets/animimg003.cyclo ./lvgl/examples/assets/animimg003.d ./lvgl/examples/assets/animimg003.o ./lvgl/examples/assets/animimg003.su ./lvgl/examples/assets/img_caret_down.cyclo ./lvgl/examples/assets/img_caret_down.d ./lvgl/examples/assets/img_caret_down.o ./lvgl/examples/assets/img_caret_down.su ./lvgl/examples/assets/img_cogwheel_argb.cyclo ./lvgl/examples/assets/img_cogwheel_argb.d ./lvgl/examples/assets/img_cogwheel_argb.o ./lvgl/examples/assets/img_cogwheel_argb.su ./lvgl/examples/assets/img_cogwheel_indexed16.cyclo ./lvgl/examples/assets/img_cogwheel_indexed16.d ./lvgl/examples/assets/img_cogwheel_indexed16.o ./lvgl/examples/assets/img_cogwheel_indexed16.su ./lvgl/examples/assets/img_cogwheel_rgb.cyclo ./lvgl/examples/assets/img_cogwheel_rgb.d ./lvgl/examples/assets/img_cogwheel_rgb.o ./lvgl/examples/assets/img_cogwheel_rgb.su ./lvgl/examples/assets/img_hand.cyclo ./lvgl/examples/assets/img_hand.d ./lvgl/examples/assets/img_hand.o ./lvgl/examples/assets/img_hand.su ./lvgl/examples/assets/img_skew_strip.cyclo ./lvgl/examples/assets/img_skew_strip.d ./lvgl/examples/assets/img_skew_strip.o ./lvgl/examples/assets/img_skew_strip.su ./lvgl/examples/assets/img_star.cyclo ./lvgl/examples/assets/img_star.d ./lvgl/examples/assets/img_star.o ./lvgl/examples/assets/img_star.su ./lvgl/examples/assets/imgbtn_left.cyclo ./lvgl/examples/assets/imgbtn_left.d ./lvgl/examples/assets/imgbtn_left.o ./lvgl/examples/assets/imgbtn_left.su ./lvgl/examples/assets/imgbtn_mid.cyclo ./lvgl/examples/assets/imgbtn_mid.d ./lvgl/examples/assets/imgbtn_mid.o ./lvgl/examples/assets/imgbtn_mid.su ./lvgl/examples/assets/imgbtn_right.cyclo ./lvgl/examples/assets/imgbtn_right.d ./lvgl/examples/assets/imgbtn_right.o ./lvgl/examples/assets/imgbtn_right.su

.PHONY: clean-lvgl-2f-examples-2f-assets

