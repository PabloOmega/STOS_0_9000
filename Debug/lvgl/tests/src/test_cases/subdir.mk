################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/tests/src/test_cases/_test_template.c \
../lvgl/tests/src/test_cases/test_config.c \
../lvgl/tests/src/test_cases/test_demo_stress.c \
../lvgl/tests/src/test_cases/test_demo_widgets.c \
../lvgl/tests/src/test_cases/test_event.c \
../lvgl/tests/src/test_cases/test_font_loader.c \
../lvgl/tests/src/test_cases/test_fs.c \
../lvgl/tests/src/test_cases/test_grid.c \
../lvgl/tests/src/test_cases/test_group.c \
../lvgl/tests/src/test_cases/test_margin_align.c \
../lvgl/tests/src/test_cases/test_margin_flex.c \
../lvgl/tests/src/test_cases/test_margin_grid.c \
../lvgl/tests/src/test_cases/test_math.c \
../lvgl/tests/src/test_cases/test_mem.c \
../lvgl/tests/src/test_cases/test_obj_flags.c \
../lvgl/tests/src/test_cases/test_obj_tree.c \
../lvgl/tests/src/test_cases/test_objid.c \
../lvgl/tests/src/test_cases/test_observer.c \
../lvgl/tests/src/test_cases/test_snapshot.c \
../lvgl/tests/src/test_cases/test_span.c \
../lvgl/tests/src/test_cases/test_style.c \
../lvgl/tests/src/test_cases/test_txt.c 

C_DEPS += \
./lvgl/tests/src/test_cases/_test_template.d \
./lvgl/tests/src/test_cases/test_config.d \
./lvgl/tests/src/test_cases/test_demo_stress.d \
./lvgl/tests/src/test_cases/test_demo_widgets.d \
./lvgl/tests/src/test_cases/test_event.d \
./lvgl/tests/src/test_cases/test_font_loader.d \
./lvgl/tests/src/test_cases/test_fs.d \
./lvgl/tests/src/test_cases/test_grid.d \
./lvgl/tests/src/test_cases/test_group.d \
./lvgl/tests/src/test_cases/test_margin_align.d \
./lvgl/tests/src/test_cases/test_margin_flex.d \
./lvgl/tests/src/test_cases/test_margin_grid.d \
./lvgl/tests/src/test_cases/test_math.d \
./lvgl/tests/src/test_cases/test_mem.d \
./lvgl/tests/src/test_cases/test_obj_flags.d \
./lvgl/tests/src/test_cases/test_obj_tree.d \
./lvgl/tests/src/test_cases/test_objid.d \
./lvgl/tests/src/test_cases/test_observer.d \
./lvgl/tests/src/test_cases/test_snapshot.d \
./lvgl/tests/src/test_cases/test_span.d \
./lvgl/tests/src/test_cases/test_style.d \
./lvgl/tests/src/test_cases/test_txt.d 

OBJS += \
./lvgl/tests/src/test_cases/_test_template.o \
./lvgl/tests/src/test_cases/test_config.o \
./lvgl/tests/src/test_cases/test_demo_stress.o \
./lvgl/tests/src/test_cases/test_demo_widgets.o \
./lvgl/tests/src/test_cases/test_event.o \
./lvgl/tests/src/test_cases/test_font_loader.o \
./lvgl/tests/src/test_cases/test_fs.o \
./lvgl/tests/src/test_cases/test_grid.o \
./lvgl/tests/src/test_cases/test_group.o \
./lvgl/tests/src/test_cases/test_margin_align.o \
./lvgl/tests/src/test_cases/test_margin_flex.o \
./lvgl/tests/src/test_cases/test_margin_grid.o \
./lvgl/tests/src/test_cases/test_math.o \
./lvgl/tests/src/test_cases/test_mem.o \
./lvgl/tests/src/test_cases/test_obj_flags.o \
./lvgl/tests/src/test_cases/test_obj_tree.o \
./lvgl/tests/src/test_cases/test_objid.o \
./lvgl/tests/src/test_cases/test_observer.o \
./lvgl/tests/src/test_cases/test_snapshot.o \
./lvgl/tests/src/test_cases/test_span.o \
./lvgl/tests/src/test_cases/test_style.o \
./lvgl/tests/src/test_cases/test_txt.o 


# Each subdirectory must supply rules for building sources it contributes
lvgl/tests/src/test_cases/%.o lvgl/tests/src/test_cases/%.su lvgl/tests/src/test_cases/%.cyclo: ../lvgl/tests/src/test_cases/%.c lvgl/tests/src/test_cases/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H743xx -DSTM32_THREAD_SAFE_STRATEGY=4 -c -I../FATFS/Target -I../FATFS/App -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"../Drivers/SSD1963/Src" -I../Drivers/SSD1963/Inc -I../lvgl -I../USB_HOST/App -I../USB_HOST/Target -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/HID/Inc -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Core/ThreadSafe -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-tests-2f-src-2f-test_cases

