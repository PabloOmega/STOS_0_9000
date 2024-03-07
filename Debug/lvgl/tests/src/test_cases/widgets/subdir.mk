################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/tests/src/test_cases/widgets/test_animimg.c \
../lvgl/tests/src/test_cases/widgets/test_arc.c \
../lvgl/tests/src/test_cases/widgets/test_bar.c \
../lvgl/tests/src/test_cases/widgets/test_btn.c \
../lvgl/tests/src/test_cases/widgets/test_btnmatrix.c \
../lvgl/tests/src/test_cases/widgets/test_calendar.c \
../lvgl/tests/src/test_cases/widgets/test_chart.c \
../lvgl/tests/src/test_cases/widgets/test_checkbox.c \
../lvgl/tests/src/test_cases/widgets/test_dropdown.c \
../lvgl/tests/src/test_cases/widgets/test_label.c \
../lvgl/tests/src/test_cases/widgets/test_led.c \
../lvgl/tests/src/test_cases/widgets/test_line.c \
../lvgl/tests/src/test_cases/widgets/test_list.c \
../lvgl/tests/src/test_cases/widgets/test_msgbox.c \
../lvgl/tests/src/test_cases/widgets/test_roller.c \
../lvgl/tests/src/test_cases/widgets/test_slider.c \
../lvgl/tests/src/test_cases/widgets/test_spinbox.c \
../lvgl/tests/src/test_cases/widgets/test_spinner.c \
../lvgl/tests/src/test_cases/widgets/test_switch.c \
../lvgl/tests/src/test_cases/widgets/test_table.c \
../lvgl/tests/src/test_cases/widgets/test_tabview.c \
../lvgl/tests/src/test_cases/widgets/test_textarea.c \
../lvgl/tests/src/test_cases/widgets/test_win.c 

C_DEPS += \
./lvgl/tests/src/test_cases/widgets/test_animimg.d \
./lvgl/tests/src/test_cases/widgets/test_arc.d \
./lvgl/tests/src/test_cases/widgets/test_bar.d \
./lvgl/tests/src/test_cases/widgets/test_btn.d \
./lvgl/tests/src/test_cases/widgets/test_btnmatrix.d \
./lvgl/tests/src/test_cases/widgets/test_calendar.d \
./lvgl/tests/src/test_cases/widgets/test_chart.d \
./lvgl/tests/src/test_cases/widgets/test_checkbox.d \
./lvgl/tests/src/test_cases/widgets/test_dropdown.d \
./lvgl/tests/src/test_cases/widgets/test_label.d \
./lvgl/tests/src/test_cases/widgets/test_led.d \
./lvgl/tests/src/test_cases/widgets/test_line.d \
./lvgl/tests/src/test_cases/widgets/test_list.d \
./lvgl/tests/src/test_cases/widgets/test_msgbox.d \
./lvgl/tests/src/test_cases/widgets/test_roller.d \
./lvgl/tests/src/test_cases/widgets/test_slider.d \
./lvgl/tests/src/test_cases/widgets/test_spinbox.d \
./lvgl/tests/src/test_cases/widgets/test_spinner.d \
./lvgl/tests/src/test_cases/widgets/test_switch.d \
./lvgl/tests/src/test_cases/widgets/test_table.d \
./lvgl/tests/src/test_cases/widgets/test_tabview.d \
./lvgl/tests/src/test_cases/widgets/test_textarea.d \
./lvgl/tests/src/test_cases/widgets/test_win.d 

