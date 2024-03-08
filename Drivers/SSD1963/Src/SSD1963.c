
#include "SSD1963.h"
#include "usb_host.h"
#include "usbh_hid.h"
#include <stdio.h>
#include <string.h>>

void SSD1963_SetConfigs(void);
void SSD1963_SendConfigs(void);
void SSD1963_EnablePLL(void);
void SSD1963_SendCmdData(uint8_t cmd, uint8_t * pData, uint8_t Length);
void SSD1963_SendCmd(uint8_t cmd);
void SSD1963_SendDataRS(uint8_t * pData, uint32_t Length);
int32_t SSD1963_GetTick(void);
void SSD1963_Delay(uint32_t Delay);
void SSD1963_WriteReg(volatile uint8_t *Reg, uint32_t Length);
void SSD1963_SendData(uint8_t *pData, uint32_t Length);

SSD1963_ConfigsTypeDef SSD1963_Configs;

/* Private functions ---------------------------------------------------------*/
/* USER CODE BEGIN PF */

/**
  * @brief  Dibuja una pantalla negra.
  * @param  Instance:     LCD Instance.
  */
void SSD1963_DrawTestScreen(void)
{
	SSD1963_SendCmd(0x2C);
	for(uint32_t i = 0;i < 480*272;i++)
	{
		SSD1963_SendDataRS((uint8_t []) {0x00,0x00,0xFF}, 3);
	}
	SSD1963_SendCmd(0x2C);
	for(uint32_t i = 0;i < 480*272;i++)
	{
		SSD1963_SendDataRS((uint8_t []) {0x00,0xFF,0x00}, 3);
	}
}

/**
  * @brief  Realiza las configuraciones principales de la TFT SSD1963
  */
void SSD1963_SetConfigs(void)
{
	SSD1963_Configs.PLL = true;
	
	SSD1963_Configs.PixelDataInterface = SSD1963_DATA_INTERFACE_8_BIT;
	
	SSD1963_Configs.AddressMode.FlipVertical = false;
	SSD1963_Configs.AddressMode.FlipHorizontal = false;
	SSD1963_Configs.AddressMode.HorizontalRefreshOrder = SSD1963_REFRESH_LEFT_RIGHT;
	SSD1963_Configs.AddressMode.RGBOrder = SSD1963_BGR_ORDER;
	SSD1963_Configs.AddressMode.VerticalRefreshOrder = SSD1963_REFRESH_TOP_BOTTOM;
	SSD1963_Configs.AddressMode.PageColumnOrder = SSD1963_PAGECOLUMN_NORMAL;
	SSD1963_Configs.AddressMode.ColumnOrder = SSD1963_COLUMN_SC_EC;
	SSD1963_Configs.AddressMode.PageOrder = SSD1963_PAGE_SP_EP;

	SSD1963_Configs.PLLMN.N = 78;
	SSD1963_Configs.PLLMN.M = 1;
	SSD1963_Configs.PLLMN.C = SSD1963_ENABLE_PLL_MN;
	
	SSD1963_Configs.LCDMode.LFRAMEPolarity = SSD1963_POLARITY_LOW;
	SSD1963_Configs.LCDMode.LLINEPolarity = SSD1963_POLARITY_LOW;
	SSD1963_Configs.LCDMode.LSHIFTPolarity = SSD1963_RISING_EDGE;
	SSD1963_Configs.LCDMode.FRC = SSD1963_DITHERING;
	SSD1963_Configs.LCDMode.ColorDepthEnhancement = false;
	SSD1963_Configs.LCDMode.TFTDataWidth = SSD1963_DATA_WIDTH_24_BIT;
	
	SSD1963_Configs.LCDMode.TFTType = SSD1963_TFT_MODE;
	SSD1963_Configs.LCDMode.LCDPanelMode = SSD1963_HSYNC_VSYNC;
	
	SSD1963_Configs.LCDMode.HPS = 0x027F;
	SSD1963_Configs.LCDMode.VPS = 0x01DF;
	
	SSD1963_Configs.LCDMode.OddLineRGBOrder = SSD1963_RBG_SEQUENCE;
	SSD1963_Configs.LCDMode.EvenLineRGBOrder = SSD1963_RBG_SEQUENCE;
	
	SSD1963_Configs.HorizontalPeriod.HT = 0x20AF;
	SSD1963_Configs.HorizontalPeriod.HPS = 0x0020;
	SSD1963_Configs.HorizontalPeriod.HPW = 0x07;
	SSD1963_Configs.HorizontalPeriod.LPS = 0x0000;
	SSD1963_Configs.HorizontalPeriod.LPSPP = 0x0;
	
	SSD1963_Configs.VerticalPeriod.VT = 0x01EF;
	SSD1963_Configs.VerticalPeriod.VPS = 0x0004;
	SSD1963_Configs.VerticalPeriod.VPW = 0x01;
	SSD1963_Configs.VerticalPeriod.FPS = 0x0000;
	
	SSD1963_Configs.PixelFormat.DisplayPixelFormat = SSD1963_PIXEL_FORMAT_24_BIT;
	
	SSD1963_Configs.LSHIFTFrequency.LCDC = 0x02FFFF;
	
	SSD1963_Configs.ColumnAddress.SC = 0x0000;
	SSD1963_Configs.ColumnAddress.EC = 0x01DF;
	
	SSD1963_Configs.PageAddress.SP = 0x0000;
	SSD1963_Configs.PageAddress.EP = 0x010F;	
	
	SSD1963_SendConfigs();
	
	SSD1963_SendCmd(0x29);
	SSD1963_Delay(10);

}

