
/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __SSD1963_H__
#define __SSD1963_H__

#include "stm32h7xx_hal.h"
#include "stdio.h"
#include "stdint.h"
#include "stdbool.h"
#include "lvgl.h"

#define FMC_BANK1_REG                       ((uint16_t *) 0x60000000)
#define FMC_BANK1_MEM                       ((uint16_t *) (0x60000000 | 0x0100000))

#define SSD1963_RST_LOW()                       WRITE_REG(GPIOG->BSRR, (uint32_t)GPIO_PIN_2 << 16)
#define SSD1963_RST_HIGH()                      WRITE_REG(GPIOG->BSRR, GPIO_PIN_2)

#define SSD1963_RS_LOW()                       WRITE_REG(GPIOG->BSRR, (uint32_t)GPIO_PIN_3 << 16)
#define SSD1963_RS_HIGH()                      WRITE_REG(GPIOG->BSRR, GPIO_PIN_3)

#define NOP_LCD                    0x00
#define SOFT_RESET                 0x01
#define GET_POWER_MODE             0x0A
#define GET_ADDRESS_MODE           0x0B
#define GET_PIXEL_FORMAT           0x0C
#define GET_DISPLAY_MODE           0x0D
#define GET_SIGNAL_MODE            0x0E
#define RESERVED                   0x0F
#define ENTER_SLEEP_MODE           0x10
#define EXIT_SLEEP_MODE            0x11
#define ENTER_PARTIAL_MODE         0x12
#define ENTER_NORMAL_MODE          0x13
#define EXIT_INVERT_MODE           0x20
#define ENTER_INVERT_MODE          0x21
#define SET_GAMMA_CURVE            0x26
#define SET_DISPLAY_OFF            0x28
#define SET_DISPLAY_ON             0x29
#define SET_COLUMN_ADDRESS         0x2A
#define SET_PAGE_ADDRESS           0x2B
#define WRITE_MEMORY_START         0x2C
#define READ_MEMORY_START          0x2E
#define SET_PARTIAL_AREA           0x30
#define SET_SCROLL_AREA            0x33
#define SET_TEAR_OFF               0x34
#define SET_TEAR_ON                0x35
#define SET_ADDRESS_MODE           0x36
#define SET_SCROLL_START           0x37
#define EXIT_IDLE_MODE             0x38
#define ENTER_IDLE_MODE            0x39
#define SET_PIXEL_FORMAT           0x3A
#define WRITE_MEMORY_CONTINUE      0x3C
#define READ_MEMORY_CONTINUE       0x3E
#define SET_TEAR_SCANLINE          0x44
#define GET_SCANLINE               0x45
#define READ_DDB                   0xA1
#define RESERVED_A8                0xA8
#define SET_LCD_MODE               0xB0
#define GET_LCD_MODE               0xB1
#define SET_HORI_PERIOD            0xB4
#define GET_HORI_PERIOD            0xB5
#define SET_VERT_PERIOD            0xB6
#define GET_VERT_PERIOD            0xB7
#define SET_GPIO_CONF              0xB8
#define GET_GPIO_CONF              0xB9
#define SET_GPIO_VALUE             0xBA
#define GET_GPIO_STATUS            0xBB
#define SET_POST_PROC              0xBC
#define GET_POST_PROC              0xBD
#define SET_PWM_CONF               0xBE
#define GET_PWM_CONF               0xBF
#define SET_LCD_GEN0               0xC0
#define GET_LCD_GEN0               0xC1
#define SET_LCD_GEN1               0xC2
#define GET_LCD_GEN1               0xC3
#define SET_LCD_GEN2               0xC4
#define GET_LCD_GEN2               0xC5
#define SET_LCD_GEN3               0xC6
#define GET_LCD_GEN3               0xC7
#define SET_GPIO0_ROP              0xC8
#define GET_GPIO0_ROP              0xC9
#define SET_GPIO1_ROP              0xCA
#define GET_GPIO1_ROP              0xCB
#define SET_GPIO2_ROP              0xCC
#define GET_GPIO2_ROP              0xCD
#define SET_GPIO3_ROP              0xCE
#define GET_GPIO3_ROP              0xCF
#define SET_DBC_CONF               0xD0
#define GET_DBC_CONF               0xD1
#define SET_DBC_TH                 0xD4
#define GET_DBC_TH                 0xD5
#define SET_PLL                     0xE0
#define SET_PLL_MN                  0xE2
#define GET_PLL_MN                  0xE3
#define GET_PLL_STATUS              0xE4
#define SET_DEEP_SLEEP              0xE5
#define SET_LSHIFT_FREQ             0xE6
#define GET_LSHIFT_FREQ             0xE7
#define SET_PIXEL_DATA_IF_FMT       0xF0
#define GET_PIXEL_DATA_IF_FMT       0xF1

#define SSD1963_DISABLE_PLL		0
#define SSD1963_ENABLE_PLL		1

