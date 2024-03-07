/*
 * screen.c
 *
 *  Created on: Dec 19, 2023
 *      Author: Pablo
 */

#include "screen.h"
#include "SSD1963.h"
#include "cmsis_os.h"
#include "main.h"

void my_flush_cb(lv_disp_t * disp, const lv_area_t * area, lv_color_t * color_p);
//extern void keyboard_read_cb(lv_indev_t * indev, lv_indev_data_t*data);
extern UART_HandleTypeDef huart3;

extern osMutexId_t lvglMutexHandle;

static lv_color_t buf_1[BUFF_SIZE]; //TODO: Chose a buffer size. DISPLAY_WIDTH * 10 is one suggestion.
static lv_color_t buf_2[BUFF_SIZE];
lv_obj_t * ta;

void screen_init(void){
	SSD1963_Init();
	SSD1963_DrawBlackScreen();
	lv_init();

	lv_disp_t * disp = lv_disp_create(480, 272); /*Basic initialization with horizontal and vertical resolution in pixels*/
	lv_disp_set_flush_cb(disp, my_flush_cb); /*Set a flush callback to draw to the display*/
	lv_disp_set_draw_buffers(disp, buf_1, NULL, sizeof(buf_1), LV_DISP_RENDER_MODE_PARTIAL); /*Set an initialized buffer*/

	// Change the active screen's background color
	lv_obj_set_style_bg_color(lv_screen_active(), lv_color_hex(0x003a57), LV_PART_MAIN);
	lv_obj_set_style_text_color(lv_screen_active(), lv_color_hex(0xffffff), LV_PART_MAIN);

	/*Create a spinner*/
	lv_obj_t * spinner = lv_spinner_create(lv_screen_active());
	lv_obj_set_size(spinner, 60, 60);
	lv_obj_align(spinner, LV_ALIGN_CENTER, 0, 0);
	lv_indev_t * indev = lv_indev_create();
	lv_indev_set_type(indev, LV_INDEV_TYPE_KEYPAD);
	lv_indev_set_read_cb(indev, keyboard_read_cb);

	ta = lv_textarea_create(lv_screen_active());
	lv_textarea_set_one_line(ta, 0);
	lv_obj_align(ta, LV_ALIGN_TOP_MID, 0, 10);
	lv_obj_add_state(ta, LV_STATE_FOCUSED); /*To be sure the cursor is visible*/

	lv_group_t * g = lv_group_create();
	lv_group_add_obj(g, ta);
	lv_indev_set_group(indev, g);
}

void my_flush_cb(lv_disp_t * disp, const lv_area_t * area, lv_color_t * color_p)
{
  //Set the drawing region
  //set_draw_window(area->x1, area->y1, area->x2, area->y2);
	SSD1963_set_area(area->x1, area->y1, area->x2, area->y2);
	SSD1963_start_sending_data();

	int height = area->y2 - area->y1 + 1;
	int width = area->x2 - area->x1 + 1;

	//Write colour to each pixel
	for (int i = 0; i < width * height; i++) {
	//uint16_t color_full = (color_p->red << 11) | (color_p->green << 5) | (color_p->blue);
	//parallel_write(color_full);
		//SSD1963_SendDataRS((uint8_t []) {color_p->blue,color_p->green,color_p->red}, 3);
		SSD1963_set_pixel(color_p->blue, color_p->green, color_p->red);
		color_p++;
	}

	/* IMPORTANT!!!
	* Inform the graphics library that you are ready with the flushing*/
	lv_disp_flush_ready(disp);
}

void LVGLTimer(void *argument)
{
  /* USER CODE BEGIN LVGLTimer */
  /* Infinite loop */
  for(;;)
  {
	//xSemaphoreTake(lvglMutexHandle, portMAX_DELAY);
	  osMutexAcquire(lvglMutexHandle, portMAX_DELAY);
	  //osSemaphoreAcquire(binarySemaphoreISRHandle, 100);
	lv_timer_handler();
	HAL_GPIO_TogglePin(LD1_GPIO_Port, LD1_Pin);
	//HAL_UART_Transmit(&huart3, "Tarea 1\n", 8, 100);
	osMutexRelease(lvglMutexHandle);
	//xSemaphoreGive(lvglMutexHandle);
	osDelay(20);
  }
  /* USER CODE END LVGLTimer */
}

/* USER CODE BEGIN Header_LVGLTick */
/**
* @brief Function implementing the LVGL_Tick thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_LVGLTick */
void LVGLTick(void *argument)
{
  /* USER CODE BEGIN LVGLTick */
  /* Infinite loop */
  for(;;)
  {
	//xSemaphoreTake(lvglMutexHandle, portMAX_DELAY);
	  osMutexAcquire(lvglMutexHandle, portMAX_DELAY);
	  //osSemaphoreAcquire(binarySemaphoreISRHandle, 100);
	lv_tick_inc(10);
	HAL_GPIO_TogglePin(LD2_GPIO_Port, LD2_Pin);
	//HAL_UART_Transmit(&huart3, "Tarea 2\n", 8, 100);
	//xSemaphoreGive(lvglMutexHandle);
	osMutexRelease(lvglMutexHandle);
	osDelay(10);
  }
  /* USER CODE END LVGLTick */
}


