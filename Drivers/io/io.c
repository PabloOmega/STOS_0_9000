/*
 * io.c
 *
 *  Created on: Dec 19, 2023
 *      Author: Pablo
 */

#include "io.h"
#include "screen.h"
#include "usb_host.h"
#include "usbh_hid.h"

extern lv_obj_t * ta;

char key = '\0';
uint32_t key_tick;

char last_key(void);
bool key_pressed(void);

void USBH_HID_EventCallback(USBH_HandleTypeDef *phost){
	char message[20];

	if( (USBH_HID_GetDeviceType(phost)) == HID_MOUSE ){
		HID_MOUSE_Info_TypeDef * HID_MOUSE_Info;
		HID_MOUSE_Info = USBH_HID_GetMouseInfo(phost);
		uint8_t x = HID_MOUSE_Info->x;
		uint8_t y = HID_MOUSE_Info->y;
	}

	if( (USBH_HID_GetDeviceType(phost)) == HID_KEYBOARD ){
		HID_KEYBD_Info_TypeDef * HID_KEYBOARD_Info;
		HID_KEYBOARD_Info = USBH_HID_GetKeybdInfo(phost);
		key = USBH_HID_GetASCIICode(HID_KEYBOARD_Info);
		key_tick = HAL_GetTick();
		switch(key){
		case 13:
			lv_textarea_delete_char(ta);
			break;
		default:
			lv_textarea_add_char(ta, key);
			break;
		}

	}
}

void keyboard_read_cb(lv_indev_t * indev, lv_indev_data_t*data){
	data->key = last_key();            /*Get the last pressed or released key*/

	if(data->key == 'a')
		HAL_GPIO_TogglePin(LD1_GPIO_Port, LD1_Pin);
//	else
//		HAL_GPIO_TogglePin(LD2_GPIO_Port, LD2_Pin);
//	if(key_pressed()) data->state = LV_INDEV_STATE_PRESSED;
//	else data->state = LV_INDEV_STATE_RELEASED;

}

char last_key(void){
	return key;
}

bool key_pressed(void){
	return (HAL_GetTick() - key_tick < 50);
}
