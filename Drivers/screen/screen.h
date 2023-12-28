/*
 * screen.h
 *
 *  Created on: Dec 19, 2023
 *      Author: Pablo
 */

#ifndef SCREEN_SCREEN_H_
#define SCREEN_SCREEN_H_

#include "stm32h7xx_hal.h"
#include "stdio.h"
#include "stdint.h"
#include "stdbool.h"
#include "io.h"
#include "lvgl.h"

#define BUFF_SIZE 40000

void screen_init(void);
void keyboard_read_cb(lv_indev_t * indev, lv_indev_data_t*data);

#endif /* SCREEN_SCREEN_H_ */
