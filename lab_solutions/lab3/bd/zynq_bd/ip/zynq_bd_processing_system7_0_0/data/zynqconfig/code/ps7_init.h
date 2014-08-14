
/******************************************************************************
*
* (c) Copyright 2010-2012 Xilinx, Inc. All rights reserved.
*
* This file contains confidential and proprietary information of Xilinx, Inc.
* and is protected under U.S. and international copyright and other
* intellectual property laws.
*
* DISCLAIMER
* This disclaimer is not a license and does not grant any rights to the
* materials distributed herewith. Except as otherwise provided in a valid
* license issued to you by Xilinx, and to the maximum extent permitted by
* applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND WITH ALL
* FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES AND CONDITIONS, EXPRESS,
* IMPLIED, OR STATUTORY, INCLUDING BUT NOT LIMITED TO WARRANTIES OF
* MERCHANTABILITY, NON-INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE;
* and (2) Xilinx shall not be liable (whether in contract or tort, including
* negligence, or under any other theory of liability) for any loss or damage
* of any kind or nature related to, arising under or in connection with these
* materials, including for any direct, or any indirect, special, incidental,
* or consequential loss or damage (including loss of data, profits, goodwill,
* or any type of loss or damage suffered as a result of any action brought by
* a third party) even if such damage or loss was reasonably foreseeable or
* Xilinx had been advised of the possibility of the same.
*
* CRITICAL APPLICATIONS
* Xilinx products are not designed or intended to be fail-safe, or for use in
* any application requiring fail-safe performance, such as life-support or
* safety devices or systems, Class III medical devices, nuclear facilities,
* applications related to the deployment of airbags, or any other applications
* that could lead to death, personal injury, or severe property or
* environmental damage (individually and collectively, "Critical
* Applications"). Customer assumes the sole risk and liability of any use of
* Xilinx products in Critical Applications, subject only to applicable laws
* and regulations governing limitations on product liability.
*
* THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE
* AT ALL TIMES.
*
******************************************************************************/
/****************************************************************************/
/**
*
* @file ps7_init.h
*
* This file can be included in FSBL code
* to get prototype of ps7_init() function
* and error codes
*
*****************************************************************************/