/**
  * @brief  Envia las configuraciones a la SSD1963
  * @retval 
  */
void SSD1963_SendConfigs(void)
{
	if(SSD1963_Configs.PLL)
		SSD1963_EnablePLL();
	
	SSD1963_SendCmdData(SET_PIXEL_DATA_IF_FMT, (uint8_t []) {SSD1963_Configs.PixelDataInterface}, 1);
	SSD1963_SendCmdData(SET_ADDRESS_MODE, (uint8_t []) {SSD1963_Configs.AddressMode.AddressModeByte}, 1);
	SSD1963_SendCmdData(SET_PLL_MN, (uint8_t []) {SSD1963_Configs.PLLMN.N, SSD1963_Configs.PLLMN.M, SSD1963_Configs.PLLMN.CByte}, 3);
	SSD1963_SendCmdData(SET_LCD_MODE, (uint8_t []) {SSD1963_Configs.LCDMode.A, 
													SSD1963_Configs.LCDMode.B, 
													SSD1963_Configs.LCDMode.HPSHigh,
													SSD1963_Configs.LCDMode.HPSLow,
													SSD1963_Configs.LCDMode.VPSHigh,
													SSD1963_Configs.LCDMode.VPSLow,
													SSD1963_Configs.LCDMode.G}, 7);
	SSD1963_SendCmdData(SET_HORI_PERIOD, (uint8_t []) {SSD1963_Configs.HorizontalPeriod.HTHigh, 
													SSD1963_Configs.HorizontalPeriod.HTLow, 
													SSD1963_Configs.HorizontalPeriod.HPSHigh,
													SSD1963_Configs.HorizontalPeriod.HPSLow,
													SSD1963_Configs.HorizontalPeriod.HPW,
													SSD1963_Configs.HorizontalPeriod.LPSHigh,
													SSD1963_Configs.HorizontalPeriod.LPSLow,
													SSD1963_Configs.HorizontalPeriod.LPSPP}, 8);	
	SSD1963_SendCmdData(SET_VERT_PERIOD, (uint8_t []) {SSD1963_Configs.VerticalPeriod.VTHigh, 
													SSD1963_Configs.VerticalPeriod.VTLow, 
													SSD1963_Configs.VerticalPeriod.VPSHigh,
													SSD1963_Configs.VerticalPeriod.VPSLow,
													SSD1963_Configs.VerticalPeriod.VPW,
													SSD1963_Configs.VerticalPeriod.FPSHigh,
													SSD1963_Configs.VerticalPeriod.FPSLow}, 7);
	SSD1963_SendCmdData(SET_PIXEL_FORMAT, (uint8_t []) {SSD1963_Configs.PixelFormat.PixelFormatByte}, 1);
	SSD1963_SendCmdData(SET_LSHIFT_FREQ, (uint8_t []) {SSD1963_Configs.LSHIFTFrequency.LCDCHigh,
													SSD1963_Configs.LSHIFTFrequency.LCDCMid,
													SSD1963_Configs.LSHIFTFrequency.LCDCLow}, 3);	
	SSD1963_SendCmdData(SET_COLUMN_ADDRESS, (uint8_t []) {SSD1963_Configs.ColumnAddress.SCHigh,
													SSD1963_Configs.ColumnAddress.SCLow,
													SSD1963_Configs.ColumnAddress.ECHigh,
													SSD1963_Configs.ColumnAddress.ECLow}, 4);		
	SSD1963_SendCmdData(SET_PAGE_ADDRESS, (uint8_t []) {SSD1963_Configs.PageAddress.SPHigh,
													SSD1963_Configs.PageAddress.SPLow,
													SSD1963_Configs.PageAddress.EPHigh,
													SSD1963_Configs.PageAddress.EPLow}, 4);		

}


