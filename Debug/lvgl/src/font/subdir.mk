################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/src/font/lv_font.c \
../lvgl/src/font/lv_font_dejavu_16_persian_hebrew.c \
../lvgl/src/font/lv_font_fmt_txt.c \
../lvgl/src/font/lv_font_loader.c \
../lvgl/src/font/lv_font_montserrat_10.c \
../lvgl/src/font/lv_font_montserrat_12.c \
../lvgl/src/font/lv_font_montserrat_14.c \
../lvgl/src/font/lv_font_montserrat_16.c \
../lvgl/src/font/lv_font_montserrat_18.c \
../lvgl/src/font/lv_font_montserrat_20.c \
../lvgl/src/font/lv_font_montserrat_22.c \
../lvgl/src/font/lv_font_montserrat_24.c \
../lvgl/src/font/lv_font_montserrat_26.c \
../lvgl/src/font/lv_font_montserrat_28.c \
../lvgl/src/font/lv_font_montserrat_28_compressed.c \
../lvgl/src/font/lv_font_montserrat_30.c \
../lvgl/src/font/lv_font_montserrat_32.c \
../lvgl/src/font/lv_font_montserrat_34.c \
../lvgl/src/font/lv_font_montserrat_36.c \
../lvgl/src/font/lv_font_montserrat_38.c \
../lvgl/src/font/lv_font_montserrat_40.c \
../lvgl/src/font/lv_font_montserrat_42.c \
../lvgl/src/font/lv_font_montserrat_44.c \
../lvgl/src/font/lv_font_montserrat_46.c \
../lvgl/src/font/lv_font_montserrat_48.c \
../lvgl/src/font/lv_font_montserrat_8.c \
../lvgl/src/font/lv_font_simsun_16_cjk.c \
../lvgl/src/font/lv_font_unscii_16.c \
../lvgl/src/font/lv_font_unscii_8.c 

C_DEPS += \
./lvgl/src/font/lv_font.d \
./lvgl/src/font/lv_font_dejavu_16_persian_hebrew.d \
./lvgl/src/font/lv_font_fmt_txt.d \
./lvgl/src/font/lv_font_loader.d \
./lvgl/src/font/lv_font_montserrat_10.d \
./lvgl/src/font/lv_font_montserrat_12.d \
./lvgl/src/font/lv_font_montserrat_14.d \
./lvgl/src/font/lv_font_montserrat_16.d \
./lvgl/src/font/lv_font_montserrat_18.d \
./lvgl/src/font/lv_font_montserrat_20.d \
./lvgl/src/font/lv_font_montserrat_22.d \
./lvgl/src/font/lv_font_montserrat_24.d \
./lvgl/src/font/lv_font_montserrat_26.d \
./lvgl/src/font/lv_font_montserrat_28.d \
./lvgl/src/font/lv_font_montserrat_28_compressed.d \
./lvgl/src/font/lv_font_montserrat_30.d \
./lvgl/src/font/lv_font_montserrat_32.d \
./lvgl/src/font/lv_font_montserrat_34.d \
./lvgl/src/font/lv_font_montserrat_36.d \
./lvgl/src/font/lv_font_montserrat_38.d \
./lvgl/src/font/lv_font_montserrat_40.d \
./lvgl/src/font/lv_font_montserrat_42.d \
./lvgl/src/font/lv_font_montserrat_44.d \
./lvgl/src/font/lv_font_montserrat_46.d \
./lvgl/src/font/lv_font_montserrat_48.d \
./lvgl/src/font/lv_font_montserrat_8.d \
./lvgl/src/font/lv_font_simsun_16_cjk.d \
./lvgl/src/font/lv_font_unscii_16.d \
./lvgl/src/font/lv_font_unscii_8.d 