#ifdef __cplusplus
extern "C" {
#endif


//typedef unsigned int  u32;


/** do we need to make this name more unique ? **/
//extern u32 ps7_init_data[];
extern unsigned long  * ps7_ddr_init_data;
extern unsigned long  * ps7_mio_init_data;
extern unsigned long  * ps7_pll_init_data;
extern unsigned long  * ps7_clock_init_data;
extern unsigned long  * ps7_peripherals_init_data;



#define OPCODE_EXIT       0U
#define OPCODE_CLEAR      1U
#define OPCODE_WRITE      2U
#define OPCODE_MASKWRITE  3U
#define OPCODE_MASKPOLL   4U
#define OPCODE_MASKDELAY  5U
#define NEW_PS7_ERR_CODE 1

/* Encode number of arguments in last nibble */
#define EMIT_EXIT()                   ( (OPCODE_EXIT      << 4 ) | 0 )
#define EMIT_CLEAR(addr)              ( (OPCODE_CLEAR     << 4 ) | 1 ) , addr
#define EMIT_WRITE(addr,val)          ( (OPCODE_WRITE     << 4 ) | 2 ) , addr, val
#define EMIT_MASKWRITE(addr,mask,val) ( (OPCODE_MASKWRITE << 4 ) | 3 ) , addr, mask, val
#define EMIT_MASKPOLL(addr,mask)      ( (OPCODE_MASKPOLL  << 4 ) | 2 ) , addr, mask
#define EMIT_MASKDELAY(addr,mask)      ( (OPCODE_MASKDELAY << 4 ) | 2 ) , addr, mask

/* Returns codes  of PS7_Init */
#define PS7_INIT_SUCCESS   (0)    // 0 is success in good old C
#define PS7_INIT_CORRUPT   (1)    // 1 the data is corrupted, and slcr reg are in corrupted state now
#define PS7_INIT_TIMEOUT   (2)    // 2 when a poll operation timed out
#define PS7_POLL_FAILED_DDR_INIT (3)    // 3 when a poll operation timed out for ddr init
#define PS7_POLL_FAILED_DMA      (4)    // 4 when a poll operation timed out for dma done bit
#define PS7_POLL_FAILED_PLL      (5)    // 5 when a poll operation timed out for pll sequence init


/* Silicon Versions */
#define PCW_SILICON_VERSION_1 0
#define PCW_SILICON_VERSION_2 1
#define PCW_SILICON_VERSION_3 2

/* This flag to be used by FSBL to check whether ps7_post_config() proc exixts */
#define PS7_POST_CONFIG

/* Freq of all peripherals */

#define APU_FREQ  % MHzToHz pcw_act_apu_peripheral_freqmhz %
#define DDR_FREQ  % MHzToHz pcw_uiparam_act_ddr_freq_mhz %
#define DCI_FREQ  % MHzToHz pcw_act_dci_peripheral_freqmhz %
#define QSPI_FREQ  % MHzToHz pcw_act_qspi_peripheral_freqmhz %
#define SMC_FREQ  % MHzToHz pcw_act_smc_peripheral_freqmhz %
#define ENET0_FREQ  % MHzToHz pcw_act_enet0_peripheral_freqmhz %
#define ENET1_FREQ  % MHzToHz pcw_act_enet1_peripheral_freqmhz %
#define USB0_FREQ  % MHzToHz pcw_act_usb0_peripheral_freqmhz %
#define USB1_FREQ  % MHzToHz pcw_act_usb1_peripheral_freqmhz %
#define SDIO_FREQ  % MHzToHz pcw_act_sdio_peripheral_freqmhz %
#define UART_FREQ  % MHzToHz pcw_act_uart_peripheral_freqmhz %
#define SPI_FREQ  % MHzToHz pcw_act_spi_peripheral_freqmhz %
#define I2C_FREQ  % MHzToHz pcw_apu_1x_peripheral_freqmhz%
#define WDT_FREQ  % MHzToHz pcw_act_wdt_peripheral_freqmhz %
#define TTC_FREQ  % MHzToHz pcw_act_ttc_peripheral_freqmhz %
#define CAN_FREQ  % MHzToHz pcw_act_can_peripheral_freqmhz %
#define PCAP_FREQ  % MHzToHz pcw_act_pcap_peripheral_freqmhz %
#define TPIU_FREQ  % MHzToHz pcw_act_tpiu_peripheral_freqmhz %
#define FPGA0_FREQ  % MHzToHz pcw_act_fpga0_peripheral_freqmhz %
#define FPGA1_FREQ  % MHzToHz pcw_act_fpga1_peripheral_freqmhz %
#define FPGA2_FREQ  % MHzToHz pcw_act_fpga2_peripheral_freqmhz %
#define FPGA3_FREQ  % MHzToHz pcw_act_fpga3_peripheral_freqmhz %
#define ECC_ENABLE  % PARAMEnable pcw_internal_ddr_ecc %

/* For delay calculation using global registers*/
#define SCU_GLOBAL_TIMER_COUNT_L32	0xF8F00200
#define SCU_GLOBAL_TIMER_COUNT_U32	0xF8F00204
#define SCU_GLOBAL_TIMER_CONTROL	0xF8F00208
#define SCU_GLOBAL_TIMER_AUTO_INC	0xF8F00218

int ps7_config( unsigned long*);
int ps7_init();
int ps7_post_config();
int ps7_debug();
char* getPS7MessageInfo(unsigned key);

void perf_start_clock(void);
void perf_disable_clock(void);
void perf_reset_clock(void);
void perf_reset_and_start_timer(); 
int get_number_of_cycles_for_delay(unsigned int delay); 
#ifdef __cplusplus
}
#endif