/**
  * @brief  Realiza la secuencia de activaci�n del PLL
  * @retval 
  */
void SSD1963_EnablePLL(void)
{
	SSD1963_SendCmdData(SET_PLL, (uint8_t []) {0x01}, 1);
	SSD1963_Delay(1);
	SSD1963_SendCmdData(SET_PLL, (uint8_t []) {0x03}, 1);	
}

/**
  * @brief  Env�a el comando y los par�metros o datos
	* @param  cmd:  comando a enviar a SSD1963
  * @param  pData  pointer to data to write to LCD GRAM.
  * @param  Length length of data to write to LCD GRAM
  * @retval 
  */
void SSD1963_SendCmdData(uint8_t cmd, uint8_t * pData, uint8_t Length)
{
	SSD1963_SendCmd(cmd);
	SSD1963_SendDataRS(pData, Length);
}

/**
  * @brief  Env�a el comando a la SSD1963 poniendo en low RS
  * @param  cmd:  comando a enviar a SSD1963
  * @retval 
  */
void SSD1963_SendCmd(uint8_t cmd)
{
	SSD1963_Delay(1);
	SSD1963_RS_LOW();
	
	*(uint8_t *)(FMC_BANK1_REG) = cmd;
	__DSB();
}

/**
  * @brief  Env�a los datos a la SSD1963 poniendo en high RS
  * @param  pData  pointer to data to write to LCD GRAM.
  * @param  Length length of data to write to LCD GRAM
  * @retval 
  */
void SSD1963_SendDataRS(uint8_t * pData, uint32_t Length)
{
	SSD1963_RS_HIGH();
	SSD1963_SendData(pData, Length);
	//SSD1963_Delay(1);
}
/* USER CODE END PF */

/**
  * @brief  Provide a tick value in millisecond.
  * @retval int32_t:  Tick value.
  */
int32_t SSD1963_GetTick(void)
{
  uint32_t ret;
  ret = HAL_GetTick();
  return (int32_t)ret;
}

/**
  * @brief  LCD IO delay
  * @param  Delay:    Delay in ms
  * @retval 
  */
void SSD1963_Delay(uint32_t Delay)
{
  HAL_Delay(Delay);
}

/**
  * @brief  Writes register address.
  * @param  Reg: Register to be written
  */
__STATIC_INLINE void FMC_BANK1_WriteReg(uint8_t Reg)
{
    /* Write 8-bits Index, then write register */
    *(uint8_t *)(FMC_BANK1_REG) = Reg;
    __DSB();
}

