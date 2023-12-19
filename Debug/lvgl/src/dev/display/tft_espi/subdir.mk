################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../lvgl/src/dev/display/tft_espi/lv_tft_espi.cpp 

OBJS += \
./lvgl/src/dev/display/tft_espi/lv_tft_espi.o 

CPP_DEPS += \
./lvgl/src/dev/display/tft_espi/lv_tft_espi.d 


# Each subdirectory must supply rules for building sources it contributes
lvgl/src/dev/display/tft_espi/%.o lvgl/src/dev/display/tft_espi/%.su lvgl/src/dev/display/tft_espi/%.cyclo: ../lvgl/src/dev/display/tft_espi/%.cpp lvgl/src/dev/display/tft_espi/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H743xx -DSTM32_THREAD_SAFE_STRATEGY=4 -c -I../FATFS/Target -I../FATFS/App -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I../USB_HOST/App -I../USB_HOST/Target -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/HID/Inc -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Core/ThreadSafe -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-src-2f-dev-2f-display-2f-tft_espi

clean-lvgl-2f-src-2f-dev-2f-display-2f-tft_espi:
	-$(RM) ./lvgl/src/dev/display/tft_espi/lv_tft_espi.cyclo ./lvgl/src/dev/display/tft_espi/lv_tft_espi.d ./lvgl/src/dev/display/tft_espi/lv_tft_espi.o ./lvgl/src/dev/display/tft_espi/lv_tft_espi.su

.PHONY: clean-lvgl-2f-src-2f-dev-2f-display-2f-tft_espi