clean-lvgl-2f-tests-2f-src-2f-test_cases:
	-$(RM) ./lvgl/tests/src/test_cases/_test_template.cyclo ./lvgl/tests/src/test_cases/_test_template.d ./lvgl/tests/src/test_cases/_test_template.o ./lvgl/tests/src/test_cases/_test_template.su ./lvgl/tests/src/test_cases/test_config.cyclo ./lvgl/tests/src/test_cases/test_config.d ./lvgl/tests/src/test_cases/test_config.o ./lvgl/tests/src/test_cases/test_config.su ./lvgl/tests/src/test_cases/test_demo_stress.cyclo ./lvgl/tests/src/test_cases/test_demo_stress.d ./lvgl/tests/src/test_cases/test_demo_stress.o ./lvgl/tests/src/test_cases/test_demo_stress.su ./lvgl/tests/src/test_cases/test_demo_widgets.cyclo ./lvgl/tests/src/test_cases/test_demo_widgets.d ./lvgl/tests/src/test_cases/test_demo_widgets.o ./lvgl/tests/src/test_cases/test_demo_widgets.su ./lvgl/tests/src/test_cases/test_event.cyclo ./lvgl/tests/src/test_cases/test_event.d ./lvgl/tests/src/test_cases/test_event.o ./lvgl/tests/src/test_cases/test_event.su ./lvgl/tests/src/test_cases/test_font_loader.cyclo ./lvgl/tests/src/test_cases/test_font_loader.d ./lvgl/tests/src/test_cases/test_font_loader.o ./lvgl/tests/src/test_cases/test_font_loader.su ./lvgl/tests/src/test_cases/test_fs.cyclo ./lvgl/tests/src/test_cases/test_fs.d ./lvgl/tests/src/test_cases/test_fs.o ./lvgl/tests/src/test_cases/test_fs.su ./lvgl/tests/src/test_cases/test_grid.cyclo ./lvgl/tests/src/test_cases/test_grid.d ./lvgl/tests/src/test_cases/test_grid.o ./lvgl/tests/src/test_cases/test_grid.su ./lvgl/tests/src/test_cases/test_group.cyclo ./lvgl/tests/src/test_cases/test_group.d ./lvgl/tests/src/test_cases/test_group.o ./lvgl/tests/src/test_cases/test_group.su ./lvgl/tests/src/test_cases/test_margin_align.cyclo ./lvgl/tests/src/test_cases/test_margin_align.d ./lvgl/tests/src/test_cases/test_margin_align.o ./lvgl/tests/src/test_cases/test_margin_align.su ./lvgl/tests/src/test_cases/test_margin_flex.cyclo ./lvgl/tests/src/test_cases/test_margin_flex.d ./lvgl/tests/src/test_cases/test_margin_flex.o ./lvgl/tests/src/test_cases/test_margin_flex.su ./lvgl/tests/src/test_cases/test_margin_grid.cyclo ./lvgl/tests/src/test_cases/test_margin_grid.d ./lvgl/tests/src/test_cases/test_margin_grid.o ./lvgl/tests/src/test_cases/test_margin_grid.su ./lvgl/tests/src/test_cases/test_math.cyclo ./lvgl/tests/src/test_cases/test_math.d ./lvgl/tests/src/test_cases/test_math.o ./lvgl/tests/src/test_cases/test_math.su ./lvgl/tests/src/test_cases/test_mem.cyclo ./lvgl/tests/src/test_cases/test_mem.d ./lvgl/tests/src/test_cases/test_mem.o ./lvgl/tests/src/test_cases/test_mem.su ./lvgl/tests/src/test_cases/test_obj_flags.cyclo ./lvgl/tests/src/test_cases/test_obj_flags.d ./lvgl/tests/src/test_cases/test_obj_flags.o ./lvgl/tests/src/test_cases/test_obj_flags.su ./lvgl/tests/src/test_cases/test_obj_tree.cyclo ./lvgl/tests/src/test_cases/test_obj_tree.d ./lvgl/tests/src/test_cases/test_obj_tree.o ./lvgl/tests/src/test_cases/test_obj_tree.su ./lvgl/tests/src/test_cases/test_objid.cyclo ./lvgl/tests/src/test_cases/test_objid.d ./lvgl/tests/src/test_cases/test_objid.o ./lvgl/tests/src/test_cases/test_objid.su ./lvgl/tests/src/test_cases/test_observer.cyclo ./lvgl/tests/src/test_cases/test_observer.d ./lvgl/tests/src/test_cases/test_observer.o ./lvgl/tests/src/test_cases/test_observer.su ./lvgl/tests/src/test_cases/test_snapshot.cyclo ./lvgl/tests/src/test_cases/test_snapshot.d ./lvgl/tests/src/test_cases/test_snapshot.o ./lvgl/tests/src/test_cases/test_snapshot.su ./lvgl/tests/src/test_cases/test_span.cyclo ./lvgl/tests/src/test_cases/test_span.d ./lvgl/tests/src/test_cases/test_span.o ./lvgl/tests/src/test_cases/test_span.su ./lvgl/tests/src/test_cases/test_style.cyclo ./lvgl/tests/src/test_cases/test_style.d ./lvgl/tests/src/test_cases/test_style.o ./lvgl/tests/src/test_cases/test_style.su ./lvgl/tests/src/test_cases/test_txt.cyclo ./lvgl/tests/src/test_cases/test_txt.d ./lvgl/tests/src/test_cases/test_txt.o ./lvgl/tests/src/test_cases/test_txt.su

.PHONY: clean-lvgl-2f-tests-2f-src-2f-test_cases