/**
  * @brief  Writes register value.
  * @param  Data: Data to be written
  */
__STATIC_INLINE void FMC_BANK1_WriteData(uint8_t Data)
{
    /* Write 8-bits Reg */
    *(uint8_t *)(FMC_BANK1_MEM) = Data;
    __DSB();
}

/**
  * @brief  Reads register value.
  * @retval Read value
  */
__STATIC_INLINE uint8_t FMC_BANK1_ReadData(void)
{
    return *(uint8_t *)(FMC_BANK1_MEM);
}

/********************************* LINK LCD ***********************************/
/**
  * @brief  Initializes LCD low level.
  * @retval 
  */
void SSD1963_Init(void)
{
  /* USER CODE BEGIN SSD1963_Init 1 */
	
	SSD1963_RST_LOW();
	SSD1963_RS_HIGH();
	//SSD1963_Delay(1);
	SSD1963_RST_HIGH();
	SSD1963_Delay(1);
	
	SSD1963_SendCmd(SOFT_RESET);
	SSD1963_Delay(5);
  /* USER CODE END SSD1963_Init 1 */

  /* USER CODE BEGIN SSD1963_Init 2 */
	SSD1963_SetConfigs();
  /* USER CODE END SSD1963_Init 2 */
}

/**
  * @brief  Writes register on LCD register.
  * @param  Reg    Register to be written
  * @param  Length length of data be read from the LCD GRAM
  * @retval 
  */
void SSD1963_WriteReg(volatile uint8_t *Reg, uint32_t Length)
{
  /* There is only one register which is the command register */
  FMC_BANK1_WriteReg(*Reg);
}

/**
  * @brief  Send data to select the LCD GRAM.
  * @param  pData  pointer to data to write to LCD GRAM.
  * @param  Length length of data to write to LCD GRAM
  * @retval 
  */
void SSD1963_SendData(uint8_t *pData, uint32_t Length)
{
  uint32_t  i;

  for (i = 0; i < Length; i++)
  {
    FMC_BANK1_WriteData(pData[i]);
  }
}

/**
  * @brief  Set area on LCD
  * @param  x1 initial x coordinate
  * @param  y1 initial y coordinate
  * @param  x2 final x coordinate
  * @param  y2 final y coordinate
  * @retval
  */
void SSD1963_set_area(uint16_t x1, uint16_t y1, uint16_t x2, uint16_t y2)
{
	SSD1963_Configs.ColumnAddress.SC = x1;
	SSD1963_Configs.ColumnAddress.EC = x2;

	SSD1963_Configs.PageAddress.SP = y1;
	SSD1963_Configs.PageAddress.EP = y2;

	SSD1963_SendCmdData(SET_COLUMN_ADDRESS, (uint8_t []) {SSD1963_Configs.ColumnAddress.SCHigh,
													SSD1963_Configs.ColumnAddress.SCLow,
													SSD1963_Configs.ColumnAddress.ECHigh,
													SSD1963_Configs.ColumnAddress.ECLow}, 4);
	SSD1963_SendCmdData(SET_PAGE_ADDRESS, (uint8_t []) {SSD1963_Configs.PageAddress.SPHigh,
													SSD1963_Configs.PageAddress.SPLow,
													SSD1963_Configs.PageAddress.EPHigh,
													SSD1963_Configs.PageAddress.EPLow}, 4);
}

/**
  * @brief  Start sending data
  * @param  x1 initial x coordinate
  * @retval
  */
void SSD1963_start_sending_data(void)
{
	SSD1963_SendCmd(WRITE_MEMORY_START);
}

/**
  * @brief  Set pixel with color blue, green and red on LCD
  * @param  blue blue color
  * @param  green green color
  * @param  red red color
  * @retval
  */
void SSD1963_set_pixel(uint8_t blue, uint8_t green, uint8_t red)
{
	SSD1963_SendDataRS((uint8_t []) {blue, green, red}, 3);
}
