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

extern lv_obj_t * ta;//text area

char key = '\0';//set the last pressed key

void USBH_HID_EventCallback(USBH_HandleTypeDef *phost){
	char message[20];

	if( (USBH_HID_GetDeviceType(phost)) == HID_MOUSE ){
		HID_MOUSE_Info_TypeDef * HID_MOUSE_Info;
		HID_MOUSE_Info = USBH_HID_GetMouseInfo(phost);
		uint8_t x = HID_MOUSE_Info->x;//TODO
		uint8_t y = HID_MOUSE_Info->y;//TODO
	}

	if( (USBH_HID_GetDeviceType(phost)) == HID_KEYBOARD ){
		HID_KEYBD_Info_TypeDef * HID_KEYBOARD_Info;
		HID_KEYBOARD_Info = USBH_HID_GetKeybdInfo(phost);
		key = USBH_HID_GetASCIICode(HID_KEYBOARD_Info);
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

/**
  * @brief  Callback function for keyboard.
  * @param  indev  input device object
  * @param  data pointer to a lv_indev_data_t object
  * @retval
  */
void keyboard_read_cb(lv_indev_t * indev, lv_indev_data_t*data){
	data->key = key;            /*Get the last pressed or released key*/

	if(data->key == 'a')
		HAL_GPIO_TogglePin(LD3_GPIO_Port, LD3_Pin);

}
