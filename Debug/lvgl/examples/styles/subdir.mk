################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/examples/styles/lv_example_style_1.c \
../lvgl/examples/styles/lv_example_style_10.c \
../lvgl/examples/styles/lv_example_style_11.c \
../lvgl/examples/styles/lv_example_style_12.c \
../lvgl/examples/styles/lv_example_style_13.c \
../lvgl/examples/styles/lv_example_style_14.c \
../lvgl/examples/styles/lv_example_style_15.c \
../lvgl/examples/styles/lv_example_style_2.c \
../lvgl/examples/styles/lv_example_style_3.c \
../lvgl/examples/styles/lv_example_style_4.c \
../lvgl/examples/styles/lv_example_style_5.c \
../lvgl/examples/styles/lv_example_style_6.c \
../lvgl/examples/styles/lv_example_style_7.c \
../lvgl/examples/styles/lv_example_style_8.c \
../lvgl/examples/styles/lv_example_style_9.c 

C_DEPS += \
./lvgl/examples/styles/lv_example_style_1.d \
./lvgl/examples/styles/lv_example_style_10.d \
./lvgl/examples/styles/lv_example_style_11.d \
./lvgl/examples/styles/lv_example_style_12.d \
./lvgl/examples/styles/lv_example_style_13.d \
./lvgl/examples/styles/lv_example_style_14.d \
./lvgl/examples/styles/lv_example_style_15.d \
./lvgl/examples/styles/lv_example_style_2.d \
./lvgl/examples/styles/lv_example_style_3.d \
./lvgl/examples/styles/lv_example_style_4.d \
./lvgl/examples/styles/lv_example_style_5.d \
./lvgl/examples/styles/lv_example_style_6.d \
./lvgl/examples/styles/lv_example_style_7.d \
./lvgl/examples/styles/lv_example_style_8.d \
./lvgl/examples/styles/lv_example_style_9.d 

OBJS += \
./lvgl/examples/styles/lv_example_style_1.o \
./lvgl/examples/styles/lv_example_style_10.o \
./lvgl/examples/styles/lv_example_style_11.o \
./lvgl/examples/styles/lv_example_style_12.o \
./lvgl/examples/styles/lv_example_style_13.o \
./lvgl/examples/styles/lv_example_style_14.o \
./lvgl/examples/styles/lv_example_style_15.o \
./lvgl/examples/styles/lv_example_style_2.o \
./lvgl/examples/styles/lv_example_style_3.o \
./lvgl/examples/styles/lv_example_style_4.o \
./lvgl/examples/styles/lv_example_style_5.o \
./lvgl/examples/styles/lv_example_style_6.o \
./lvgl/examples/styles/lv_example_style_7.o \
./lvgl/examples/styles/lv_example_style_8.o \
./lvgl/examples/styles/lv_example_style_9.o 


# Each subdirectory must supply rules for building sources it contributes
lvgl/examples/styles/%.o lvgl/examples/styles/%.su lvgl/examples/styles/%.cyclo: ../lvgl/examples/styles/%.c lvgl/examples/styles/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H743xx -DSTM32_THREAD_SAFE_STRATEGY=4 -c -I../FATFS/Target -I../FATFS/App -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"../Drivers/SSD1963/Src" -I../Drivers/SSD1963/Inc -I../lvgl -I../USB_HOST/App -I../USB_HOST/Target -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/HID/Inc -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Core/ThreadSafe -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-examples-2f-styles

clean-lvgl-2f-examples-2f-styles:
	-$(RM) ./lvgl/examples/styles/lv_example_style_1.cyclo ./lvgl/examples/styles/lv_example_style_1.d ./lvgl/examples/styles/lv_example_style_1.o ./lvgl/examples/styles/lv_example_style_1.su ./lvgl/examples/styles/lv_example_style_10.cyclo ./lvgl/examples/styles/lv_example_style_10.d ./lvgl/examples/styles/lv_example_style_10.o ./lvgl/examples/styles/lv_example_style_10.su ./lvgl/examples/styles/lv_example_style_11.cyclo ./lvgl/examples/styles/lv_example_style_11.d ./lvgl/examples/styles/lv_example_style_11.o ./lvgl/examples/styles/lv_example_style_11.su ./lvgl/examples/styles/lv_example_style_12.cyclo ./lvgl/examples/styles/lv_example_style_12.d ./lvgl/examples/styles/lv_example_style_12.o ./lvgl/examples/styles/lv_example_style_12.su ./lvgl/examples/styles/lv_example_style_13.cyclo ./lvgl/examples/styles/lv_example_style_13.d ./lvgl/examples/styles/lv_example_style_13.o ./lvgl/examples/styles/lv_example_style_13.su ./lvgl/examples/styles/lv_example_style_14.cyclo ./lvgl/examples/styles/lv_example_style_14.d ./lvgl/examples/styles/lv_example_style_14.o ./lvgl/examples/styles/lv_example_style_14.su ./lvgl/examples/styles/lv_example_style_15.cyclo ./lvgl/examples/styles/lv_example_style_15.d ./lvgl/examples/styles/lv_example_style_15.o ./lvgl/examples/styles/lv_example_style_15.su ./lvgl/examples/styles/lv_example_style_2.cyclo ./lvgl/examples/styles/lv_example_style_2.d ./lvgl/examples/styles/lv_example_style_2.o ./lvgl/examples/styles/lv_example_style_2.su ./lvgl/examples/styles/lv_example_style_3.cyclo ./lvgl/examples/styles/lv_example_style_3.d ./lvgl/examples/styles/lv_example_style_3.o ./lvgl/examples/styles/lv_example_style_3.su ./lvgl/examples/styles/lv_example_style_4.cyclo ./lvgl/examples/styles/lv_example_style_4.d ./lvgl/examples/styles/lv_example_style_4.o ./lvgl/examples/styles/lv_example_style_4.su ./lvgl/examples/styles/lv_example_style_5.cyclo ./lvgl/examples/styles/lv_example_style_5.d ./lvgl/examples/styles/lv_example_style_5.o ./lvgl/examples/styles/lv_example_style_5.su ./lvgl/examples/styles/lv_example_style_6.cyclo ./lvgl/examples/styles/lv_example_style_6.d ./lvgl/examples/styles/lv_example_style_6.o ./lvgl/examples/styles/lv_example_style_6.su ./lvgl/examples/styles/lv_example_style_7.cyclo ./lvgl/examples/styles/lv_example_style_7.d ./lvgl/examples/styles/lv_example_style_7.o ./lvgl/examples/styles/lv_example_style_7.su ./lvgl/examples/styles/lv_example_style_8.cyclo ./lvgl/examples/styles/lv_example_style_8.d ./lvgl/examples/styles/lv_example_style_8.o ./lvgl/examples/styles/lv_example_style_8.su ./lvgl/examples/styles/lv_example_style_9.cyclo ./lvgl/examples/styles/lv_example_style_9.d ./lvgl/examples/styles/lv_example_style_9.o ./lvgl/examples/styles/lv_example_style_9.su

.PHONY: clean-lvgl-2f-examples-2f-styles