OBJS += \
./lvgl/tests/src/test_cases/widgets/test_animimg.o \
./lvgl/tests/src/test_cases/widgets/test_arc.o \
./lvgl/tests/src/test_cases/widgets/test_bar.o \
./lvgl/tests/src/test_cases/widgets/test_btn.o \
./lvgl/tests/src/test_cases/widgets/test_btnmatrix.o \
./lvgl/tests/src/test_cases/widgets/test_calendar.o \
./lvgl/tests/src/test_cases/widgets/test_chart.o \
./lvgl/tests/src/test_cases/widgets/test_checkbox.o \
./lvgl/tests/src/test_cases/widgets/test_dropdown.o \
./lvgl/tests/src/test_cases/widgets/test_label.o \
./lvgl/tests/src/test_cases/widgets/test_led.o \
./lvgl/tests/src/test_cases/widgets/test_line.o \
./lvgl/tests/src/test_cases/widgets/test_list.o \
./lvgl/tests/src/test_cases/widgets/test_msgbox.o \
./lvgl/tests/src/test_cases/widgets/test_roller.o \
./lvgl/tests/src/test_cases/widgets/test_slider.o \
./lvgl/tests/src/test_cases/widgets/test_spinbox.o \
./lvgl/tests/src/test_cases/widgets/test_spinner.o \
./lvgl/tests/src/test_cases/widgets/test_switch.o \
./lvgl/tests/src/test_cases/widgets/test_table.o \
./lvgl/tests/src/test_cases/widgets/test_tabview.o \
./lvgl/tests/src/test_cases/widgets/test_textarea.o \
./lvgl/tests/src/test_cases/widgets/test_win.o 


# Each subdirectory must supply rules for building sources it contributes
lvgl/tests/src/test_cases/widgets/%.o lvgl/tests/src/test_cases/widgets/%.su lvgl/tests/src/test_cases/widgets/%.cyclo: ../lvgl/tests/src/test_cases/widgets/%.c lvgl/tests/src/test_cases/widgets/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H743xx -DSTM32_THREAD_SAFE_STRATEGY=4 -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"../Drivers/SSD1963/Src" -I../Drivers/SSD1963/Inc -I../lvgl -I../USB_HOST/App -I../USB_HOST/Target -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/HID/Inc -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Core/ThreadSafe -I"C:/Users/Pablo/Documents/Programacion/STM32/STOS_0_9000/Drivers/io" -I"C:/Users/Pablo/Documents/Programacion/STM32/STOS_0_9000/Drivers/screen" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-tests-2f-src-2f-test_cases-2f-widgets