OBJS += \
./lvgl/src/font/lv_font.o \
./lvgl/src/font/lv_font_dejavu_16_persian_hebrew.o \
./lvgl/src/font/lv_font_fmt_txt.o \
./lvgl/src/font/lv_font_loader.o \
./lvgl/src/font/lv_font_montserrat_10.o \
./lvgl/src/font/lv_font_montserrat_12.o \
./lvgl/src/font/lv_font_montserrat_14.o \
./lvgl/src/font/lv_font_montserrat_16.o \
./lvgl/src/font/lv_font_montserrat_18.o \
./lvgl/src/font/lv_font_montserrat_20.o \
./lvgl/src/font/lv_font_montserrat_22.o \
./lvgl/src/font/lv_font_montserrat_24.o \
./lvgl/src/font/lv_font_montserrat_26.o \
./lvgl/src/font/lv_font_montserrat_28.o \
./lvgl/src/font/lv_font_montserrat_28_compressed.o \
./lvgl/src/font/lv_font_montserrat_30.o \
./lvgl/src/font/lv_font_montserrat_32.o \
./lvgl/src/font/lv_font_montserrat_34.o \
./lvgl/src/font/lv_font_montserrat_36.o \
./lvgl/src/font/lv_font_montserrat_38.o \
./lvgl/src/font/lv_font_montserrat_40.o \
./lvgl/src/font/lv_font_montserrat_42.o \
./lvgl/src/font/lv_font_montserrat_44.o \
./lvgl/src/font/lv_font_montserrat_46.o \
./lvgl/src/font/lv_font_montserrat_48.o \
./lvgl/src/font/lv_font_montserrat_8.o \
./lvgl/src/font/lv_font_simsun_16_cjk.o \
./lvgl/src/font/lv_font_unscii_16.o \
./lvgl/src/font/lv_font_unscii_8.o 


# Each subdirectory must supply rules for building sources it contributes
lvgl/src/font/%.o lvgl/src/font/%.su lvgl/src/font/%.cyclo: ../lvgl/src/font/%.c lvgl/src/font/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H743xx -DSTM32_THREAD_SAFE_STRATEGY=4 -c -I../FATFS/Target -I../FATFS/App -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"../Drivers/SSD1963/Src" -I../Drivers/SSD1963/Inc -I../lvgl -I../USB_HOST/App -I../USB_HOST/Target -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/HID/Inc -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Core/ThreadSafe -I"C:/Users/Pablo/Documents/Programacion/STM32/STOS_0_9000/Drivers/io" -I"C:/Users/Pablo/Documents/Programacion/STM32/STOS_0_9000/Drivers/screen" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-src-2f-font