#define SSD1963_DATA_INTERFACE_8_BIT					0x0
#define SSD1963_DATA_INTERFACE_12_BIT					0x1
#define SSD1963_DATA_INTERFACE_16_BIT_PACKED	0x2
#define SSD1963_DATA_INTERFACE_16_BIT_565			0x3
#define SSD1963_DATA_INTERFACE_18_BIT					0x4
#define SSD1963_DATA_INTERFACE_24_BIT					0x5
#define SSD1963_DATA_INTERFACE_9_BIT					0x6
#define SSD1963_DATA_INTERFACE_RESERVED				0x7

#define SSD1963_REFRESH_LEFT_RIGHT	0
#define SSD1963_REFRESH_RIGHT_LEFT	1

#define SSD1963_RGB_ORDER		0
#define SSD1963_BGR_ORDER		1

#define SSD1963_REFRESH_TOP_BOTTOM	0
#define SSD1963_REFRESH_BOTTOM_TOP	1

#define SSD1963_PAGECOLUMN_NORMAL		0
#define SSD1963_PAGECOLUMN_REVERSE	1

#define SSD1963_COLUMN_SC_EC		0
#define SSD1963_COLUMN_EC_SC		1

#define SSD1963_PAGE_SP_EP		0
#define SSD1963_PAGE_EP_SP		1

#define SSD1963_DISABLE_PLL_MN		0
#define SSD1963_ENABLE_PLL_MN			1

#define SSD1963_POLARITY_LOW		0
#define SSD1963_POLARITY_HIGH		1

#define SSD1963_RISING_EDGE		0
#define SSD1963_FALLING_EDGE	1

#define SSD1963_DITHERING	0
#define SSD1963_FRC				1

#define SSD1963_COLOR_DEPTH_ENHANCEMENT_DISABLE		0
#define SSD1963_COLOR_DEPTH_ENHANCEMENT_ENABLE		1

#define SSD1963_DATA_WIDTH_18_BIT		0
#define SSD1963_DATA_WIDTH_24_BIT		1

#define SSD1963_TFT_MODE					0
#define SSD1963_SERIAL_RGB				2
#define SSD1963_SERIAL_RGB_DUMMY 	3

#define SSD1963_HSYNC_VSYNC		0
#define SSD1963_TTL_MODE			1

#define SSD1963_RGB_SEQUENCE		0x0
#define SSD1963_RBG_SEQUENCE		0x1
#define SSD1963_GRB_SEQUENCE		0x2
#define SSD1963_GBR_SEQUENCE		0x3
#define SSD1963_BRG_SEQUENCE		0x4
#define SSD1963_BGR_SEQUENCE		0x5

#define SSD1963_PIXEL_FORMAT_3_BIT		0x1
#define SSD1963_PIXEL_FORMAT_8_BIT		0x2
#define SSD1963_PIXEL_FORMAT_12_BIT		0x3
#define SSD1963_PIXEL_FORMAT_16_BIT		0x5
#define SSD1963_PIXEL_FORMAT_18_BIT		0x6
#define SSD1963_PIXEL_FORMAT_24_BIT		0x7

typedef enum
{
  SSD1963_ERROR_NONE = 0
, SSD1963_ERROR_WRONG_PARAM
, SSD1963_ERROR_INIT
, SSD1963_ERROR_BUSY
, SSD1963_ERROR_WAIT
, SSD1963_ERROR_LOCK
, SSD1963_ERROR_UNLOCK
} SSD1963_Error_t;

//#pragma pack (1)

typedef __PACKED_UNION {
	
	struct{
		uint8_t FlipVertical: 1;							//Voltea la imagen verticalmente pero la memoria se mantiene igual
		uint8_t FlipHorizontal: 1;						//Voltea la imagen horizontalmente pero la memoria se mantiene igual
		uint8_t HorizontalRefreshOrder: 1;		//Controla el orden en el que se refresca la pantalla horizontalmente (De izquierda a derecha)
		uint8_t RGBOrder: 1;									//Controla el orden en el que se dibujan los colores RGB, 0: RGB, 1:BGR (Recomendado)
		uint8_t VerticalRefreshOrder: 1;			//Controla el orden en el que se refresca la pantalla verticalmente (De arriba abajo)
		uint8_t PageColumnOrder: 1;						//Realiza un espejo en ambos sentidos de los datos en la memoria no en el display
		uint8_t ColumnOrder: 1;								//Realiza un espejo en sentido vertical de los datos en la memoria no en el display
		uint8_t PageOrder: 1;									//Realiza un espejo en sentido horizontal de los datos en la memoria no en el display
	};
	uint8_t AddressModeByte;
	
} AddressModeType;

typedef __PACKED_STRUCT {
	
	uint8_t N;
	uint8_t M: 4;
	union{
		struct{
			uint8_t :2;
			uint8_t C: 1;														//Habilita el multiplicador y dividendo del PLL
		};
		uint8_t CByte;
	};	
	
} PLLMNType;