clean-lvgl-2f-tests-2f-src-2f-test_cases-2f-widgets:
	-$(RM) ./lvgl/tests/src/test_cases/widgets/test_animimg.cyclo ./lvgl/tests/src/test_cases/widgets/test_animimg.d ./lvgl/tests/src/test_cases/widgets/test_animimg.o ./lvgl/tests/src/test_cases/widgets/test_animimg.su ./lvgl/tests/src/test_cases/widgets/test_arc.cyclo ./lvgl/tests/src/test_cases/widgets/test_arc.d ./lvgl/tests/src/test_cases/widgets/test_arc.o ./lvgl/tests/src/test_cases/widgets/test_arc.su ./lvgl/tests/src/test_cases/widgets/test_bar.cyclo ./lvgl/tests/src/test_cases/widgets/test_bar.d ./lvgl/tests/src/test_cases/widgets/test_bar.o ./lvgl/tests/src/test_cases/widgets/test_bar.su ./lvgl/tests/src/test_cases/widgets/test_btn.cyclo ./lvgl/tests/src/test_cases/widgets/test_btn.d ./lvgl/tests/src/test_cases/widgets/test_btn.o ./lvgl/tests/src/test_cases/widgets/test_btn.su ./lvgl/tests/src/test_cases/widgets/test_btnmatrix.cyclo ./lvgl/tests/src/test_cases/widgets/test_btnmatrix.d ./lvgl/tests/src/test_cases/widgets/test_btnmatrix.o ./lvgl/tests/src/test_cases/widgets/test_btnmatrix.su ./lvgl/tests/src/test_cases/widgets/test_calendar.cyclo ./lvgl/tests/src/test_cases/widgets/test_calendar.d ./lvgl/tests/src/test_cases/widgets/test_calendar.o ./lvgl/tests/src/test_cases/widgets/test_calendar.su ./lvgl/tests/src/test_cases/widgets/test_chart.cyclo ./lvgl/tests/src/test_cases/widgets/test_chart.d ./lvgl/tests/src/test_cases/widgets/test_chart.o ./lvgl/tests/src/test_cases/widgets/test_chart.su ./lvgl/tests/src/test_cases/widgets/test_checkbox.cyclo ./lvgl/tests/src/test_cases/widgets/test_checkbox.d ./lvgl/tests/src/test_cases/widgets/test_checkbox.o ./lvgl/tests/src/test_cases/widgets/test_checkbox.su ./lvgl/tests/src/test_cases/widgets/test_dropdown.cyclo ./lvgl/tests/src/test_cases/widgets/test_dropdown.d ./lvgl/tests/src/test_cases/widgets/test_dropdown.o ./lvgl/tests/src/test_cases/widgets/test_dropdown.su ./lvgl/tests/src/test_cases/widgets/test_label.cyclo ./lvgl/tests/src/test_cases/widgets/test_label.d ./lvgl/tests/src/test_cases/widgets/test_label.o ./lvgl/tests/src/test_cases/widgets/test_label.su ./lvgl/tests/src/test_cases/widgets/test_led.cyclo ./lvgl/tests/src/test_cases/widgets/test_led.d ./lvgl/tests/src/test_cases/widgets/test_led.o ./lvgl/tests/src/test_cases/widgets/test_led.su ./lvgl/tests/src/test_cases/widgets/test_line.cyclo ./lvgl/tests/src/test_cases/widgets/test_line.d ./lvgl/tests/src/test_cases/widgets/test_line.o ./lvgl/tests/src/test_cases/widgets/test_line.su ./lvgl/tests/src/test_cases/widgets/test_list.cyclo ./lvgl/tests/src/test_cases/widgets/test_list.d ./lvgl/tests/src/test_cases/widgets/test_list.o ./lvgl/tests/src/test_cases/widgets/test_list.su ./lvgl/tests/src/test_cases/widgets/test_msgbox.cyclo ./lvgl/tests/src/test_cases/widgets/test_msgbox.d ./lvgl/tests/src/test_cases/widgets/test_msgbox.o ./lvgl/tests/src/test_cases/widgets/test_msgbox.su ./lvgl/tests/src/test_cases/widgets/test_roller.cyclo ./lvgl/tests/src/test_cases/widgets/test_roller.d ./lvgl/tests/src/test_cases/widgets/test_roller.o ./lvgl/tests/src/test_cases/widgets/test_roller.su ./lvgl/tests/src/test_cases/widgets/test_slider.cyclo ./lvgl/tests/src/test_cases/widgets/test_slider.d ./lvgl/tests/src/test_cases/widgets/test_slider.o ./lvgl/tests/src/test_cases/widgets/test_slider.su ./lvgl/tests/src/test_cases/widgets/test_spinbox.cyclo ./lvgl/tests/src/test_cases/widgets/test_spinbox.d ./lvgl/tests/src/test_cases/widgets/test_spinbox.o ./lvgl/tests/src/test_cases/widgets/test_spinbox.su ./lvgl/tests/src/test_cases/widgets/test_spinner.cyclo ./lvgl/tests/src/test_cases/widgets/test_spinner.d ./lvgl/tests/src/test_cases/widgets/test_spinner.o ./lvgl/tests/src/test_cases/widgets/test_spinner.su ./lvgl/tests/src/test_cases/widgets/test_switch.cyclo ./lvgl/tests/src/test_cases/widgets/test_switch.d ./lvgl/tests/src/test_cases/widgets/test_switch.o ./lvgl/tests/src/test_cases/widgets/test_switch.su ./lvgl/tests/src/test_cases/widgets/test_table.cyclo ./lvgl/tests/src/test_cases/widgets/test_table.d ./lvgl/tests/src/test_cases/widgets/test_table.o ./lvgl/tests/src/test_cases/widgets/test_table.su ./lvgl/tests/src/test_cases/widgets/test_tabview.cyclo ./lvgl/tests/src/test_cases/widgets/test_tabview.d ./lvgl/tests/src/test_cases/widgets/test_tabview.o ./lvgl/tests/src/test_cases/widgets/test_tabview.su ./lvgl/tests/src/test_cases/widgets/test_textarea.cyclo ./lvgl/tests/src/test_cases/widgets/test_textarea.d ./lvgl/tests/src/test_cases/widgets/test_textarea.o ./lvgl/tests/src/test_cases/widgets/test_textarea.su ./lvgl/tests/src/test_cases/widgets/test_win.cyclo ./lvgl/tests/src/test_cases/widgets/test_win.d ./lvgl/tests/src/test_cases/widgets/test_win.o ./lvgl/tests/src/test_cases/widgets/test_win.su

.PHONY: clean-lvgl-2f-tests-2f-src-2f-test_cases-2f-widgets

