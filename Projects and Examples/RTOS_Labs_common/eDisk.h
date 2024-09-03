/**
 * @file      eDisk.h
 * @brief     low-level SDC driver
 * @details   This version of the driver has been
 * configured to operate on the ST7735R, so that both
 * the SDC card and the LCD use the same SSI port,
 * but have different chip selects.
 * @version   V1.0
 * @author    Valvano
 * @copyright Copyright 2020 by Jonathan W. Valvano, valvano@mail.utexas.edu,
 * @warning   AS-IS
 * @note      For more information see  http://users.ece.utexas.edu/~valvano/
 * @date      Jan 12, 2020

 ******************************************************************************/

/*-----------------------------------------------------------------------
/  Low level disk interface modlue include file  R0.04a   (C)ChaN, 2007
/-----------------------------------------------------------------------
 * Modified by Jonathan Valvano to simplify usage in Lab 4

 */
#ifndef _DISKIO

/**
 * \brief set to 1 to enable disk write
 */
#define _USE_WRITE	1	
/**
 * \brief set to 1 to enable ioctl() 
 */
#define _USE_IOCTL	1	

typedef signed int		INT;
typedef unsigned int	UINT;

/* These types are assumed as 8-bit integer */
typedef signed char		CHAR;
typedef unsigned char	UCHAR;
typedef unsigned char	BYTE;

/* These types are assumed as 16-bit integer */
typedef signed short	SHORT;
typedef unsigned short	USHORT;
typedef unsigned short	WORD;

/* These types are assumed as 32-bit integer */
typedef signed long		LONG;
typedef unsigned long	ULONG;
typedef unsigned long	DWORD;


/**
 * \brief Boolean type
 */
typedef enum { FALSE = 0, TRUE } BOOL;

/**
 * \brief Status of Disk Functions
 */
typedef BYTE	DSTATUS;

/* Results of Disk Functions */
typedef enum {
	RES_OK = 0,		/* 0: Successful */
	RES_ERROR,		/* 1: R/W Error */
	RES_WRPRT,		/* 2: Write Protected */
	RES_NOTRDY,		/* 3: Not Ready */
	RES_PARERR		/* 4: Invalid Parameter */
} DRESULT;


/*---------------------------------------*/
/* Prototypes for disk control functions */

/**
 * @details  Turn on PLL.
 * Since this program initializes the disk, it must run with 
 * the disk periodic task operating.
<table>
<caption id="init">Return parameter</caption>
<tr><th>Return       <th>Value  <th>Meaning
<tr><td>RES_OK       <td>0x00   <td>Successful
<tr><td>STA_NOINIT   <td>0x01   <td>Drive not initialized
<tr><td>STA_NODISK   <td>0x02   <td>No medium in the drive
<tr><td>STA_PROTECT  <td>0x04   <td>Write protected
</table>
 * @param  drive number (only drive 0 is supported)
 * @return status (0 means OK)
 * @brief  Initialize the interface between microcontroller and the SD card.
 */
DSTATUS eDisk_Init(BYTE drive);

/**
 * @details  Checks the status of the secure digital care.
<table>
<caption id="status">Return parameter</caption>
<tr><th>Return       <th>Value  <th>Meaning
<tr><td>RES_OK       <td>0x00   <td>Successful
<tr><td>STA_NOINIT   <td>0x01   <td>Drive not initialized
<tr><td>STA_NODISK   <td>0x02   <td>No medium in the drive
<tr><td>STA_PROTECT  <td>0x04   <td>Write protected
</table>
 * @param  drive number (only drive 0 is supported)
 * @return status (0 means OK)
 * @brief  Check the status of the SD card.
 */
DSTATUS eDisk_Status (BYTE drive);



/**
 * @details  Read data from the SD card  (write to RAM)
<table>
<caption id="read">Return parameter</caption>
<tr><th>Return       <th>Value  <th>Meaning
<tr><td>RES_OK       <td>0x00   <td>Successful
<tr><td>RES_ERROR    <td>0x01   <td>R/W Error
<tr><td>RES_WRPRT    <td>0x02   <td>Write Protected
<tr><td>RES_NOTRDY   <td>0x03   <td>Not Ready
<tr><td>RES_PARERR   <td>0x04   <td>Invalid Parameter
</table>
 * @param  drv (only drive 0 is supported)
 * @param  buff pointer to an empty RAM buffer
 * @param  sector sector number of SD card to read: 0,1,2,...
 * @param  count number of sectors to read
 * @return result (0 means OK)
 * @brief  Read bytes from SD card.
 */
DRESULT eDisk_Read (
  BYTE drv,     // Physical drive number (0)
  BYTE *buff,   // Pointer to buffer to read data
  DWORD sector, // Start sector number (LBA)
  UINT count);  // Sector count (1..255)

/**
 * @details  Read one block from the SD card  (write to RAM)
<table>
<caption id="readBlock">Return parameter</caption>
<tr><th>Return       <th>Value  <th>Meaning
<tr><td>RES_OK       <td>0x00   <td>Successful
<tr><td>RES_ERROR    <td>0x01   <td>R/W Error
<tr><td>RES_WRPRT    <td>0x02   <td>Write Protected
<tr><td>RES_NOTRDY   <td>0x03   <td>Not Ready
<tr><td>RES_PARERR   <td>0x04   <td>Invalid Parameter
</table>
 * @param  buff pointer to an empty RAM buffer
 * @param  sector sector number of SD card to read: 0,1,2,...
 * @return result (0 means OK)
 * @brief  Read 512-byte block from SD card.
 */