typedef __PACKED_STRUCT {
	
	union{
		struct{
			uint8_t LFRAMEPolarity: 1;
			uint8_t LLINEPolarity: 1;
			uint8_t LSHIFTPolarity: 1;
			uint8_t FRC: 1;
			uint8_t ColorDepthEnhancement: 1;
			uint8_t TFTDataWidth: 1;							// 18 o 24 bits
		};
		uint8_t A;
	};
	union{
		struct{
			uint8_t : 5;
			uint8_t TFTType: 2;
			uint8_t LCDPanelMode: 1;
		};
		uint8_t B;
	};
	
	union{
		struct{
			uint8_t HPSLow;
			uint8_t HPSHigh: 3;
		};
		uint16_t HPS;
	};
	
	union{
		struct{
			uint8_t VPSLow;
			uint8_t VPSHigh: 3;
		};
		uint16_t VPS;
	};

	union{
		struct{
			uint8_t OddLineRGBOrder: 3;				//Controla el orden RGB de las l�neas impares
			uint8_t EvenLineRGBOrder: 3;			//Controla el orden RGB de las l�neas pares
		};
		uint8_t G;
	};	
	
} LCDModeType;

typedef __PACKED_STRUCT {
	
	union{
		struct{
			uint8_t HTLow;
			uint8_t HTHigh: 3;
		};
		uint16_t HT;
	};
	
	union{
		struct{
			uint8_t HPSLow;
			uint8_t HPSHigh: 3;
		};
		uint16_t HPS;
	};
	
	uint8_t HPW;
	
	union{
		struct{
			uint8_t LPSLow;
			uint8_t LPSHigh: 3;
		};
		uint16_t LPS;
	};
	
	uint8_t LPSPP: 2;	
	
} HorizontalPeriodType;

typedef __PACKED_STRUCT {
	
	union{
		struct{
			uint8_t VTLow;
			uint8_t VTHigh: 3;
		};
		uint16_t VT;
	};
	
	union{
		struct{
			uint8_t VPSLow;
			uint8_t VPSHigh: 3;
		};
		uint16_t VPS;
	};
	
	uint8_t VPW;
	
	union{
		struct{
			uint8_t FPSLow;
			uint8_t FPSHigh: 3;
		};
		uint16_t FPS;
	};
		
} VerticalPeriodType;

typedef __PACKED_UNION {
	
	struct{
		uint8_t :4;
		uint8_t DisplayPixelFormat: 3;						//Establece el formato del pixel o cu�ntos bits por pixel (24 bit/pixel)			
	};
	uint8_t PixelFormatByte;	
	
} PixelFormatType;

typedef __PACKED_UNION {
	
	struct{
		uint8_t LCDCLow;
		uint8_t LCDCMid;
		uint8_t LCDCHigh: 4;
	};
	uint32_t LCDC;
	
} LSHIFTFrequencyType;

typedef __PACKED_UNION {
	
	struct{
		uint8_t SCLow;
		uint8_t SCHigh;
		uint8_t ECLow;
		uint8_t ECHigh;
	};
	struct{
		uint16_t SC;
		uint16_t EC;
	};	
	
} ColumnAddressType;

typedef __PACKED_UNION {
	
	struct{
		uint8_t SPLow;
		uint8_t SPHigh;
		uint8_t EPLow;
		uint8_t EPHigh;
	};
	struct{
		uint16_t SP;
		uint16_t EP;
	};	
	
} PageAddressType;

typedef __PACKED_STRUCT {
	
	bool PLL;
	
	uint8_t PixelDataInterface: 3;												//Establece el tipo de comunicaci�n 8,16,24, ... bits 
	
	AddressModeType AddressMode;

	PLLMNType PLLMN;// PLL Freq = N * CLK / M
	
	LCDModeType LCDMode;
	
	HorizontalPeriodType HorizontalPeriod;
	
	VerticalPeriodType VerticalPeriod;
	
	PixelFormatType PixelFormat;
	
	LSHIFTFrequencyType LSHIFTFrequency;
	
	ColumnAddressType ColumnAddress;
	
	PageAddressType PageAddress;
	
} SSD1963_ConfigsTypeDef;	

void SSD1963_DrawBlackScreen(void);
void SSD1963_Init(void);
void SSD1963_set_area(uint16_t x1, uint16_t y1, uint16_t x2, uint16_t y2);
void SSD1963_start_sending_data(void);
void SSD1963_set_pixel(uint8_t blue, uint8_t green, uint8_t red);
//void SSD1963_putf(char character);
//void my_flush_cb(lv_disp_t * disp, const lv_area_t * area, lv_color_t * color_p);
//void keyboard_read_cb(lv_indev_t * indev, lv_indev_data_t*data);
//char last_key(void);
//bool key_pressed(void);

#endif