clean-lvgl-2f-src-2f-font:
	-$(RM) ./lvgl/src/font/lv_font.cyclo ./lvgl/src/font/lv_font.d ./lvgl/src/font/lv_font.o ./lvgl/src/font/lv_font.su ./lvgl/src/font/lv_font_dejavu_16_persian_hebrew.cyclo ./lvgl/src/font/lv_font_dejavu_16_persian_hebrew.d ./lvgl/src/font/lv_font_dejavu_16_persian_hebrew.o ./lvgl/src/font/lv_font_dejavu_16_persian_hebrew.su ./lvgl/src/font/lv_font_fmt_txt.cyclo ./lvgl/src/font/lv_font_fmt_txt.d ./lvgl/src/font/lv_font_fmt_txt.o ./lvgl/src/font/lv_font_fmt_txt.su ./lvgl/src/font/lv_font_loader.cyclo ./lvgl/src/font/lv_font_loader.d ./lvgl/src/font/lv_font_loader.o ./lvgl/src/font/lv_font_loader.su ./lvgl/src/font/lv_font_montserrat_10.cyclo ./lvgl/src/font/lv_font_montserrat_10.d ./lvgl/src/font/lv_font_montserrat_10.o ./lvgl/src/font/lv_font_montserrat_10.su ./lvgl/src/font/lv_font_montserrat_12.cyclo ./lvgl/src/font/lv_font_montserrat_12.d ./lvgl/src/font/lv_font_montserrat_12.o ./lvgl/src/font/lv_font_montserrat_12.su ./lvgl/src/font/lv_font_montserrat_14.cyclo ./lvgl/src/font/lv_font_montserrat_14.d ./lvgl/src/font/lv_font_montserrat_14.o ./lvgl/src/font/lv_font_montserrat_14.su ./lvgl/src/font/lv_font_montserrat_16.cyclo ./lvgl/src/font/lv_font_montserrat_16.d ./lvgl/src/font/lv_font_montserrat_16.o ./lvgl/src/font/lv_font_montserrat_16.su ./lvgl/src/font/lv_font_montserrat_18.cyclo ./lvgl/src/font/lv_font_montserrat_18.d ./lvgl/src/font/lv_font_montserrat_18.o ./lvgl/src/font/lv_font_montserrat_18.su ./lvgl/src/font/lv_font_montserrat_20.cyclo ./lvgl/src/font/lv_font_montserrat_20.d ./lvgl/src/font/lv_font_montserrat_20.o ./lvgl/src/font/lv_font_montserrat_20.su ./lvgl/src/font/lv_font_montserrat_22.cyclo ./lvgl/src/font/lv_font_montserrat_22.d ./lvgl/src/font/lv_font_montserrat_22.o ./lvgl/src/font/lv_font_montserrat_22.su ./lvgl/src/font/lv_font_montserrat_24.cyclo ./lvgl/src/font/lv_font_montserrat_24.d ./lvgl/src/font/lv_font_montserrat_24.o ./lvgl/src/font/lv_font_montserrat_24.su ./lvgl/src/font/lv_font_montserrat_26.cyclo ./lvgl/src/font/lv_font_montserrat_26.d ./lvgl/src/font/lv_font_montserrat_26.o ./lvgl/src/font/lv_font_montserrat_26.su ./lvgl/src/font/lv_font_montserrat_28.cyclo ./lvgl/src/font/lv_font_montserrat_28.d ./lvgl/src/font/lv_font_montserrat_28.o ./lvgl/src/font/lv_font_montserrat_28.su ./lvgl/src/font/lv_font_montserrat_28_compressed.cyclo ./lvgl/src/font/lv_font_montserrat_28_compressed.d ./lvgl/src/font/lv_font_montserrat_28_compressed.o ./lvgl/src/font/lv_font_montserrat_28_compressed.su ./lvgl/src/font/lv_font_montserrat_30.cyclo ./lvgl/src/font/lv_font_montserrat_30.d ./lvgl/src/font/lv_font_montserrat_30.o ./lvgl/src/font/lv_font_montserrat_30.su ./lvgl/src/font/lv_font_montserrat_32.cyclo ./lvgl/src/font/lv_font_montserrat_32.d ./lvgl/src/font/lv_font_montserrat_32.o ./lvgl/src/font/lv_font_montserrat_32.su ./lvgl/src/font/lv_font_montserrat_34.cyclo ./lvgl/src/font/lv_font_montserrat_34.d ./lvgl/src/font/lv_font_montserrat_34.o ./lvgl/src/font/lv_font_montserrat_34.su ./lvgl/src/font/lv_font_montserrat_36.cyclo ./lvgl/src/font/lv_font_montserrat_36.d ./lvgl/src/font/lv_font_montserrat_36.o ./lvgl/src/font/lv_font_montserrat_36.su ./lvgl/src/font/lv_font_montserrat_38.cyclo ./lvgl/src/font/lv_font_montserrat_38.d ./lvgl/src/font/lv_font_montserrat_38.o ./lvgl/src/font/lv_font_montserrat_38.su ./lvgl/src/font/lv_font_montserrat_40.cyclo ./lvgl/src/font/lv_font_montserrat_40.d ./lvgl/src/font/lv_font_montserrat_40.o ./lvgl/src/font/lv_font_montserrat_40.su ./lvgl/src/font/lv_font_montserrat_42.cyclo ./lvgl/src/font/lv_font_montserrat_42.d ./lvgl/src/font/lv_font_montserrat_42.o ./lvgl/src/font/lv_font_montserrat_42.su ./lvgl/src/font/lv_font_montserrat_44.cyclo ./lvgl/src/font/lv_font_montserrat_44.d ./lvgl/src/font/lv_font_montserrat_44.o ./lvgl/src/font/lv_font_montserrat_44.su ./lvgl/src/font/lv_font_montserrat_46.cyclo ./lvgl/src/font/lv_font_montserrat_46.d ./lvgl/src/font/lv_font_montserrat_46.o ./lvgl/src/font/lv_font_montserrat_46.su ./lvgl/src/font/lv_font_montserrat_48.cyclo ./lvgl/src/font/lv_font_montserrat_48.d ./lvgl/src/font/lv_font_montserrat_48.o ./lvgl/src/font/lv_font_montserrat_48.su ./lvgl/src/font/lv_font_montserrat_8.cyclo ./lvgl/src/font/lv_font_montserrat_8.d ./lvgl/src/font/lv_font_montserrat_8.o ./lvgl/src/font/lv_font_montserrat_8.su ./lvgl/src/font/lv_font_simsun_16_cjk.cyclo ./lvgl/src/font/lv_font_simsun_16_cjk.d ./lvgl/src/font/lv_font_simsun_16_cjk.o ./lvgl/src/font/lv_font_simsun_16_cjk.su ./lvgl/src/font/lv_font_unscii_16.cyclo ./lvgl/src/font/lv_font_unscii_16.d ./lvgl/src/font/lv_font_unscii_16.o ./lvgl/src/font/lv_font_unscii_16.su ./lvgl/src/font/lv_font_unscii_8.cyclo ./lvgl/src/font/lv_font_unscii_8.d ./lvgl/src/font/lv_font_unscii_8.o ./lvgl/src/font/lv_font_unscii_8.su

.PHONY: clean-lvgl-2f-src-2f-font