DRESULT eDisk_ReadBlock (
    BYTE *buff,         /* Pointer to the data buffer to store read data */
    DWORD sector);      /* Start sector number (LBA) */

#if	_READONLY == 0


/**
 * @details  write data to the SD card  (read to RAM)
<table>
<caption id="write">Return parameter</caption>
<tr><th>Return       <th>Value  <th>Meaning
<tr><td>RES_OK       <td>0x00   <td>Successful
<tr><td>RES_ERROR    <td>0x01   <td>R/W Error
<tr><td>RES_WRPRT    <td>0x02   <td>Write Protected
<tr><td>RES_NOTRDY   <td>0x03   <td>Not Ready
<tr><td>RES_PARERR   <td>0x04   <td>Invalid Parameter
</table>
 * @param  drv (only drive 0 is supported)
 * @param  buff pointer to RAM buffer with data
 * @param  sector sector number of SD card to write: 0,1,2,...
 * @param  count number of sectors to write
 * @return result (0 means OK)
 * @brief  Write bytes to SD card.
 */
DRESULT eDisk_Write (
  BYTE drv,         // Physical drive number (0)
  const BYTE *buff, // Pointer to the data to be written
  DWORD sector,     // Start sector number (LBA)
  UINT count);      // Sector count (1..255)


/**
 * @details  Write one block to the SD card  (read to RAM)
<table>
<caption id="writeBlock">Return parameter</caption>
<tr><th>Return       <th>Value  <th>Meaning
<tr><td>RES_OK       <td>0x00   <td>Successful
<tr><td>RES_ERROR    <td>0x01   <td>R/W Error
<tr><td>RES_WRPRT    <td>0x02   <td>Write Protected
<tr><td>RES_NOTRDY   <td>0x03   <td>Not Ready
<tr><td>RES_PARERR   <td>0x04   <td>Invalid Parameter
</table>
 * @param  buff pointer to RAM buffer with 512 bytes of data
 * @param  sector sector number of SD card to write: 0,1,2,...
 * @return result (0 means OK)
 * @brief  Write 512-byte block from SD card.
 */
DRESULT eDisk_WriteBlock (
    const BYTE *buff,   /* Pointer to the data to be written */
    DWORD sector);      /* Start sector number (LBA) */


#endif
/**
 * @details  Enable SDC chip select, so it is an output
 * @param  none
 * @return none
 * @brief  Configure SDC chip select
 */
void CS_Init(void);      

/**
 * @details  This implements timeout functions
 * @param  none
 * @return none
 * @brief  This should be called every 10 ms.
 */
void disk_timerproc(void);
    
/**
 * @details  General purpose function for all disk I/O
 * @param  drv (only drive 0 is supported)
 * @param  cmd disk command
 * @param  buff pointer to RAM input/output data
 * @return result (0 means OK)
 * @brief  Disk input/output.
 */
DRESULT disk_ioctl (BYTE drv, BYTE cmd, void *buff);


/**
 * \brief Disk Status Bits (DSTATUS)
 */
#define STA_NOINIT		0x01	/* Drive not initialized */
#define STA_NODISK		0x02	/* No medium in the drive */
#define STA_PROTECT		0x04	/* Write protected */

/* Command code for disk_ioctrl fucntion */

/* Generic command (Used by FatFs) */
#define CTRL_SYNC			0	/* Complete pending write process (needed at _FS_READONLY == 0) */
#define GET_SECTOR_COUNT	1	/* Get media size (needed at _USE_MKFS == 1) */
#define GET_SECTOR_SIZE		2	/* Get sector size (needed at _MAX_SS != _MIN_SS) */
#define GET_BLOCK_SIZE		3	/* Get erase block size (needed at _USE_MKFS == 1) */
#define CTRL_TRIM			4	/* Inform device that the data on the block of sectors is no longer used (needed at _USE_TRIM == 1) */

/* Generic command (Not used by FatFs) */
#define CTRL_FORMAT			5	/* Create physical format on the media */
#define CTRL_POWER_IDLE		6	/* Put the device idle state */
#define CTRL_POWER_OFF		7	/* Put the device off state */
#define CTRL_LOCK			8	/* Lock media removal */
#define CTRL_UNLOCK			9	/* Unlock media removal */
#define CTRL_EJECT			10	/* Eject media */

/* MMC/SDC specific command (Not used by FatFs) */
#define MMC_GET_TYPE		50	/* Get card type */
#define MMC_GET_CSD			51	/* Get CSD */
#define MMC_GET_CID			52	/* Get CID */
#define MMC_GET_OCR			53	/* Get OCR */
#define MMC_GET_SDSTAT		54	/* Get SD status */

/* ATA/CF specific command (Not used by FatFs) */
#define ATA_GET_REV			60	/* Get F/W revision */
#define ATA_GET_MODEL		61	/* Get model name */
#define ATA_GET_SN			62	/* Get serial number */

/* MMC card type flags (MMC_GET_TYPE) */
#define CT_MMC		0x01		/* MMC ver 3 */
#define CT_SD1		0x02		/* SD ver 1 */
#define CT_SD2		0x04		/* SD ver 2 */
#define CT_SDC		(CT_SD1|CT_SD2)	/* SD */
#define CT_BLOCK	0x08		/* Block addressing */


#define _DISKIO
#endif
