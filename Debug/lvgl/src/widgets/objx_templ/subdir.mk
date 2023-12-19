################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/src/widgets/objx_templ/lv_objx_templ.c 

C_DEPS += \
./lvgl/src/widgets/objx_templ/lv_objx_templ.d 

OBJS += \
./lvgl/src/widgets/objx_templ/lv_objx_templ.o 


# Each subdirectory must supply rules for building sources it contributes
lvgl/src/widgets/objx_templ/%.o lvgl/src/widgets/objx_templ/%.su lvgl/src/widgets/objx_templ/%.cyclo: ../lvgl/src/widgets/objx_templ/%.c lvgl/src/widgets/objx_templ/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H743xx -DSTM32_THREAD_SAFE_STRATEGY=4 -c -I../FATFS/Target -I../FATFS/App -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"../Drivers/SSD1963/Src" -I../Drivers/SSD1963/Inc -I../lvgl -I../USB_HOST/App -I../USB_HOST/Target -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/HID/Inc -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Core/ThreadSafe -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-src-2f-widgets-2f-objx_templ

clean-lvgl-2f-src-2f-widgets-2f-objx_templ:
	-$(RM) ./lvgl/src/widgets/objx_templ/lv_objx_templ.cyclo ./lvgl/src/widgets/objx_templ/lv_objx_templ.d ./lvgl/src/widgets/objx_templ/lv_objx_templ.o ./lvgl/src/widgets/objx_templ/lv_objx_templ.su

.PHONY: clean-lvgl-2f-src-2f-widgets-2f-objx_templ
