--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: M.53d
--  \   \         Application: netgen
--  /   /         Filename: VGA16BITS_translate.vhd
-- /___/   /\     Timestamp: Fri Aug 05 04:45:08 2011
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -rpw 100 -tpw 0 -ar Structure -tm VGA16BITS -w -dir netgen/translate -ofmt vhdl -sim VGA16BITS.ngd VGA16BITS_translate.vhd 
-- Device	: 3s1200efg320-4
-- Input file	: VGA16BITS.ngd
-- Output file	: E:\VHDL\PROGRAMAS\APRENDIZAJE\__MY__NEXIS2\VGA\VGA16BITS\VHDL\netgen\translate\VGA16BITS_translate.vhd
-- # of Entities	: 1
-- Design Name	: VGA16BITS
-- Xilinx	: C:\Xilinx\12.1\ISE_DS\ISE
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity VGA16BITS is
  port (
    ST_RP : out STD_LOGIC; 
    CLK50M : in STD_LOGIC := 'X'; 
    POINT_OUT : out STD_LOGIC; 
    BTN : in STD_LOGIC := 'X'; 
    MT_CE : out STD_LOGIC; 
    PWAIT : out STD_LOGIC; 
    PWRITE : in STD_LOGIC := 'X'; 
    HS : out STD_LOGIC; 
    DSTB : in STD_LOGIC := 'X'; 
    MT_CLK : out STD_LOGIC; 
    ASTB : in STD_LOGIC := 'X'; 
    MT_LB : out STD_LOGIC; 
    KBRD_CLK_PIN : in STD_LOGIC := 'X'; 
    OE : out STD_LOGIC; 
    ST_CE : out STD_LOGIC; 
    MT_UB : out STD_LOGIC; 
    WE : out STD_LOGIC; 
    VS : out STD_LOGIC; 
    KBRD_DATA_PIN : in STD_LOGIC := 'X'; 
    PDB : inout STD_LOGIC_VECTOR ( 7 downto 0 ); 
    DATA : inout STD_LOGIC_VECTOR ( 15 downto 0 ); 
    DPL_SEG : out STD_LOGIC_VECTOR ( 6 downto 0 ); 
    ADDR : out STD_LOGIC_VECTOR ( 22 downto 0 ); 
    BLUE : out STD_LOGIC_VECTOR ( 1 downto 0 ); 
    GRN : out STD_LOGIC_VECTOR ( 2 downto 0 ); 
    RED : out STD_LOGIC_VECTOR ( 2 downto 0 ); 
    DPL_ENABLE : out STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end VGA16BITS;

architecture Structure of VGA16BITS is
  signal ABORT_5_cmp_eq0000 : STD_LOGIC; 
  signal ABORT_5_mux0000_119 : STD_LOGIC; 
  signal ABORT_5_not0001 : STD_LOGIC; 
  signal ABORT_5_not000112_121 : STD_LOGIC; 
  signal ABORT_5_not000120_122 : STD_LOGIC; 
  signal ADDR_0_OBUF_146 : STD_LOGIC; 
  signal ADDR_10_OBUF_147 : STD_LOGIC; 
  signal ADDR_11_OBUF_148 : STD_LOGIC; 
  signal ADDR_12_OBUF_149 : STD_LOGIC; 
  signal ADDR_13_OBUF_150 : STD_LOGIC; 
  signal ADDR_14_OBUF_151 : STD_LOGIC; 
  signal ADDR_15_OBUF_152 : STD_LOGIC; 
  signal ADDR_16_OBUF_153 : STD_LOGIC; 
  signal ADDR_17_OBUF_154 : STD_LOGIC; 
  signal ADDR_18_OBUF_155 : STD_LOGIC; 
  signal ADDR_19_OBUF_156 : STD_LOGIC; 
  signal ADDR_1_OBUF_157 : STD_LOGIC; 
  signal ADDR_20_OBUF_158 : STD_LOGIC; 
  signal ADDR_21_OBUF_159 : STD_LOGIC; 
  signal ADDR_22_OBUF_160 : STD_LOGIC; 
  signal ADDR_2_OBUF_161 : STD_LOGIC; 
  signal ADDR_3_OBUF_162 : STD_LOGIC; 
  signal ADDR_4_OBUF_163 : STD_LOGIC; 
  signal ADDR_5_OBUF_164 : STD_LOGIC; 
  signal ADDR_6_OBUF_165 : STD_LOGIC; 
  signal ADDR_7_OBUF_166 : STD_LOGIC; 
  signal ADDR_8_OBUF_167 : STD_LOGIC; 
  signal ADDR_9_OBUF_168 : STD_LOGIC; 
  signal ALT_0_not0001 : STD_LOGIC; 
  signal ASTB_IBUF_172 : STD_LOGIC; 
  signal BLUE_0_OBUF_175 : STD_LOGIC; 
  signal BLUE_1_OBUF_176 : STD_LOGIC; 
  signal BTN_IBUF_178 : STD_LOGIC; 
  signal CHARBIT_ACT : STD_LOGIC; 
  signal CHARBIT_ACT106_180 : STD_LOGIC; 
  signal CHARBIT_ACT142_181 : STD_LOGIC; 
  signal CHARBIT_ACT183 : STD_LOGIC; 
  signal CHARBIT_ACT1831_183 : STD_LOGIC; 
  signal CHARBIT_ACT210 : STD_LOGIC; 
  signal CHARBIT_ACT2101_185 : STD_LOGIC; 
  signal CHARBIT_ACT2102_186 : STD_LOGIC; 
  signal CHARBIT_ACT246_187 : STD_LOGIC; 
  signal CHARBIT_ACT55_188 : STD_LOGIC; 
  signal CHARBIT_ACT55_SW0 : STD_LOGIC; 
  signal CHARBIT_ACT55_SW01_190 : STD_LOGIC; 
  signal CHARBIT_ACT76_191 : STD_LOGIC; 
  signal CLK50M_IBUFG_193 : STD_LOGIC; 
  signal CLK50M_IBUFG1 : STD_LOGIC; 
  signal CNTDPL_or0000 : STD_LOGIC; 
  signal CNTPROCCES_not0001 : STD_LOGIC; 
  signal CNTPRSTEP_mux0000_0_56_230 : STD_LOGIC; 
  signal CNTPRSTEP_mux0000_0_7_231 : STD_LOGIC; 
  signal CNTPRSTEP_mux0000_1_19_233 : STD_LOGIC; 
  signal CNTPRSTEP_mux0000_1_4_234 : STD_LOGIC; 
  signal CNTPRSTEP_not0001 : STD_LOGIC; 
  signal CNTPRSTEP_not000111_236 : STD_LOGIC; 
  signal CNTPRSTEP_not000135_237 : STD_LOGIC; 
  signal CNTPRSTEP_not000143_238 : STD_LOGIC; 
  signal CNTPRSTEP_not000156_239 : STD_LOGIC; 
  signal CNTPRSTEP_not000181_240 : STD_LOGIC; 
  signal CNTPRSTEP_not00019_241 : STD_LOGIC; 
  signal COUNTER_RAM_USB_cmp_eq0000 : STD_LOGIC; 
  signal COUNTER_RAM_USB_not0001 : STD_LOGIC; 
  signal COUNTER_RAM_USB_not000115_313 : STD_LOGIC; 
  signal COUNTER_RAM_USB_not00012_314 : STD_LOGIC; 
  signal COUNTER_RAM_USB_not000123_315 : STD_LOGIC; 
  signal CTRL_0_not0001_317 : STD_LOGIC; 
  signal DATAS_not0001_inv : STD_LOGIC; 
  signal DATA_0_IOBUF : STD_LOGIC; 
  signal DATA_10_IOBUF : STD_LOGIC; 
  signal DATA_11_IOBUF : STD_LOGIC; 
  signal DATA_12_IOBUF : STD_LOGIC; 
  signal DATA_13_IOBUF : STD_LOGIC; 
  signal DATA_14_IOBUF : STD_LOGIC; 
  signal DATA_15_IOBUF : STD_LOGIC; 
  signal DATA_1_IOBUF : STD_LOGIC; 
  signal DATA_2_IOBUF : STD_LOGIC; 
  signal DATA_3_IOBUF : STD_LOGIC; 
  signal DATA_4_IOBUF : STD_LOGIC; 
  signal DATA_5_IOBUF : STD_LOGIC; 
  signal DATA_6_IOBUF : STD_LOGIC; 
  signal DATA_7_IOBUF : STD_LOGIC; 
  signal DATA_8_IOBUF : STD_LOGIC; 
  signal DATA_9_IOBUF : STD_LOGIC; 
  signal DELAYFLASH_not0001 : STD_LOGIC; 
  signal DELAYFLASH_or0000 : STD_LOGIC; 
  signal DELAY_PLUS_MEMORY_mux0001_0_1_377 : STD_LOGIC; 
  signal DELAY_PLUS_MEMORY_not0001_380 : STD_LOGIC; 
  signal DPL_ENABLE_0_OBUF_385 : STD_LOGIC; 
  signal DPL_ENABLE_1_OBUF_386 : STD_LOGIC; 
  signal DPL_ENABLE_2_OBUF_387 : STD_LOGIC; 
  signal DPL_ENABLE_3_OBUF_388 : STD_LOGIC; 
  signal DPL_SEG_0_OBUF_396 : STD_LOGIC; 
  signal DPL_SEG_3_OBUF_397 : STD_LOGIC; 
  signal DSTB_IBUF_399 : STD_LOGIC; 
  signal ENABLE_KB : STD_LOGIC; 
  signal ERASEFLASH_0_mux0000 : STD_LOGIC; 
  signal ERASEFLASH_SIGNAL_0_and0002 : STD_LOGIC; 
  signal ERASEFLASH_SIGNAL_0_not0001_405 : STD_LOGIC; 
  signal ERASE_RAM_0_and0010 : STD_LOGIC; 
  signal ERASE_RAM_0_cmp_eq0000 : STD_LOGIC; 
  signal ERASE_RAM_0_mux0000 : STD_LOGIC; 
  signal ERASE_RAM_0_not0001 : STD_LOGIC; 
  signal ERASE_RAM_inv : STD_LOGIC; 
  signal GRN_0_OBUF_415 : STD_LOGIC; 
  signal GRN_1_OBUF_416 : STD_LOGIC; 
  signal GRN_2_OBUF_417 : STD_LOGIC; 
  signal HS_OBUF_419 : STD_LOGIC; 
  signal IMPOS_16_mux0004 : STD_LOGIC; 
  signal IMPOS_16_mux0004121_422 : STD_LOGIC; 
  signal IMPOS_16_mux00041211_423 : STD_LOGIC; 
  signal IMPOS_16_mux000413_424 : STD_LOGIC; 
  signal IMPOS_16_mux0004131_425 : STD_LOGIC; 
  signal IMPOS_16_mux00043_426 : STD_LOGIC; 
  signal IMPOS_16_mux0004636_427 : STD_LOGIC; 
  signal IMPOS_16_mux0004647_428 : STD_LOGIC; 
  signal IMPOS_16_mux0004670_429 : STD_LOGIC; 
  signal IMPOS_17_mux0004 : STD_LOGIC; 
  signal IMPOS_17_mux000450_432 : STD_LOGIC; 
  signal IMPOS_17_mux000475_433 : STD_LOGIC; 
  signal IMPOS_17_mux000479_434 : STD_LOGIC; 
  signal IMPOS_18_mux0004 : STD_LOGIC; 
  signal IMPOS_18_mux0004113_437 : STD_LOGIC; 
  signal IMPOS_18_mux000417_438 : STD_LOGIC; 
  signal IMPOS_18_mux000456_439 : STD_LOGIC; 
  signal IMPOS_18_mux000469_440 : STD_LOGIC; 
  signal IMPOS_18_mux000489_441 : STD_LOGIC; 
  signal IMPOS_19_and0000 : STD_LOGIC; 
  signal IMPOS_19_and0017 : STD_LOGIC; 
  signal IMPOS_19_and0018 : STD_LOGIC; 
  signal IMPOS_19_and0022 : STD_LOGIC; 
  signal IMPOS_19_cmp_eq0001 : STD_LOGIC; 
  signal IMPOS_19_cmp_eq00017108_448 : STD_LOGIC; 
  signal IMPOS_19_cmp_eq0001726_449 : STD_LOGIC; 
  signal IMPOS_19_cmp_eq0001753_450 : STD_LOGIC; 
  signal IMPOS_19_cmp_eq0001792_451 : STD_LOGIC; 
  signal IMPOS_19_cmp_eq0002 : STD_LOGIC; 
  signal IMPOS_19_cmp_eq0003 : STD_LOGIC; 
  signal IMPOS_19_cmp_eq0003131_454 : STD_LOGIC; 
  signal IMPOS_19_cmp_eq0004 : STD_LOGIC; 
  signal IMPOS_19_cmp_eq0006 : STD_LOGIC; 
  signal IMPOS_19_cmp_eq000610_457 : STD_LOGIC; 
  signal IMPOS_19_cmp_eq00064_458 : STD_LOGIC; 
  signal IMPOS_19_cmp_eq0008 : STD_LOGIC; 
  signal IMPOS_19_cmp_eq0012 : STD_LOGIC; 
  signal IMPOS_19_cmp_eq0013 : STD_LOGIC; 
  signal IMPOS_19_cmp_eq0014_462 : STD_LOGIC; 
  signal IMPOS_19_mux0004 : STD_LOGIC; 
  signal IMPOS_19_mux000413_464 : STD_LOGIC; 
  signal IMPOS_19_mux000422_465 : STD_LOGIC; 
  signal IMPOS_19_not0001 : STD_LOGIC; 
  signal IMPOS_19_not0001114_467 : STD_LOGIC; 
  signal IMPOS_19_not0001121_468 : STD_LOGIC; 
  signal IMPOS_19_not0001126_469 : STD_LOGIC; 
  signal IMPOS_19_not00011311_470 : STD_LOGIC; 
  signal IMPOS_19_not000119_471 : STD_LOGIC; 
  signal IMPOS_19_or0003 : STD_LOGIC; 
  signal IMPOS_19_or0017 : STD_LOGIC; 
  signal IMPOS_20_mux0004 : STD_LOGIC; 
  signal IMPOS_20_mux000413_476 : STD_LOGIC; 
  signal IMPOS_20_mux000422_477 : STD_LOGIC; 
  signal IMPOS_20_mux000444_478 : STD_LOGIC; 
  signal IMPOS_21_mux0004 : STD_LOGIC; 
  signal IMPOS_21_mux000413_481 : STD_LOGIC; 
  signal IMPOS_21_mux000422_482 : STD_LOGIC; 
  signal IMPOS_21_mux000444_483 : STD_LOGIC; 
  signal IMPOS_22_mux0004 : STD_LOGIC; 
  signal IMPOS_22_mux0004101_491 : STD_LOGIC; 
  signal IMPOS_22_mux0004112_492 : STD_LOGIC; 
  signal IMPOS_22_mux000426_493 : STD_LOGIC; 
  signal IMPOS_22_mux000438_494 : STD_LOGIC; 
  signal IMPOS_22_mux000444_495 : STD_LOGIC; 
  signal IMPOS_22_mux000473_496 : STD_LOGIC; 
  signal IMPOS_BLOCKERASE_not0001 : STD_LOGIC; 
  signal IM_16_8_BITS_0_and0004 : STD_LOGIC; 
  signal IM_16_8_BITS_0_mux0000 : STD_LOGIC; 
  signal IM_16_8_BITS_0_mux00001_508 : STD_LOGIC; 
  signal IM_16_8_BITS_0_mux0000132_509 : STD_LOGIC; 
  signal IM_16_8_BITS_0_mux000014_510 : STD_LOGIC; 
  signal IM_16_8_BITS_0_mux0000152_511 : STD_LOGIC; 
  signal IM_16_8_BITS_0_mux0000160_512 : STD_LOGIC; 
  signal IM_16_8_BITS_0_mux0000186_513 : STD_LOGIC; 
  signal IM_16_8_BITS_0_mux000030_514 : STD_LOGIC; 
  signal IM_16_8_BITS_0_mux000038_515 : STD_LOGIC; 
  signal IM_16_8_BITS_0_mux000049_516 : STD_LOGIC; 
  signal IM_16_8_BITS_0_mux000064_517 : STD_LOGIC; 
  signal IM_16_8_BITS_0_mux000091_518 : STD_LOGIC; 
  signal IM_16_8_BITS_0_not0001 : STD_LOGIC; 
  signal IM_16_8_BITS_0_not000115_520 : STD_LOGIC; 
  signal IM_16_8_BITS_0_not00012_521 : STD_LOGIC; 
  signal INPRES_0_and0000 : STD_LOGIC; 
  signal INPRES_0_mux0000 : STD_LOGIC; 
  signal INPRES_0_mux000010_525 : STD_LOGIC; 
  signal INPRES_0_mux000018_526 : STD_LOGIC; 
  signal INPRES_0_mux00005_527 : STD_LOGIC; 
  signal INPRES_0_not0001 : STD_LOGIC; 
  signal NlwRenamedSig_IO_KBRD_CLK_PIN : STD_LOGIC; 
  signal KBRD_CLK_PIN_IBUF_530 : STD_LOGIC; 
  signal NlwRenamedSig_IO_KBRD_DATA_PIN : STD_LOGIC; 
  signal KBRD_DATA_PIN_IBUF_532 : STD_LOGIC; 
  signal KBRD_DRIVER_CLKOUT : STD_LOGIC; 
  signal KBRD_DRIVER_CLK_P_534 : STD_LOGIC; 
  signal KBRD_DRIVER_COUNTER_KB_mux0002_0_1_540 : STD_LOGIC; 
  signal KBRD_DRIVER_COUNTER_KB_mux0002_1_1_542 : STD_LOGIC; 
  signal KBRD_DRIVER_COUNTER_KB_mux0002_3_1_545 : STD_LOGIC; 
  signal KBRD_DRIVER_E0_0_cmp_eq0000 : STD_LOGIC; 
  signal KBRD_DRIVER_E0_0_not0001 : STD_LOGIC; 
  signal KBRD_DRIVER_KBRD_DATA_S_0_and0000 : STD_LOGIC; 
  signal KBRD_DRIVER_KBRD_DATA_S_1_and0000 : STD_LOGIC; 
  signal KBRD_DRIVER_KBRD_DATA_S_2_and0000 : STD_LOGIC; 
  signal KBRD_DRIVER_KBRD_DATA_S_3_and0000 : STD_LOGIC; 
  signal KBRD_DRIVER_KBRD_DATA_S_4_and0000 : STD_LOGIC; 
  signal KBRD_DRIVER_KBRD_DATA_S_5_and0000 : STD_LOGIC; 
  signal KBRD_DRIVER_KBRD_DATA_S_6_and0000 : STD_LOGIC; 
  signal KBRD_DRIVER_KBRD_DATA_S_7_and0000 : STD_LOGIC; 
  signal KBRD_DRIVER_KBRD_DATA_and0000 : STD_LOGIC; 
  signal KBRD_DRIVER_KBRD_DATA_and000018 : STD_LOGIC; 
  signal KBRD_DRIVER_KBRD_DATA_and0000181_575 : STD_LOGIC; 
  signal KBRD_DRIVER_KEY_DOWN_0_and0000 : STD_LOGIC; 
  signal KBRD_DRIVER_KEY_DOWN_0_mux0000 : STD_LOGIC; 
  signal KBRD_DRIVER_KEY_DOWN_0_mux000034 : STD_LOGIC; 
  signal KBRD_DRIVER_KEY_DOWN_0_mux0000341_580 : STD_LOGIC; 
  signal KBRD_DRIVER_KEY_DOWN_0_mux0000342_581 : STD_LOGIC; 
  signal KBRD_DRIVER_KEY_DOWN_0_mux000069_582 : STD_LOGIC; 
  signal KBRD_DRIVER_KEY_DOWN_0_or0000 : STD_LOGIC; 
  signal KBRD_DRIVER_KEY_UP_0_mux0000_585 : STD_LOGIC; 
  signal KBRD_DRIVER_N11 : STD_LOGIC; 
  signal KBRD_DRIVER_N2 : STD_LOGIC; 
  signal KBRD_DRIVER_N4 : STD_LOGIC; 
  signal KBRD_DRIVER_N8 : STD_LOGIC; 
  signal KBRD_DRIVER_PAR_OK_590 : STD_LOGIC; 
  signal KBRD_DRIVER_PAR_OK_mux0000 : STD_LOGIC; 
  signal KBRD_DRIVER_WT_KB_0_mux0000_593 : STD_LOGIC; 
  signal LOADFLASH_0_mux0000_595 : STD_LOGIC; 
  signal LOADFLASH_0_not0001 : STD_LOGIC; 
  signal LOADFLASH_0_not000115_597 : STD_LOGIC; 
  signal LOADFLASH_0_not000121_598 : STD_LOGIC; 
  signal LOADFLASH_0_not000135_599 : STD_LOGIC; 
  signal LOADFLASH_0_not000138_600 : STD_LOGIC; 
  signal LOADFLASH_0_not000176_601 : STD_LOGIC; 
  signal LOAD_DATA_0_mux0000 : STD_LOGIC; 
  signal MNGDPL_cmp_eq0000 : STD_LOGIC; 
  signal MT_CE_SIGNAL_624 : STD_LOGIC; 
  signal MT_CE_SIGNAL_mux0000 : STD_LOGIC; 
  signal MT_CE_SIGNAL_mux000015_626 : STD_LOGIC; 
  signal MT_CE_SIGNAL_not0001 : STD_LOGIC; 
  signal MT_CE_SIGNAL_not00015 : STD_LOGIC; 
  signal Madd_COUNTER_RAM_USB_add0000_cy_10_rt_634 : STD_LOGIC; 
  signal Madd_COUNTER_RAM_USB_add0000_cy_11_rt_636 : STD_LOGIC; 
  signal Madd_COUNTER_RAM_USB_add0000_cy_12_rt_638 : STD_LOGIC; 
  signal Madd_COUNTER_RAM_USB_add0000_cy_13_rt_640 : STD_LOGIC; 
  signal Madd_COUNTER_RAM_USB_add0000_cy_14_rt_642 : STD_LOGIC; 
  signal Madd_COUNTER_RAM_USB_add0000_cy_15_rt_644 : STD_LOGIC; 
  signal Madd_COUNTER_RAM_USB_add0000_cy_16_rt_646 : STD_LOGIC; 
  signal Madd_COUNTER_RAM_USB_add0000_cy_17_rt_648 : STD_LOGIC; 
  signal Madd_COUNTER_RAM_USB_add0000_cy_1_rt_650 : STD_LOGIC; 
  signal Madd_COUNTER_RAM_USB_add0000_cy_2_rt_652 : STD_LOGIC; 
  signal Madd_COUNTER_RAM_USB_add0000_cy_3_rt_654 : STD_LOGIC; 
  signal Madd_COUNTER_RAM_USB_add0000_cy_4_rt_656 : STD_LOGIC; 
  signal Madd_COUNTER_RAM_USB_add0000_cy_5_rt_658 : STD_LOGIC; 
  signal Madd_COUNTER_RAM_USB_add0000_cy_6_rt_660 : STD_LOGIC; 
  signal Madd_COUNTER_RAM_USB_add0000_cy_7_rt_662 : STD_LOGIC; 
  signal Madd_COUNTER_RAM_USB_add0000_cy_8_rt_664 : STD_LOGIC; 
  signal Madd_COUNTER_RAM_USB_add0000_cy_9_rt_666 : STD_LOGIC; 
  signal Madd_COUNTER_RAM_USB_add0000_xor_18_rt_668 : STD_LOGIC; 
  signal Madd_DELAYFLASH_add0000_cy_1_rt_671 : STD_LOGIC; 
  signal Madd_DELAYFLASH_add0000_cy_2_rt_673 : STD_LOGIC; 
  signal Madd_DELAYFLASH_add0000_cy_3_rt_675 : STD_LOGIC; 
  signal Madd_DELAYFLASH_add0000_cy_4_rt_677 : STD_LOGIC; 
  signal Madd_DELAYFLASH_add0000_cy_5_rt_679 : STD_LOGIC; 
  signal Madd_DELAYFLASH_add0000_cy_6_rt_681 : STD_LOGIC; 
  signal Madd_DELAYFLASH_add0000_cy_7_rt_683 : STD_LOGIC; 
  signal Madd_DELAYFLASH_add0000_cy_8_rt_685 : STD_LOGIC; 
  signal Madd_DELAYFLASH_add0000_xor_9_rt_687 : STD_LOGIC; 
  signal Madd_IMPOS_22_16_add0000_cy_1_Q : STD_LOGIC; 
  signal Madd_IMPOS_22_16_add0000_cy_4_Q : STD_LOGIC; 
  signal Madd_POS_MEMORY_NAT_cy_19_rt_699 : STD_LOGIC; 
  signal Madd_POS_MEMORY_NAT_cy_20_rt_701 : STD_LOGIC; 
  signal Madd_POS_MEMORY_NAT_cy_21_rt_703 : STD_LOGIC; 
  signal Madd_POS_MEMORY_NAT_xor_22_rt_707 : STD_LOGIC; 
  signal Mcount_CNTDPL_cy_10_rt_710 : STD_LOGIC; 
  signal Mcount_CNTDPL_cy_11_rt_712 : STD_LOGIC; 
  signal Mcount_CNTDPL_cy_12_rt_714 : STD_LOGIC; 
  signal Mcount_CNTDPL_cy_13_rt_716 : STD_LOGIC; 
  signal Mcount_CNTDPL_cy_14_rt_718 : STD_LOGIC; 
  signal Mcount_CNTDPL_cy_15_rt_720 : STD_LOGIC; 
  signal Mcount_CNTDPL_cy_16_rt_722 : STD_LOGIC; 
  signal Mcount_CNTDPL_cy_17_rt_724 : STD_LOGIC; 
  signal Mcount_CNTDPL_cy_18_rt_726 : STD_LOGIC; 
  signal Mcount_CNTDPL_cy_19_rt_728 : STD_LOGIC; 
  signal Mcount_CNTDPL_cy_1_rt_730 : STD_LOGIC; 
  signal Mcount_CNTDPL_cy_20_rt_732 : STD_LOGIC; 
  signal Mcount_CNTDPL_cy_21_rt_734 : STD_LOGIC; 
  signal Mcount_CNTDPL_cy_22_rt_736 : STD_LOGIC; 
  signal Mcount_CNTDPL_cy_23_rt_738 : STD_LOGIC; 
  signal Mcount_CNTDPL_cy_24_rt_740 : STD_LOGIC; 
  signal Mcount_CNTDPL_cy_2_rt_742 : STD_LOGIC; 
  signal Mcount_CNTDPL_cy_3_rt_744 : STD_LOGIC; 
  signal Mcount_CNTDPL_cy_4_rt_746 : STD_LOGIC; 
  signal Mcount_CNTDPL_cy_5_rt_748 : STD_LOGIC; 
  signal Mcount_CNTDPL_cy_6_rt_750 : STD_LOGIC; 
  signal Mcount_CNTDPL_cy_7_rt_752 : STD_LOGIC; 
  signal Mcount_CNTDPL_cy_8_rt_754 : STD_LOGIC; 
  signal Mcount_CNTDPL_cy_9_rt_756 : STD_LOGIC; 
  signal Mcount_CNTDPL_xor_25_rt_758 : STD_LOGIC; 
  signal Mcount_CNTPROCCES : STD_LOGIC; 
  signal Mcount_CNTPROCCES1 : STD_LOGIC; 
  signal Mcount_CNTPROCCES11_761 : STD_LOGIC; 
  signal Mcount_CNTPROCCES12_762 : STD_LOGIC; 
  signal Mcount_CNTPROCCES2 : STD_LOGIC; 
  signal Mcount_CNTPROCCES3 : STD_LOGIC; 
  signal Mcount_CNTPROCCES31_765 : STD_LOGIC; 
  signal Mcount_CNTPROCCES32_766 : STD_LOGIC; 
  signal Mcount_DELAYFLASH : STD_LOGIC; 
  signal Mcount_DELAYFLASH1 : STD_LOGIC; 
  signal Mcount_DELAYFLASH2 : STD_LOGIC; 
  signal Mcount_DELAYFLASH3 : STD_LOGIC; 
  signal Mcount_DELAYFLASH4 : STD_LOGIC; 
  signal Mcount_DELAYFLASH5 : STD_LOGIC; 
  signal Mcount_DELAYFLASH6 : STD_LOGIC; 
  signal Mcount_DELAYFLASH7 : STD_LOGIC; 
  signal Mcount_DELAYFLASH8 : STD_LOGIC; 
  signal Mcount_DELAYFLASH9 : STD_LOGIC; 
  signal Mmux_CHARBIT_10_796 : STD_LOGIC; 
  signal Mmux_CHARBIT_101_797 : STD_LOGIC; 
  signal Mmux_CHARBIT_102_798 : STD_LOGIC; 
  signal Mmux_CHARBIT_10_f5_799 : STD_LOGIC; 
  signal Mmux_CHARBIT_11_800 : STD_LOGIC; 
  signal Mmux_CHARBIT_111_801 : STD_LOGIC; 
  signal Mmux_CHARBIT_11_f5_802 : STD_LOGIC; 
  signal Mmux_CHARBIT_12_803 : STD_LOGIC; 
  signal Mmux_CHARBIT_121_804 : STD_LOGIC; 
  signal Mmux_CHARBIT_122_805 : STD_LOGIC; 
  signal Mmux_CHARBIT_13_806 : STD_LOGIC; 
  signal Mmux_CHARBIT_131_807 : STD_LOGIC; 
  signal Mmux_CHARBIT_132_808 : STD_LOGIC; 
  signal Mmux_CHARBIT_133_809 : STD_LOGIC; 
  signal Mmux_CHARBIT_13_f5_810 : STD_LOGIC; 
  signal Mmux_CHARBIT_14_811 : STD_LOGIC; 
  signal Mmux_CHARBIT_141 : STD_LOGIC; 
  signal Mmux_CHARBIT_1411_813 : STD_LOGIC; 
  signal Mmux_CHARBIT_1412_814 : STD_LOGIC; 
  signal Mmux_CHARBIT_142_815 : STD_LOGIC; 
  signal Mmux_CHARBIT_143_816 : STD_LOGIC; 
  signal Mmux_CHARBIT_144 : STD_LOGIC; 
  signal Mmux_CHARBIT_1441_818 : STD_LOGIC; 
  signal Mmux_CHARBIT_14_f5_819 : STD_LOGIC; 
  signal Mmux_CHARBIT_14_f51 : STD_LOGIC; 
  signal Mmux_CHARBIT_15_821 : STD_LOGIC; 
  signal Mmux_CHARBIT_151_822 : STD_LOGIC; 
  signal Mmux_CHARBIT_152_823 : STD_LOGIC; 
  signal Mmux_CHARBIT_153 : STD_LOGIC; 
  signal Mmux_CHARBIT_1531_825 : STD_LOGIC; 
  signal Mmux_CHARBIT_1532_826 : STD_LOGIC; 
  signal Mmux_CHARBIT_154_827 : STD_LOGIC; 
  signal Mmux_CHARBIT_155_828 : STD_LOGIC; 
  signal Mmux_CHARBIT_15_f5_829 : STD_LOGIC; 
  signal Mmux_CHARBIT_16 : STD_LOGIC; 
  signal Mmux_CHARBIT_161_831 : STD_LOGIC; 
  signal Mmux_CHARBIT_162_832 : STD_LOGIC; 
  signal Mmux_CHARBIT_163_833 : STD_LOGIC; 
  signal Mmux_CHARBIT_164_834 : STD_LOGIC; 
  signal Mmux_CHARBIT_16_f5_835 : STD_LOGIC; 
  signal Mmux_CHARBIT_17_836 : STD_LOGIC; 
  signal Mmux_CHARBIT_171_837 : STD_LOGIC; 
  signal Mmux_CHARBIT_172 : STD_LOGIC; 
  signal Mmux_CHARBIT_1721_839 : STD_LOGIC; 
  signal Mmux_CHARBIT_1722_840 : STD_LOGIC; 
  signal Mmux_CHARBIT_17_f5_841 : STD_LOGIC; 
  signal Mmux_CHARBIT_18_842 : STD_LOGIC; 
  signal Mmux_CHARBIT_181_843 : STD_LOGIC; 
  signal Mmux_CHARBIT_18_f5_844 : STD_LOGIC; 
  signal Mmux_CHARBIT_19_845 : STD_LOGIC; 
  signal Mmux_CHARBIT_191_846 : STD_LOGIC; 
  signal Mmux_CHARBIT_192_847 : STD_LOGIC; 
  signal Mmux_CHARBIT_20_848 : STD_LOGIC; 
  signal Mmux_CHARBIT_201_849 : STD_LOGIC; 
  signal Mmux_CHARBIT_5_f7_850 : STD_LOGIC; 
  signal Mmux_CHARBIT_6_f6_851 : STD_LOGIC; 
  signal Mmux_CHARBIT_7_f5_852 : STD_LOGIC; 
  signal Mmux_CHARBIT_7_f6_853 : STD_LOGIC; 
  signal Mmux_CHARBIT_8_854 : STD_LOGIC; 
  signal Mmux_CHARBIT_8_f5_855 : STD_LOGIC; 
  signal Mmux_CHARBIT_8_f51 : STD_LOGIC; 
  signal Mmux_CHARBIT_9_857 : STD_LOGIC; 
  signal Mmux_CHARBIT_91_858 : STD_LOGIC; 
  signal Mmux_CHARBIT_92_859 : STD_LOGIC; 
  signal Mmux_CHARBIT_9_f5_860 : STD_LOGIC; 
  signal Mmux_CHARBIT_9_f6_861 : STD_LOGIC; 
  signal Mmux_varindex000013151_862 : STD_LOGIC; 
  signal Mmux_varindex000013186_863 : STD_LOGIC; 
  signal Mmux_varindex000013235 : STD_LOGIC; 
  signal Mmux_varindex0000132351_865 : STD_LOGIC; 
  signal Mmux_varindex0000132352_866 : STD_LOGIC; 
  signal Mmux_varindex000013239_867 : STD_LOGIC; 
  signal Mmux_varindex00001346_868 : STD_LOGIC; 
  signal Mmux_varindex00001385_869 : STD_LOGIC; 
  signal Mmux_varindex00002310_870 : STD_LOGIC; 
  signal Mmux_varindex000023106_871 : STD_LOGIC; 
  signal Mmux_varindex000023134_872 : STD_LOGIC; 
  signal Mmux_varindex000023172_873 : STD_LOGIC; 
  signal Mmux_varindex000023221_874 : STD_LOGIC; 
  signal Mmux_varindex00002324_875 : STD_LOGIC; 
  signal Mmux_varindex000023253 : STD_LOGIC; 
  signal Mmux_varindex0000232531_877 : STD_LOGIC; 
  signal Mmux_varindex0000232532_878 : STD_LOGIC; 
  signal Mmux_varindex000023276_879 : STD_LOGIC; 
  signal Mmux_varindex00002372_880 : STD_LOGIC; 
  signal Mmux_varindex000032 : STD_LOGIC; 
  signal Mmux_varindex000032100_882 : STD_LOGIC; 
  signal Mmux_varindex000032180_883 : STD_LOGIC; 
  signal Mmux_varindex000032233_884 : STD_LOGIC; 
  signal Mmux_varindex00003945_885 : STD_LOGIC; 
  signal Mmux_varindex0000_5_f6_886 : STD_LOGIC; 
  signal Mmux_varindex0000_6_f5_887 : STD_LOGIC; 
  signal Mmux_varindex0000_7_888 : STD_LOGIC; 
  signal Mmux_varindex0000_7_f5_889 : STD_LOGIC; 
  signal Mmux_varindex0000_8_890 : STD_LOGIC; 
  signal Mmux_varindex0000_81_891 : STD_LOGIC; 
  signal Mmux_varindex0000_9 : STD_LOGIC; 
  signal Mrom_varindex0000_rom000011101_893 : STD_LOGIC; 
  signal Mrom_varindex0000_rom000011128 : STD_LOGIC; 
  signal Mrom_varindex0000_rom0000111281_895 : STD_LOGIC; 
  signal Mrom_varindex0000_rom00001314_896 : STD_LOGIC; 
  signal Mrom_varindex0000_rom00001320_897 : STD_LOGIC; 
  signal Mrom_varindex0000_rom00001340_898 : STD_LOGIC; 
  signal Mrom_varindex0000_rom00001355_899 : STD_LOGIC; 
  signal Mrom_varindex0000_rom000014_SW1 : STD_LOGIC; 
  signal Mrom_varindex0000_rom000014_SW11_901 : STD_LOGIC; 
  signal Mrom_varindex0000_rom0000150_902 : STD_LOGIC; 
  signal Mrom_varindex0000_rom000015112_903 : STD_LOGIC; 
  signal Mrom_varindex0000_rom00001553_904 : STD_LOGIC; 
  signal Mrom_varindex0000_rom00001914_905 : STD_LOGIC; 
  signal Mrom_varindex0000_rom00001934_906 : STD_LOGIC; 
  signal Mrom_varindex0000_rom00001942_907 : STD_LOGIC; 
  signal Mrom_varindex0000_rom000020_908 : STD_LOGIC; 
  signal Mrom_varindex0000_rom000021118_909 : STD_LOGIC; 
  signal Mrom_varindex0000_rom000021145_910 : STD_LOGIC; 
  signal Mrom_varindex0000_rom000021171_911 : STD_LOGIC; 
  signal Mrom_varindex0000_rom000022_SW0 : STD_LOGIC; 
  signal Mrom_varindex0000_rom000022_SW01_913 : STD_LOGIC; 
  signal Mrom_varindex0000_rom000025_914 : STD_LOGIC; 
  signal Mrom_varindex0000_rom000026 : STD_LOGIC; 
  signal Mrom_varindex0000_rom00002628_SW1 : STD_LOGIC; 
  signal Mrom_varindex0000_rom000027 : STD_LOGIC; 
  signal Mrom_varindex0000_rom00002730_918 : STD_LOGIC; 
  signal Mrom_varindex0000_rom000028 : STD_LOGIC; 
  signal Mrom_varindex0000_rom0000280_920 : STD_LOGIC; 
  signal Mrom_varindex0000_rom00002819 : STD_LOGIC; 
  signal Mrom_varindex0000_rom000028191_922 : STD_LOGIC; 
  signal Mrom_varindex0000_rom000028192_923 : STD_LOGIC; 
  signal Mrom_varindex0000_rom000029 : STD_LOGIC; 
  signal Mrom_varindex0000_rom000030 : STD_LOGIC; 
  signal Mrom_varindex0000_rom0000300_926 : STD_LOGIC; 
  signal Mrom_varindex0000_rom000030111_927 : STD_LOGIC; 
  signal Mrom_varindex0000_rom000031 : STD_LOGIC; 
  signal Mrom_varindex0000_rom000033 : STD_LOGIC; 
  signal Mrom_varindex0000_rom0000331_930 : STD_LOGIC; 
  signal Mrom_varindex0000_rom0000332_931 : STD_LOGIC; 
  signal Mrom_varindex0000_rom000034 : STD_LOGIC; 
  signal Mrom_varindex0000_rom000035 : STD_LOGIC; 
  signal Mrom_varindex0000_rom00003548_934 : STD_LOGIC; 
  signal Mrom_varindex0000_rom00003556_935 : STD_LOGIC; 
  signal Mrom_varindex0000_rom000036 : STD_LOGIC; 
  signal Mrom_varindex0000_rom000036101_937 : STD_LOGIC; 
  signal Mrom_varindex0000_rom00003641_938 : STD_LOGIC; 
  signal Mrom_varindex0000_rom00003664_939 : STD_LOGIC; 
  signal Mrom_varindex0000_rom000037_940 : STD_LOGIC; 
  signal Mrom_varindex0000_rom000038 : STD_LOGIC; 
  signal Mrom_varindex0000_rom000039_942 : STD_LOGIC; 
  signal Mrom_varindex0000_rom000041_943 : STD_LOGIC; 
  signal Mrom_varindex0000_rom00004126_944 : STD_LOGIC; 
  signal Mrom_varindex0000_rom000043_945 : STD_LOGIC; 
  signal Mrom_varindex0000_rom000044 : STD_LOGIC; 
  signal Mrom_varindex0000_rom00004576_947 : STD_LOGIC; 
  signal Mrom_varindex0000_rom000047 : STD_LOGIC; 
  signal Mrom_varindex0000_rom00004715_949 : STD_LOGIC; 
  signal Mrom_varindex0000_rom0000472 : STD_LOGIC; 
  signal Mrom_varindex0000_rom00004734_951 : STD_LOGIC; 
  signal Mrom_varindex0000_rom000049 : STD_LOGIC; 
  signal Mrom_varindex0000_rom0000501 : STD_LOGIC; 
  signal Mrom_varindex0000_rom00005011_954 : STD_LOGIC; 
  signal Mrom_varindex0000_rom00005017_955 : STD_LOGIC; 
  signal Mrom_varindex0000_rom000051 : STD_LOGIC; 
  signal Mrom_varindex0000_rom000052_957 : STD_LOGIC; 
  signal Mrom_varindex0000_rom000054_958 : STD_LOGIC; 
  signal Mrom_varindex0000_rom000055 : STD_LOGIC; 
  signal Mrom_varindex0000_rom00005528_960 : STD_LOGIC; 
  signal Mrom_varindex0000_rom00005549_961 : STD_LOGIC; 
  signal Mrom_varindex0000_rom000069_962 : STD_LOGIC; 
  signal Msub_IMPOS_22_16_sub0001_cy_2_Q : STD_LOGIC; 
  signal Msub_IMPOS_22_16_sub0001_cy_4_Q : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N1011 : STD_LOGIC; 
  signal N103 : STD_LOGIC; 
  signal N106 : STD_LOGIC; 
  signal N108 : STD_LOGIC; 
  signal N1081 : STD_LOGIC; 
  signal N109 : STD_LOGIC; 
  signal N112 : STD_LOGIC; 
  signal N1121 : STD_LOGIC; 
  signal N113 : STD_LOGIC; 
  signal N114 : STD_LOGIC; 
  signal N115 : STD_LOGIC; 
  signal N116 : STD_LOGIC; 
  signal N1161 : STD_LOGIC; 
  signal N117 : STD_LOGIC; 
  signal N118 : STD_LOGIC; 
  signal N1181 : STD_LOGIC; 
  signal N119 : STD_LOGIC; 
  signal N121 : STD_LOGIC; 
  signal N124 : STD_LOGIC; 
  signal N1241 : STD_LOGIC; 
  signal N125 : STD_LOGIC; 
  signal N126 : STD_LOGIC; 
  signal N128 : STD_LOGIC; 
  signal N129 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal N131 : STD_LOGIC; 
  signal N1311 : STD_LOGIC; 
  signal N132 : STD_LOGIC; 
  signal N134 : STD_LOGIC; 
  signal N135 : STD_LOGIC; 
  signal N136 : STD_LOGIC; 
  signal N137 : STD_LOGIC; 
  signal N138 : STD_LOGIC; 
  signal N1381 : STD_LOGIC; 
  signal N139 : STD_LOGIC; 
  signal N140 : STD_LOGIC; 
  signal N141 : STD_LOGIC; 
  signal N143 : STD_LOGIC; 
  signal N144 : STD_LOGIC; 
  signal N145 : STD_LOGIC; 
  signal N1451 : STD_LOGIC; 
  signal N146 : STD_LOGIC; 
  signal N149 : STD_LOGIC; 
  signal N150 : STD_LOGIC; 
  signal N1501 : STD_LOGIC; 
  signal N151 : STD_LOGIC; 
  signal N1511 : STD_LOGIC; 
  signal N152 : STD_LOGIC; 
  signal N153 : STD_LOGIC; 
  signal N1531 : STD_LOGIC; 
  signal N155 : STD_LOGIC; 
  signal N1561 : STD_LOGIC; 
  signal N157 : STD_LOGIC; 
  signal N1571 : STD_LOGIC; 
  signal N158 : STD_LOGIC; 
  signal N1581 : STD_LOGIC; 
  signal N159 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N160 : STD_LOGIC; 
  signal N1601 : STD_LOGIC; 
  signal N161 : STD_LOGIC; 
  signal N1611 : STD_LOGIC; 
  signal N162 : STD_LOGIC; 
  signal N1621 : STD_LOGIC; 
  signal N1631 : STD_LOGIC; 
  signal N1641 : STD_LOGIC; 
  signal N165 : STD_LOGIC; 
  signal N1651 : STD_LOGIC; 
  signal N1661 : STD_LOGIC; 
  signal N167 : STD_LOGIC; 
  signal N168 : STD_LOGIC; 
  signal N169 : STD_LOGIC; 
  signal N1691 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal N170 : STD_LOGIC; 
  signal N171 : STD_LOGIC; 
  signal N172 : STD_LOGIC; 
  signal N1721 : STD_LOGIC; 
  signal N1731 : STD_LOGIC; 
  signal N174 : STD_LOGIC; 
  signal N1741 : STD_LOGIC; 
  signal N175 : STD_LOGIC; 
  signal N1751 : STD_LOGIC; 
  signal N176 : STD_LOGIC; 
  signal N177 : STD_LOGIC; 
  signal N1771 : STD_LOGIC; 
  signal N178 : STD_LOGIC; 
  signal N179 : STD_LOGIC; 
  signal N180 : STD_LOGIC; 
  signal N183 : STD_LOGIC; 
  signal N184 : STD_LOGIC; 
  signal N186 : STD_LOGIC; 
  signal N188 : STD_LOGIC; 
  signal N19 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal N205 : STD_LOGIC; 
  signal N207 : STD_LOGIC; 
  signal N209 : STD_LOGIC; 
  signal N211 : STD_LOGIC; 
  signal N213 : STD_LOGIC; 
  signal N215 : STD_LOGIC; 
  signal N217 : STD_LOGIC; 
  signal N219 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal N2211 : STD_LOGIC; 
  signal N223 : STD_LOGIC; 
  signal N225 : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal N231 : STD_LOGIC; 
  signal N233 : STD_LOGIC; 
  signal N235 : STD_LOGIC; 
  signal N237 : STD_LOGIC; 
  signal N239 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal N240 : STD_LOGIC; 
  signal N242 : STD_LOGIC; 
  signal N244 : STD_LOGIC; 
  signal N246 : STD_LOGIC; 
  signal N248 : STD_LOGIC; 
  signal N2481 : STD_LOGIC; 
  signal N25 : STD_LOGIC; 
  signal N250 : STD_LOGIC; 
  signal N2501 : STD_LOGIC; 
  signal N251 : STD_LOGIC; 
  signal N252 : STD_LOGIC; 
  signal N254 : STD_LOGIC; 
  signal N256 : STD_LOGIC; 
  signal N257 : STD_LOGIC; 
  signal N259 : STD_LOGIC; 
  signal N260 : STD_LOGIC; 
  signal N264 : STD_LOGIC; 
  signal N266 : STD_LOGIC; 
  signal N2661 : STD_LOGIC; 
  signal N267 : STD_LOGIC; 
  signal N2671 : STD_LOGIC; 
  signal N269 : STD_LOGIC; 
  signal N270 : STD_LOGIC; 
  signal N272 : STD_LOGIC; 
  signal N274 : STD_LOGIC; 
  signal N275 : STD_LOGIC; 
  signal N277 : STD_LOGIC; 
  signal N2771 : STD_LOGIC; 
  signal N278 : STD_LOGIC; 
  signal N279 : STD_LOGIC; 
  signal N2791 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal N281 : STD_LOGIC; 
  signal N2811 : STD_LOGIC; 
  signal N285 : STD_LOGIC; 
  signal N286 : STD_LOGIC; 
  signal N2861 : STD_LOGIC; 
  signal N288 : STD_LOGIC; 
  signal N290 : STD_LOGIC; 
  signal N292 : STD_LOGIC; 
  signal N2921 : STD_LOGIC; 
  signal N293 : STD_LOGIC; 
  signal N295 : STD_LOGIC; 
  signal N296 : STD_LOGIC; 
  signal N2961 : STD_LOGIC; 
  signal N297 : STD_LOGIC; 
  signal N298 : STD_LOGIC; 
  signal N299 : STD_LOGIC; 
  signal N3 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal N301 : STD_LOGIC; 
  signal N3011 : STD_LOGIC; 
  signal N302 : STD_LOGIC; 
  signal N305 : STD_LOGIC; 
  signal N306 : STD_LOGIC; 
  signal N308 : STD_LOGIC; 
  signal N309 : STD_LOGIC; 
  signal N310 : STD_LOGIC; 
  signal N311 : STD_LOGIC; 
  signal N3111 : STD_LOGIC; 
  signal N312 : STD_LOGIC; 
  signal N3131 : STD_LOGIC; 
  signal N315 : STD_LOGIC; 
  signal N317 : STD_LOGIC; 
  signal N318 : STD_LOGIC; 
  signal N319 : STD_LOGIC; 
  signal N3191_1151 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal N320 : STD_LOGIC; 
  signal N321 : STD_LOGIC; 
  signal N322 : STD_LOGIC; 
  signal N3231 : STD_LOGIC; 
  signal N325 : STD_LOGIC; 
  signal N3251 : STD_LOGIC; 
  signal N326 : STD_LOGIC; 
  signal N3261 : STD_LOGIC; 
  signal N328 : STD_LOGIC; 
  signal N3281 : STD_LOGIC; 
  signal N3291 : STD_LOGIC; 
  signal N330 : STD_LOGIC; 
  signal N331 : STD_LOGIC; 
  signal N332 : STD_LOGIC; 
  signal N333 : STD_LOGIC; 
  signal N335 : STD_LOGIC; 
  signal N3351 : STD_LOGIC; 
  signal N337 : STD_LOGIC; 
  signal N3371 : STD_LOGIC; 
  signal N338 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal N340 : STD_LOGIC; 
  signal N3401 : STD_LOGIC; 
  signal N341 : STD_LOGIC; 
  signal N3411 : STD_LOGIC; 
  signal N343 : STD_LOGIC; 
  signal N344 : STD_LOGIC; 
  signal N346 : STD_LOGIC; 
  signal N348 : STD_LOGIC; 
  signal N354 : STD_LOGIC; 
  signal N356 : STD_LOGIC; 
  signal N358 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal N360 : STD_LOGIC; 
  signal N362 : STD_LOGIC; 
  signal N365 : STD_LOGIC; 
  signal N367 : STD_LOGIC; 
  signal N368 : STD_LOGIC; 
  signal N369 : STD_LOGIC; 
  signal N370 : STD_LOGIC; 
  signal N371 : STD_LOGIC; 
  signal N372 : STD_LOGIC; 
  signal N373 : STD_LOGIC; 
  signal N374 : STD_LOGIC; 
  signal N375 : STD_LOGIC; 
  signal N376 : STD_LOGIC; 
  signal N377 : STD_LOGIC; 
  signal N378 : STD_LOGIC; 
  signal N379 : STD_LOGIC; 
  signal N380 : STD_LOGIC; 
  signal N381 : STD_LOGIC; 
  signal N3811 : STD_LOGIC; 
  signal N382 : STD_LOGIC; 
  signal N384 : STD_LOGIC; 
  signal N385 : STD_LOGIC; 
  signal N386 : STD_LOGIC; 
  signal N387 : STD_LOGIC; 
  signal N388 : STD_LOGIC; 
  signal N389 : STD_LOGIC; 
  signal N39 : STD_LOGIC; 
  signal N390 : STD_LOGIC; 
  signal N391 : STD_LOGIC; 
  signal N392 : STD_LOGIC; 
  signal N393 : STD_LOGIC; 
  signal N395 : STD_LOGIC; 
  signal N400 : STD_LOGIC; 
  signal N401 : STD_LOGIC; 
  signal N4011 : STD_LOGIC; 
  signal N402 : STD_LOGIC; 
  signal N404 : STD_LOGIC; 
  signal N408 : STD_LOGIC; 
  signal N41 : STD_LOGIC; 
  signal N410 : STD_LOGIC; 
  signal N412 : STD_LOGIC; 
  signal N414 : STD_LOGIC; 
  signal N416 : STD_LOGIC; 
  signal N418 : STD_LOGIC; 
  signal N42 : STD_LOGIC; 
  signal N420 : STD_LOGIC; 
  signal N421 : STD_LOGIC; 
  signal N422 : STD_LOGIC; 
  signal N428 : STD_LOGIC; 
  signal N43 : STD_LOGIC; 
  signal N432 : STD_LOGIC; 
  signal N434 : STD_LOGIC; 
  signal N436 : STD_LOGIC; 
  signal N438 : STD_LOGIC; 
  signal N44 : STD_LOGIC; 
  signal N440 : STD_LOGIC; 
  signal N441 : STD_LOGIC; 
  signal N444 : STD_LOGIC; 
  signal N446 : STD_LOGIC; 
  signal N448 : STD_LOGIC; 
  signal N452 : STD_LOGIC; 
  signal N454 : STD_LOGIC; 
  signal N456 : STD_LOGIC; 
  signal N458 : STD_LOGIC; 
  signal N46 : STD_LOGIC; 
  signal N460 : STD_LOGIC; 
  signal N462 : STD_LOGIC; 
  signal N464 : STD_LOGIC; 
  signal N466 : STD_LOGIC; 
  signal N468 : STD_LOGIC; 
  signal N47 : STD_LOGIC; 
  signal N470 : STD_LOGIC; 
  signal N472 : STD_LOGIC; 
  signal N474 : STD_LOGIC; 
  signal N48 : STD_LOGIC; 
  signal N480 : STD_LOGIC; 
  signal N481 : STD_LOGIC; 
  signal N482 : STD_LOGIC; 
  signal N484 : STD_LOGIC; 
  signal N492 : STD_LOGIC; 
  signal N498 : STD_LOGIC; 
  signal N500 : STD_LOGIC; 
  signal N502 : STD_LOGIC; 
  signal N504 : STD_LOGIC; 
  signal N51 : STD_LOGIC; 
  signal N510 : STD_LOGIC; 
  signal N514 : STD_LOGIC; 
  signal N516 : STD_LOGIC; 
  signal N52 : STD_LOGIC; 
  signal N520 : STD_LOGIC; 
  signal N522 : STD_LOGIC; 
  signal N524 : STD_LOGIC; 
  signal N530 : STD_LOGIC; 
  signal N532 : STD_LOGIC; 
  signal N534 : STD_LOGIC; 
  signal N54 : STD_LOGIC; 
  signal N540 : STD_LOGIC; 
  signal N541 : STD_LOGIC; 
  signal N55 : STD_LOGIC; 
  signal N550 : STD_LOGIC; 
  signal N552 : STD_LOGIC; 
  signal N556 : STD_LOGIC; 
  signal N558 : STD_LOGIC; 
  signal N56 : STD_LOGIC; 
  signal N560 : STD_LOGIC; 
  signal N562 : STD_LOGIC; 
  signal N564 : STD_LOGIC; 
  signal N570 : STD_LOGIC; 
  signal N574 : STD_LOGIC; 
  signal N576 : STD_LOGIC; 
  signal N578 : STD_LOGIC; 
  signal N580 : STD_LOGIC; 
  signal N583 : STD_LOGIC; 
  signal N584 : STD_LOGIC; 
  signal N585 : STD_LOGIC; 
  signal N586 : STD_LOGIC; 
  signal N587 : STD_LOGIC; 
  signal N588 : STD_LOGIC; 
  signal N589 : STD_LOGIC; 
  signal N59 : STD_LOGIC; 
  signal N590 : STD_LOGIC; 
  signal N591 : STD_LOGIC; 
  signal N592 : STD_LOGIC; 
  signal N593 : STD_LOGIC; 
  signal N594 : STD_LOGIC; 
  signal N595 : STD_LOGIC; 
  signal N596 : STD_LOGIC; 
  signal N597 : STD_LOGIC; 
  signal N598 : STD_LOGIC; 
  signal N599 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N60 : STD_LOGIC; 
  signal N600 : STD_LOGIC; 
  signal N6011 : STD_LOGIC; 
  signal N602 : STD_LOGIC; 
  signal N603 : STD_LOGIC; 
  signal N604 : STD_LOGIC; 
  signal N605 : STD_LOGIC; 
  signal N606 : STD_LOGIC; 
  signal N607 : STD_LOGIC; 
  signal N608 : STD_LOGIC; 
  signal N609 : STD_LOGIC; 
  signal N610 : STD_LOGIC; 
  signal N611 : STD_LOGIC; 
  signal N612 : STD_LOGIC; 
  signal N613 : STD_LOGIC; 
  signal N614 : STD_LOGIC; 
  signal N615 : STD_LOGIC; 
  signal N616 : STD_LOGIC; 
  signal N617 : STD_LOGIC; 
  signal N618 : STD_LOGIC; 
  signal N619 : STD_LOGIC; 
  signal N62 : STD_LOGIC; 
  signal N620 : STD_LOGIC; 
  signal N621 : STD_LOGIC; 
  signal N622 : STD_LOGIC; 
  signal N623 : STD_LOGIC; 
  signal N624 : STD_LOGIC; 
  signal N625 : STD_LOGIC; 
  signal N626 : STD_LOGIC; 
  signal N627 : STD_LOGIC; 
  signal N628 : STD_LOGIC; 
  signal N629 : STD_LOGIC; 
  signal N630 : STD_LOGIC; 
  signal N631 : STD_LOGIC; 
  signal N632 : STD_LOGIC; 
  signal N633 : STD_LOGIC; 
  signal N634 : STD_LOGIC; 
  signal N635 : STD_LOGIC; 
  signal N636 : STD_LOGIC; 
  signal N637 : STD_LOGIC; 
  signal N638 : STD_LOGIC; 
  signal N639 : STD_LOGIC; 
  signal N64 : STD_LOGIC; 
  signal N640 : STD_LOGIC; 
  signal N641 : STD_LOGIC; 
  signal N6411 : STD_LOGIC; 
  signal N642 : STD_LOGIC; 
  signal N643 : STD_LOGIC; 
  signal N644 : STD_LOGIC; 
  signal N645 : STD_LOGIC; 
  signal N646 : STD_LOGIC; 
  signal N647 : STD_LOGIC; 
  signal N648 : STD_LOGIC; 
  signal N649 : STD_LOGIC; 
  signal N65 : STD_LOGIC; 
  signal N650 : STD_LOGIC; 
  signal N651 : STD_LOGIC; 
  signal N652 : STD_LOGIC; 
  signal N653 : STD_LOGIC; 
  signal N654 : STD_LOGIC; 
  signal N655 : STD_LOGIC; 
  signal N656 : STD_LOGIC; 
  signal N657 : STD_LOGIC; 
  signal N658 : STD_LOGIC; 
  signal N659 : STD_LOGIC; 
  signal N66 : STD_LOGIC; 
  signal N660 : STD_LOGIC; 
  signal N661 : STD_LOGIC; 
  signal N6611 : STD_LOGIC; 
  signal N662 : STD_LOGIC; 
  signal N663 : STD_LOGIC; 
  signal N664 : STD_LOGIC; 
  signal N665 : STD_LOGIC; 
  signal N666 : STD_LOGIC; 
  signal N667 : STD_LOGIC; 
  signal N668 : STD_LOGIC; 
  signal N669 : STD_LOGIC; 
  signal N670 : STD_LOGIC; 
  signal N671 : STD_LOGIC; 
  signal N672 : STD_LOGIC; 
  signal N673 : STD_LOGIC; 
  signal N674 : STD_LOGIC; 
  signal N675 : STD_LOGIC; 
  signal N676 : STD_LOGIC; 
  signal N677 : STD_LOGIC; 
  signal N678 : STD_LOGIC; 
  signal N679 : STD_LOGIC; 
  signal N680 : STD_LOGIC; 
  signal N681 : STD_LOGIC; 
  signal N682 : STD_LOGIC; 
  signal N683 : STD_LOGIC; 
  signal N684 : STD_LOGIC; 
  signal N685 : STD_LOGIC; 
  signal N686 : STD_LOGIC; 
  signal N687 : STD_LOGIC; 
  signal N688 : STD_LOGIC; 
  signal N689 : STD_LOGIC; 
  signal N690 : STD_LOGIC; 
  signal N691 : STD_LOGIC; 
  signal N692 : STD_LOGIC; 
  signal N693 : STD_LOGIC; 
  signal N694 : STD_LOGIC; 
  signal N695 : STD_LOGIC; 
  signal N696 : STD_LOGIC; 
  signal N697 : STD_LOGIC; 
  signal N698 : STD_LOGIC; 
  signal N699 : STD_LOGIC; 
  signal N70 : STD_LOGIC; 
  signal N700 : STD_LOGIC; 
  signal N701 : STD_LOGIC; 
  signal N702 : STD_LOGIC; 
  signal N703 : STD_LOGIC; 
  signal N704 : STD_LOGIC; 
  signal N705 : STD_LOGIC; 
  signal N706 : STD_LOGIC; 
  signal N707 : STD_LOGIC; 
  signal N708 : STD_LOGIC; 
  signal N709 : STD_LOGIC; 
  signal N71 : STD_LOGIC; 
  signal N710 : STD_LOGIC; 
  signal N711 : STD_LOGIC; 
  signal N712 : STD_LOGIC; 
  signal N713 : STD_LOGIC; 
  signal N714 : STD_LOGIC; 
  signal N715 : STD_LOGIC; 
  signal N716 : STD_LOGIC; 
  signal N717 : STD_LOGIC; 
  signal N718 : STD_LOGIC; 
  signal N72 : STD_LOGIC; 
  signal N74 : STD_LOGIC; 
  signal N75 : STD_LOGIC; 
  signal N76 : STD_LOGIC; 
  signal N77 : STD_LOGIC; 
  signal N771 : STD_LOGIC; 
  signal N78 : STD_LOGIC; 
  signal N79 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N80 : STD_LOGIC; 
  signal N82 : STD_LOGIC; 
  signal N83 : STD_LOGIC; 
  signal N831 : STD_LOGIC; 
  signal N84 : STD_LOGIC; 
  signal N871 : STD_LOGIC; 
  signal N88 : STD_LOGIC; 
  signal N89 : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal N911 : STD_LOGIC; 
  signal N92 : STD_LOGIC; 
  signal N93 : STD_LOGIC; 
  signal N931 : STD_LOGIC; 
  signal N94 : STD_LOGIC; 
  signal N95 : STD_LOGIC; 
  signal N97 : STD_LOGIC; 
  signal N98 : STD_LOGIC; 
  signal NORM_NEGA_0_not0002_1472 : STD_LOGIC; 
  signal NPASOS_SAVE_not0001 : STD_LOGIC; 
  signal NPASOS_SAVE_or0000 : STD_LOGIC; 
  signal OE_SIGNAL_1479 : STD_LOGIC; 
  signal OE_SIGNAL_mux0000 : STD_LOGIC; 
  signal OE_SIGNAL_mux000055_1481 : STD_LOGIC; 
  signal OE_SIGNAL_mux000082_1482 : STD_LOGIC; 
  signal OE_SIGNAL_mux000088_1483 : STD_LOGIC; 
  signal OE_SIGNAL_not0001_1484 : STD_LOGIC; 
  signal PICTUREOK_0_and0000 : STD_LOGIC; 
  signal PICTUREOK_0_mux0000 : STD_LOGIC; 
  signal PICTUREOK_0_mux000023_1496 : STD_LOGIC; 
  signal PICTUREOK_0_mux000043 : STD_LOGIC; 
  signal PICTUREOK_0_mux0000431_1498 : STD_LOGIC; 
  signal PICTUREOK_0_mux0000432_1499 : STD_LOGIC; 
  signal PICTUREOK_0_mux00009_1500 : STD_LOGIC; 
  signal PICTUREOK_0_not0001 : STD_LOGIC; 
  signal PICTUREOK_0_not000111_1502 : STD_LOGIC; 
  signal PLUSMINUSTAB_0_mux0000_1504 : STD_LOGIC; 
  signal PLUSMINUSTAB_0_not0001 : STD_LOGIC; 
  signal PLUSMINUSTAB_0_or0001 : STD_LOGIC; 
  signal PLUS_MEMORY_0_mux0000 : STD_LOGIC; 
  signal PLUS_MEMORY_0_not0001 : STD_LOGIC; 
  signal PLUS_MEMORY_0_not00011_1510 : STD_LOGIC; 
  signal PLUS_MEMORY_0_not00012_1511 : STD_LOGIC; 
  signal POSIM_cmp_eq0000 : STD_LOGIC; 
  signal POSIM_cmp_eq0001_1519 : STD_LOGIC; 
  signal POSIM_mux0004_0_113_1521 : STD_LOGIC; 
  signal POSIM_mux0004_0_127_1522 : STD_LOGIC; 
  signal POSIM_mux0004_0_15_1523 : STD_LOGIC; 
  signal POSIM_mux0004_0_1510_1524 : STD_LOGIC; 
  signal POSIM_mux0004_0_156 : STD_LOGIC; 
  signal POSIM_mux0004_0_168_1526 : STD_LOGIC; 
  signal POSIM_mux0004_0_311_1527 : STD_LOGIC; 
  signal POSIM_mux0004_0_60_1528 : STD_LOGIC; 
  signal POSIM_mux0004_0_67 : STD_LOGIC; 
  signal POSIM_mux0004_0_72 : STD_LOGIC; 
  signal POSIM_mux0004_0_8_1531 : STD_LOGIC; 
  signal POSIM_mux0004_1_10_1533 : STD_LOGIC; 
  signal POSIM_mux0004_1_54_1534 : STD_LOGIC; 
  signal POSIM_mux0004_2_11103_1536 : STD_LOGIC; 
  signal POSIM_mux0004_2_1112_1537 : STD_LOGIC; 
  signal POSIM_mux0004_2_1140_1538 : STD_LOGIC; 
  signal POSIM_mux0004_2_1143_1539 : STD_LOGIC; 
  signal POSIM_mux0004_2_1174_1540 : STD_LOGIC; 
  signal POSIM_mux0004_2_1194_1541 : STD_LOGIC; 
  signal POSIM_mux0004_2_13_1542 : STD_LOGIC; 
  signal POSIM_mux0004_2_23_1543 : STD_LOGIC; 
  signal POSIM_mux0004_2_5_1544 : STD_LOGIC; 
  signal POSIM_mux0004_2_58_1545 : STD_LOGIC; 
  signal POSIM_mux0004_2_69 : STD_LOGIC; 
  signal POSIM_mux0004_3_28_1548 : STD_LOGIC; 
  signal POSIM_mux0004_3_5_1549 : STD_LOGIC; 
  signal POSIM_mux0004_3_59_1550 : STD_LOGIC; 
  signal POSIM_mux0004_4_16_1552 : STD_LOGIC; 
  signal POSIM_mux0004_4_5_1553 : STD_LOGIC; 
  signal POSIM_not0001_1554 : STD_LOGIC; 
  signal POS_MEMORY_NAT_or0000 : STD_LOGIC; 
  signal POS_V_MEMORY_1_1 : STD_LOGIC; 
  signal POS_V_MEMORY_1_109_1563 : STD_LOGIC; 
  signal POS_V_MEMORY_1_1102_1564 : STD_LOGIC; 
  signal POS_V_MEMORY_1_130_1565 : STD_LOGIC; 
  signal POS_V_MEMORY_1_2 : STD_LOGIC; 
  signal POS_V_MEMORY_1_2103 : STD_LOGIC; 
  signal POS_V_MEMORY_1_21031_1568 : STD_LOGIC; 
  signal POS_V_MEMORY_1_21032_1569 : STD_LOGIC; 
  signal POS_V_MEMORY_1_2124_1570 : STD_LOGIC; 
  signal POS_V_MEMORY_1_226 : STD_LOGIC; 
  signal POS_V_MEMORY_1_2261_1572 : STD_LOGIC; 
  signal POS_V_MEMORY_1_2262_1573 : STD_LOGIC; 
  signal POS_V_MEMORY_1_23_1574 : STD_LOGIC; 
  signal POS_V_MEMORY_1_249_1575 : STD_LOGIC; 
  signal POS_V_MEMORY_1_3 : STD_LOGIC; 
  signal POS_V_MEMORY_1_3104_1577 : STD_LOGIC; 
  signal POS_V_MEMORY_1_3111_1578 : STD_LOGIC; 
  signal POS_V_MEMORY_1_325_1579 : STD_LOGIC; 
  signal POS_V_MEMORY_1_347_1580 : STD_LOGIC; 
  signal POS_V_MEMORY_1_39_1581 : STD_LOGIC; 
  signal POS_V_MEMORY_1_393_1582 : STD_LOGIC; 
  signal POS_V_MEMORY_1_4 : STD_LOGIC; 
  signal POS_V_MEMORY_1_4103_1584 : STD_LOGIC; 
  signal POS_V_MEMORY_1_4115_1585 : STD_LOGIC; 
  signal POS_V_MEMORY_1_4128_1586 : STD_LOGIC; 
  signal POS_V_MEMORY_1_423_1587 : STD_LOGIC; 
  signal POS_V_MEMORY_1_442_1588 : STD_LOGIC; 
  signal POS_V_MEMORY_1_490_1589 : STD_LOGIC; 
  signal POS_V_MEMORY_1_5 : STD_LOGIC; 
  signal POS_V_MEMORY_1_518_1591 : STD_LOGIC; 
  signal POS_V_MEMORY_1_550_1592 : STD_LOGIC; 
  signal POS_V_MEMORY_1_559_1593 : STD_LOGIC; 
  signal POS_V_MEMORY_1_6 : STD_LOGIC; 
  signal POS_V_MEMORY_1_639_1595 : STD_LOGIC; 
  signal POS_V_MEMORY_1_658_1596 : STD_LOGIC; 
  signal POS_V_MEMORY_1_66_1597 : STD_LOGIC; 
  signal POS_V_MEMORY_1_691_1598 : STD_LOGIC; 
  signal POS_V_MEMORY_1_92 : STD_LOGIC; 
  signal POS_V_MEMORY_1_921 : STD_LOGIC; 
  signal POS_V_MEMORY_1_922_1601 : STD_LOGIC; 
  signal PRESENTATION_0_mux0000 : STD_LOGIC; 
  signal PRESENTATION_0_mux000016_1611 : STD_LOGIC; 
  signal PRESENTATION_0_mux000035_1612 : STD_LOGIC; 
  signal PRESENTATION_0_mux000041_1613 : STD_LOGIC; 
  signal PRESENTATION_0_mux000051_1614 : STD_LOGIC; 
  signal PRESENTATION_0_mux000070_1615 : STD_LOGIC; 
  signal PWAIT_OBUF_1617 : STD_LOGIC; 
  signal PWRITE_IBUF_1619 : STD_LOGIC; 
  signal RED_0_OBUF_1623 : STD_LOGIC; 
  signal RED_1_OBUF_1624 : STD_LOGIC; 
  signal RED_2_OBUF_1625 : STD_LOGIC; 
  signal RESETCNTDPL_0_mux0000 : STD_LOGIC; 
  signal RESETCNTDPL_0_mux000033_1628 : STD_LOGIC; 
  signal RESETCNTDPL_0_mux000055_1629 : STD_LOGIC; 
  signal RESETCNTDPL_0_mux00008_1630 : STD_LOGIC; 
  signal RESETCNTDPL_0_not0001 : STD_LOGIC; 
  signal RESET_0_not0001 : STD_LOGIC; 
  signal RESET_CNT_USB_0_not0001 : STD_LOGIC; 
  signal Result_0_1 : STD_LOGIC; 
  signal Result_1_1 : STD_LOGIC; 
  signal Result_1_2 : STD_LOGIC; 
  signal Result_2_1 : STD_LOGIC; 
  signal Result_2_2 : STD_LOGIC; 
  signal Result_3_1 : STD_LOGIC; 
  signal SHOWINFO_0_not0002 : STD_LOGIC; 
  signal SHOWINFO_0_not0003 : STD_LOGIC; 
  signal ST_CE_SIGNAL_1672 : STD_LOGIC; 
  signal ST_CE_SIGNAL_and0003_1673 : STD_LOGIC; 
  signal ST_CE_SIGNAL_and0005 : STD_LOGIC; 
  signal ST_CE_SIGNAL_mux0000 : STD_LOGIC; 
  signal ST_CE_SIGNAL_mux000026_1676 : STD_LOGIC; 
  signal ST_CE_SIGNAL_mux000050_1677 : STD_LOGIC; 
  signal ST_CE_SIGNAL_mux000064_1678 : STD_LOGIC; 
  signal ST_CE_SIGNAL_mux000070_1679 : STD_LOGIC; 
  signal ST_CE_SIGNAL_not0001 : STD_LOGIC; 
  signal ST_CE_SIGNAL_not000112_1681 : STD_LOGIC; 
  signal ST_RP_SIGNAL_1683 : STD_LOGIC; 
  signal ST_RP_SIGNAL_mux0000 : STD_LOGIC; 
  signal ST_RP_SIGNAL_mux000031_1685 : STD_LOGIC; 
  signal ST_RP_SIGNAL_mux00008_1686 : STD_LOGIC; 
  signal ST_RP_SIGNAL_not0001 : STD_LOGIC; 
  signal ST_RP_SIGNAL_not000115_1688 : STD_LOGIC; 
  signal USBDRIVER_ABORTEDSN_0_and0000 : STD_LOGIC; 
  signal USBDRIVER_ABORTEDSN_0_and000010_1691 : STD_LOGIC; 
  signal USBDRIVER_ABORTEDSN_0_and000017_1692 : STD_LOGIC; 
  signal USBDRIVER_PDB_and0000_inv : STD_LOGIC; 
  signal USBDRIVER_STEPPNEXT_0_Q : STD_LOGIC; 
  signal USBDRIVER_STEPPNEXT_0_17_1720 : STD_LOGIC; 
  signal USBDRIVER_STEPPNEXT_0_230_1721 : STD_LOGIC; 
  signal USBDRIVER_STEPPNEXT_0_5_1722 : STD_LOGIC; 
  signal USBDRIVER_STEPPNEXT_1_Q : STD_LOGIC; 
  signal USBDRIVER_STEPPNEXT_1_32_1724 : STD_LOGIC; 
  signal USBDRIVER_STEPPNEXT_1_6_1725 : STD_LOGIC; 
  signal USBDRIVER_STEPPNEXT_2_1 : STD_LOGIC; 
  signal USBDRIVER_STEPPNEXT_3_1 : STD_LOGIC; 
  signal USBDRIVER_STEPPNEXT_4_Q : STD_LOGIC; 
  signal USBDRIVER_STEPPNEXT_5_Q_1729 : STD_LOGIC; 
  signal USBDRIVER_STEPPNEXT_6_Q : STD_LOGIC; 
  signal USBDRIVER_STEPPNEXT_6_10_1731 : STD_LOGIC; 
  signal USBDRIVER_STEPPNEXT_6_20_1732 : STD_LOGIC; 
  signal USBDRIVER_STEPPNEXT_6_35_1733 : STD_LOGIC; 
  signal USBDRIVER_STEPPNEXT_7_Q_1734 : STD_LOGIC; 
  signal USBDRIVER_STEPPNEXT_cmp_eq0000 : STD_LOGIC; 
  signal USBDRIVER_STEPPNEXT_cmp_eq0004 : STD_LOGIC; 
  signal VGA_DRVR1_BUFGCLK200M : STD_LOGIC; 
  signal VGA_DRVR1_CLK100M : STD_LOGIC; 
  signal VGA_DRVR1_CLK200M : STD_LOGIC; 
  signal VGA_DRVR1_CLK200M_END_1740 : STD_LOGIC; 
  signal VGA_DRVR1_CLK200M_NEW : STD_LOGIC; 
  signal VGA_DRVR1_CLK200M_NEW_BUFG : STD_LOGIC; 
  signal VGA_DRVR1_CLK25M : STD_LOGIC; 
  signal VGA_DRVR1_CLK400M : STD_LOGIC; 
  signal VGA_DRVR1_CLK400M_BUFG : STD_LOGIC; 
  signal VGA_DRVR1_CLK_100_200M_1746 : STD_LOGIC; 
  signal VGA_DRVR1_CLK_100_200M_BUFG : STD_LOGIC; 
  signal VGA_DRVR1_CNT200M_21 : STD_LOGIC; 
  signal VGA_DRVR1_COLOR_0_Q : STD_LOGIC; 
  signal VGA_DRVR1_COLOR_0_100 : STD_LOGIC; 
  signal VGA_DRVR1_COLOR_0_1001_1754 : STD_LOGIC; 
  signal VGA_DRVR1_COLOR_2_Q : STD_LOGIC; 
  signal VGA_DRVR1_COLOR_2_16_1756 : STD_LOGIC; 
  signal VGA_DRVR1_COLOR_2_33_1757 : STD_LOGIC; 
  signal VGA_DRVR1_COLOR_2_77_1758 : STD_LOGIC; 
  signal VGA_DRVR1_COLOR_3_22_1759 : STD_LOGIC; 
  signal VGA_DRVR1_COLOR_3_41_1760 : STD_LOGIC; 
  signal VGA_DRVR1_COLOR_5_Q : STD_LOGIC; 
  signal VGA_DRVR1_COLOR_5_16_1762 : STD_LOGIC; 
  signal VGA_DRVR1_COLOR_5_33_1763 : STD_LOGIC; 
  signal VGA_DRVR1_COLOR_5_77_1764 : STD_LOGIC; 
  signal VGA_DRVR1_COLOR_6_22_1765 : STD_LOGIC; 
  signal VGA_DRVR1_COLOR_6_41_1766 : STD_LOGIC; 
  signal VGA_DRVR1_COUNTER_H_CUR_cmp_eq0000_1797 : STD_LOGIC; 
  signal VGA_DRVR1_COUNTER_RAM_and0000 : STD_LOGIC; 
  signal VGA_DRVR1_COUNTER_RAM_and000015_1818 : STD_LOGIC; 
  signal VGA_DRVR1_COUNTER_RAM_and000017_1819 : STD_LOGIC; 
  signal VGA_DRVR1_COUNTER_RAM_and00002_1820 : STD_LOGIC; 
  signal VGA_DRVR1_COUNTER_RAM_and000022_1821 : STD_LOGIC; 
  signal VGA_DRVR1_COUNTER_RAM_and000034_1822 : STD_LOGIC; 
  signal VGA_DRVR1_COUNTER_RAM_and00008_1823 : STD_LOGIC; 
  signal VGA_DRVR1_COUNTER_RAM_or0000 : STD_LOGIC; 
  signal VGA_DRVR1_COUNTER_RAM_or000014_1825 : STD_LOGIC; 
  signal VGA_DRVR1_COUNTER_RAM_or000028 : STD_LOGIC; 
  signal VGA_DRVR1_COUNTER_RAM_or0000281_1827 : STD_LOGIC; 
  signal VGA_DRVR1_COUNTER_RAM_or000048_1828 : STD_LOGIC; 
  signal VGA_DRVR1_COUNTER_RAM_or00006_1829 : STD_LOGIC; 
  signal VGA_DRVR1_COUNTER_RAM_or0000_inv : STD_LOGIC; 
  signal VGA_DRVR1_COUNTER_V_CUR_cmp_eq0000_1861 : STD_LOGIC; 
  signal VGA_DRVR1_COUNTER_V_cmp_eq000039_1862 : STD_LOGIC; 
  signal VGA_DRVR1_COUNTER_V_not0001_inv : STD_LOGIC; 
  signal VGA_DRVR1_F_10 : STD_LOGIC; 
  signal VGA_DRVR1_F_8_TO_9 : STD_LOGIC; 
  signal VGA_DRVR1_HS : STD_LOGIC; 
  signal VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy_1_rt_1869 : STD_LOGIC; 
  signal VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy_2_rt_1871 : STD_LOGIC; 
  signal VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy_3_rt_1873 : STD_LOGIC; 
  signal VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy_4_rt_1875 : STD_LOGIC; 
  signal VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy_5_rt_1877 : STD_LOGIC; 
  signal VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy_6_rt_1879 : STD_LOGIC; 
  signal VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy_7_rt_1881 : STD_LOGIC; 
  signal VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy_8_rt_1883 : STD_LOGIC; 
  signal VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_xor_9_rt_1885 : STD_LOGIC; 
  signal VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy_1_rt_1888 : STD_LOGIC; 
  signal VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy_2_rt_1890 : STD_LOGIC; 
  signal VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy_3_rt_1892 : STD_LOGIC; 
  signal VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy_4_rt_1894 : STD_LOGIC; 
  signal VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy_5_rt_1896 : STD_LOGIC; 
  signal VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy_6_rt_1898 : STD_LOGIC; 
  signal VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy_7_rt_1900 : STD_LOGIC; 
  signal VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy_8_rt_1902 : STD_LOGIC; 
  signal VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_xor_9_rt_1904 : STD_LOGIC; 
  signal VGA_DRVR1_Mcount_COUNTER_RAM_cy_10_rt_1907 : STD_LOGIC; 
  signal VGA_DRVR1_Mcount_COUNTER_RAM_cy_11_rt_1909 : STD_LOGIC; 
  signal VGA_DRVR1_Mcount_COUNTER_RAM_cy_12_rt_1911 : STD_LOGIC; 
  signal VGA_DRVR1_Mcount_COUNTER_RAM_cy_13_rt_1913 : STD_LOGIC; 
  signal VGA_DRVR1_Mcount_COUNTER_RAM_cy_14_rt_1915 : STD_LOGIC; 
  signal VGA_DRVR1_Mcount_COUNTER_RAM_cy_15_rt_1917 : STD_LOGIC; 
  signal VGA_DRVR1_Mcount_COUNTER_RAM_cy_16_rt_1919 : STD_LOGIC; 
  signal VGA_DRVR1_Mcount_COUNTER_RAM_cy_17_rt_1921 : STD_LOGIC; 
  signal VGA_DRVR1_Mcount_COUNTER_RAM_cy_1_rt_1923 : STD_LOGIC; 
  signal VGA_DRVR1_Mcount_COUNTER_RAM_cy_2_rt_1925 : STD_LOGIC; 
  signal VGA_DRVR1_Mcount_COUNTER_RAM_cy_3_rt_1927 : STD_LOGIC; 
  signal VGA_DRVR1_Mcount_COUNTER_RAM_cy_4_rt_1929 : STD_LOGIC; 
  signal VGA_DRVR1_Mcount_COUNTER_RAM_cy_5_rt_1931 : STD_LOGIC; 
  signal VGA_DRVR1_Mcount_COUNTER_RAM_cy_6_rt_1933 : STD_LOGIC; 
  signal VGA_DRVR1_Mcount_COUNTER_RAM_cy_7_rt_1935 : STD_LOGIC; 
  signal VGA_DRVR1_Mcount_COUNTER_RAM_cy_8_rt_1937 : STD_LOGIC; 
  signal VGA_DRVR1_Mcount_COUNTER_RAM_cy_9_rt_1939 : STD_LOGIC; 
  signal VGA_DRVR1_Mcount_COUNTER_RAM_xor_18_rt_1941 : STD_LOGIC; 
  signal VGA_DRVR1_Msub_POS_Y_cy_0_rt_1944 : STD_LOGIC; 
  signal VGA_DRVR1_Msub_POS_Y_cy_1_rt_1946 : STD_LOGIC; 
  signal VGA_DRVR1_Msub_POS_Y_cy_2_rt_1948 : STD_LOGIC; 
  signal VGA_DRVR1_Msub_POS_Y_cy_3_rt_1950 : STD_LOGIC; 
  signal VGA_DRVR1_Msub_POS_Y_cy_4_rt_1952 : STD_LOGIC; 
  signal VGA_DRVR1_N1 : STD_LOGIC; 
  signal VGA_DRVR1_N12 : STD_LOGIC; 
  signal VGA_DRVR1_N13 : STD_LOGIC; 
  signal VGA_DRVR1_N2 : STD_LOGIC; 
  signal VGA_DRVR1_Result_1_1 : STD_LOGIC; 
  signal VGA_DRVR1_Result_2_1 : STD_LOGIC; 
  signal VS_OBUF_1986 : STD_LOGIC; 
  signal WE_SIGNAL_1988 : STD_LOGIC; 
  signal WE_SIGNAL_mux0001 : STD_LOGIC; 
  signal WE_SIGNAL_mux000112_1990 : STD_LOGIC; 
  signal WE_SIGNAL_mux0001133_1991 : STD_LOGIC; 
  signal WE_SIGNAL_mux0001195_1992 : STD_LOGIC; 
  signal WE_SIGNAL_mux0001211_1993 : STD_LOGIC; 
  signal WE_SIGNAL_mux000137_1994 : STD_LOGIC; 
  signal WE_SIGNAL_mux000152_1995 : STD_LOGIC; 
  signal WE_SIGNAL_mux000155_1996 : STD_LOGIC; 
  signal WE_SIGNAL_mux000174 : STD_LOGIC; 
  signal WE_SIGNAL_mux00018 : STD_LOGIC; 
  signal WE_SIGNAL_not0001 : STD_LOGIC; 
  signal WE_SIGNAL_not000115_2000 : STD_LOGIC; 
  signal WE_SIGNAL_not000129_2001 : STD_LOGIC; 
  signal WE_SIGNAL_not00015_2002 : STD_LOGIC; 
  signal WORDDATA_TEMP_mux0000_10_10_2021 : STD_LOGIC; 
  signal WORDDATA_TEMP_not0001 : STD_LOGIC; 
  signal WORDDATA_TEMP_not00016_2037 : STD_LOGIC; 
  signal POSIM_cmp_eq0001_SW0_O : STD_LOGIC; 
  signal VGA_DRVR1_COUNTER_RAM_or00006_O : STD_LOGIC; 
  signal RESETCNTDPL_0_mux000033_O : STD_LOGIC; 
  signal ABORT_5_mux0000_SW0_O : STD_LOGIC; 
  signal USBDRIVER_STEPPNEXT_6_10_O : STD_LOGIC; 
  signal COUNTER_RAM_USB_not000115_O : STD_LOGIC; 
  signal CNTPRSTEP_not00019_O : STD_LOGIC; 
  signal CNTPRSTEP_not000181_O : STD_LOGIC; 
  signal OE_SIGNAL_not0001_SW0_O : STD_LOGIC; 
  signal WE_SIGNAL_not000129_O : STD_LOGIC; 
  signal OE_SIGNAL_mux000011_O : STD_LOGIC; 
  signal ST_CE_SIGNAL_mux000070_O : STD_LOGIC; 
  signal PICTUREOK_0_mux000023_O : STD_LOGIC; 
  signal IM_16_8_BITS_0_mux00003_O : STD_LOGIC; 
  signal IMPOS_19_cmp_eq0014_SW0_O : STD_LOGIC; 
  signal POSIM_not0001_SW0_O : STD_LOGIC; 
  signal IMPOS_19_not0001121_O : STD_LOGIC; 
  signal IMPOS_19_not0001126_O : STD_LOGIC; 
  signal LOADFLASH_0_not000115_O : STD_LOGIC; 
  signal IMPOS_16_mux000413_O : STD_LOGIC; 
  signal POSIM_mux0004_1_10_O : STD_LOGIC; 
  signal IMPOS_17_mux000450_O : STD_LOGIC; 
  signal POSIM_mux0004_2_11106_O : STD_LOGIC; 
  signal POSIM_mux0004_0_1510_O : STD_LOGIC; 
  signal IMPOS_19_mux000413_O : STD_LOGIC; 
  signal IMPOS_22_mux000426_O : STD_LOGIC; 
  signal IMPOS_18_mux000417_O : STD_LOGIC; 
  signal IMPOS_18_mux0004113_O : STD_LOGIC; 
  signal POSIM_mux0004_0_25_SW0_O : STD_LOGIC; 
  signal IMPOS_19_cmp_eq0001726_SW0_O : STD_LOGIC; 
  signal IMPOS_19_cmp_eq0001753_SW0_O : STD_LOGIC; 
  signal USBDRIVER_STEPPNEXT_cmp_eq00021_SW0_O : STD_LOGIC; 
  signal USBDRIVER_STEPPNEXT_cmp_eq00031_SW0_O : STD_LOGIC; 
  signal IMPOS_19_mux000431_SW1_O : STD_LOGIC; 
  signal POSIM_mux0004_0_174_SW0_O : STD_LOGIC; 
  signal IMPOS_21_mux000458_SW0_O : STD_LOGIC; 
  signal IMPOS_19_not000119_O : STD_LOGIC; 
  signal POSIM_mux0004_4_5_O : STD_LOGIC; 
  signal POSIM_mux0004_3_5_O : STD_LOGIC; 
  signal POSIM_mux0004_0_174_SW3_O : STD_LOGIC; 
  signal POSIM_mux0004_2_12_SW1_O : STD_LOGIC; 
  signal IMPOS_19_mux000422_SW4_O : STD_LOGIC; 
  signal IM_16_8_BITS_0_mux000049_O : STD_LOGIC; 
  signal VGA_DRVR1_COUNTER_V_cmp_eq000041_SW0_O : STD_LOGIC; 
  signal OE_SIGNAL_mux000082_O : STD_LOGIC; 
  signal IMPOS_19_mux0004211_SW0_O : STD_LOGIC; 
  signal IMPOS_19_mux000422_SW0_O : STD_LOGIC; 
  signal WE_SIGNAL_mux000192_SW0_O : STD_LOGIC; 
  signal WORDDATA_TEMP_not000136_SW0_O : STD_LOGIC; 
  signal OE_SIGNAL_mux000055_O : STD_LOGIC; 
  signal RESETCNTDPL_0_mux000055_O : STD_LOGIC; 
  signal COUNTER_RAM_USB_not00012_O : STD_LOGIC; 
  signal WE_SIGNAL_not00015_O : STD_LOGIC; 
  signal POSIM_mux0004_0_11_SW3_O : STD_LOGIC; 
  signal POSIM_mux0004_1_16_SW0_O : STD_LOGIC; 
  signal IM_16_8_BITS_0_mux00003_SW1_SW0_O : STD_LOGIC; 
  signal IM_16_8_BITS_0_or00001_SW1_O : STD_LOGIC; 
  signal ERASEFLASH_SIGNAL_0_not00011_SW1_O : STD_LOGIC; 
  signal IMPOS_20_mux000413_O : STD_LOGIC; 
  signal IM_16_8_BITS_0_mux000064_O : STD_LOGIC; 
  signal ABORT_5_not000120_O : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal NlwInverterSignal_KBRD_DRIVER_KBRD_DATA_S_6_C : STD_LOGIC; 
  signal NlwInverterSignal_KBRD_DRIVER_KBRD_DATA_S_5_C : STD_LOGIC; 
  signal NlwInverterSignal_KBRD_DRIVER_KBRD_DATA_S_4_C : STD_LOGIC; 
  signal NlwInverterSignal_KBRD_DRIVER_KBRD_DATA_S_3_C : STD_LOGIC; 
  signal NlwInverterSignal_KBRD_DRIVER_KBRD_DATA_S_1_C : STD_LOGIC; 
  signal NlwInverterSignal_KBRD_DRIVER_KBRD_DATA_S_2_C : STD_LOGIC; 
  signal NlwInverterSignal_KBRD_DRIVER_KBRD_DATA_S_0_C : STD_LOGIC; 
  signal NlwInverterSignal_KBRD_DRIVER_PAR_OK_C : STD_LOGIC; 
  signal NlwInverterSignal_KBRD_DRIVER_COUNTER_KB_3_C : STD_LOGIC; 
  signal NlwInverterSignal_KBRD_DRIVER_COUNTER_KB_2_C : STD_LOGIC; 
  signal NlwInverterSignal_KBRD_DRIVER_COUNTER_KB_1_C : STD_LOGIC; 
  signal NlwInverterSignal_KBRD_DRIVER_COUNTER_KB_0_C : STD_LOGIC; 
  signal NlwInverterSignal_KBRD_DRIVER_KBRD_DATA_S_7_C : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL100_BUFG_inst1_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL200_BUFG_inst1_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL_100_200_BUFG_inst1_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL_200_NEW_BUFG_inst1_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL100_CLKDLL_inst_DCM_SP_DSSEN_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL100_CLKDLL_inst_DCM_SP_CLK0_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL100_CLKDLL_inst_DCM_SP_CLK90_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL100_CLKDLL_inst_DCM_SP_CLK180_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL100_CLKDLL_inst_DCM_SP_CLK270_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL100_CLKDLL_inst_DCM_SP_CLK2X180_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL100_CLKDLL_inst_DCM_SP_CLKDV_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL100_CLKDLL_inst_DCM_SP_CLKFX_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL100_CLKDLL_inst_DCM_SP_CLKFX180_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL100_CLKDLL_inst_DCM_SP_LOCKED_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL100_CLKDLL_inst_DCM_SP_PSDONE_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL100_CLKDLL_inst_DCM_SP_STATUS_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL100_CLKDLL_inst_DCM_SP_STATUS_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL100_CLKDLL_inst_DCM_SP_STATUS_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL100_CLKDLL_inst_DCM_SP_STATUS_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL100_CLKDLL_inst_DCM_SP_STATUS_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL100_CLKDLL_inst_DCM_SP_STATUS_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL100_CLKDLL_inst_DCM_SP_STATUS_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL100_CLKDLL_inst_DCM_SP_STATUS_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL200_CLKDLL_inst_DCM_SP_DSSEN_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL200_CLKDLL_inst_DCM_SP_CLK0_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL200_CLKDLL_inst_DCM_SP_CLK90_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL200_CLKDLL_inst_DCM_SP_CLK180_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL200_CLKDLL_inst_DCM_SP_CLK270_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL200_CLKDLL_inst_DCM_SP_CLK2X180_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL200_CLKDLL_inst_DCM_SP_CLKDV_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL200_CLKDLL_inst_DCM_SP_CLKFX_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL200_CLKDLL_inst_DCM_SP_CLKFX180_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL200_CLKDLL_inst_DCM_SP_LOCKED_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL200_CLKDLL_inst_DCM_SP_PSDONE_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL200_CLKDLL_inst_DCM_SP_STATUS_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL200_CLKDLL_inst_DCM_SP_STATUS_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL200_CLKDLL_inst_DCM_SP_STATUS_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL200_CLKDLL_inst_DCM_SP_STATUS_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL200_CLKDLL_inst_DCM_SP_STATUS_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL200_CLKDLL_inst_DCM_SP_STATUS_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL200_CLKDLL_inst_DCM_SP_STATUS_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL200_CLKDLL_inst_DCM_SP_STATUS_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL_100_200_CLKDLL_inst_DCM_SP_DSSEN_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL_100_200_CLKDLL_inst_DCM_SP_CLK0_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL_100_200_CLKDLL_inst_DCM_SP_CLK90_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL_100_200_CLKDLL_inst_DCM_SP_CLK180_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL_100_200_CLKDLL_inst_DCM_SP_CLK270_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL_100_200_CLKDLL_inst_DCM_SP_CLK2X180_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL_100_200_CLKDLL_inst_DCM_SP_CLKDV_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL_100_200_CLKDLL_inst_DCM_SP_CLKFX_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL_100_200_CLKDLL_inst_DCM_SP_CLKFX180_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL_100_200_CLKDLL_inst_DCM_SP_LOCKED_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL_100_200_CLKDLL_inst_DCM_SP_PSDONE_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL_100_200_CLKDLL_inst_DCM_SP_STATUS_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL_100_200_CLKDLL_inst_DCM_SP_STATUS_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL_100_200_CLKDLL_inst_DCM_SP_STATUS_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL_100_200_CLKDLL_inst_DCM_SP_STATUS_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL_100_200_CLKDLL_inst_DCM_SP_STATUS_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL_100_200_CLKDLL_inst_DCM_SP_STATUS_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL_100_200_CLKDLL_inst_DCM_SP_STATUS_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL_100_200_CLKDLL_inst_DCM_SP_STATUS_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL_200_NEW_CLKDLL_inst_DCM_SP_DSSEN_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL_200_NEW_CLKDLL_inst_DCM_SP_CLK0_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL_200_NEW_CLKDLL_inst_DCM_SP_CLK90_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL_200_NEW_CLKDLL_inst_DCM_SP_CLK180_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL_200_NEW_CLKDLL_inst_DCM_SP_CLK270_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL_200_NEW_CLKDLL_inst_DCM_SP_CLK2X180_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL_200_NEW_CLKDLL_inst_DCM_SP_CLKDV_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL_200_NEW_CLKDLL_inst_DCM_SP_CLKFX_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL_200_NEW_CLKDLL_inst_DCM_SP_CLKFX180_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL_200_NEW_CLKDLL_inst_DCM_SP_LOCKED_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL_200_NEW_CLKDLL_inst_DCM_SP_PSDONE_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL_200_NEW_CLKDLL_inst_DCM_SP_STATUS_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL_200_NEW_CLKDLL_inst_DCM_SP_STATUS_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL_200_NEW_CLKDLL_inst_DCM_SP_STATUS_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL_200_NEW_CLKDLL_inst_DCM_SP_STATUS_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL_200_NEW_CLKDLL_inst_DCM_SP_STATUS_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL_200_NEW_CLKDLL_inst_DCM_SP_STATUS_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL_200_NEW_CLKDLL_inst_DCM_SP_STATUS_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_VGA_DRVR1_DRIVERCLKDLL_200_NEW_CLKDLL_inst_DCM_SP_STATUS_0_UNCONNECTED : STD_LOGIC; 
  signal ABORT : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal ALT : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal CNTDPL : STD_LOGIC_VECTOR ( 25 downto 0 ); 
  signal CNTPROCCES : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal CNTPRSTEP : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal CNTPRSTEP_mux0000 : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal COLOR_BLUE : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal COLOR_GREEN : STD_LOGIC_VECTOR ( 5 downto 5 ); 
  signal COLOR_RED : STD_LOGIC_VECTOR ( 5 downto 5 ); 
  signal COUNTER_RAM_USB : STD_LOGIC_VECTOR ( 18 downto 0 ); 
  signal COUNTER_RAM_USB_add0000 : STD_LOGIC_VECTOR ( 18 downto 0 ); 
  signal COUNTER_RAM_USB_cmp_eq0000_wg_cy : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal COUNTER_RAM_USB_cmp_eq0000_wg_lut : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal COUNTER_RAM_USB_mux0001 : STD_LOGIC_VECTOR ( 18 downto 0 ); 
  signal CTRL : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal DELAYFLASH : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal DELAYFLASH_add0000 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal DELAY_PLUS_MEMORY : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal DELAY_PLUS_MEMORY_mux0001 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal ERASEFLASH : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal ERASEFLASH_SIGNAL : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal ERASE_RAM : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal IMPOS : STD_LOGIC_VECTOR ( 22 downto 16 ); 
  signal IMPOS_22_16_add0000 : STD_LOGIC_VECTOR ( 6 downto 2 ); 
  signal IMPOS_BLOCKERASE : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal IM_16_8_BITS : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal INPRES : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal KBRD_DRIVER_COUNTER_KB : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal KBRD_DRIVER_COUNTER_KB_mux0002 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal KBRD_DRIVER_E0 : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal KBRD_DRIVER_KBRD_DATA : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal KBRD_DRIVER_KBRD_DATA_S : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal KBRD_DRIVER_KEY_DOWN : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal KBRD_DRIVER_KEY_UP : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal KBRD_DRIVER_WT_KB : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal LOADFLASH : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal LOAD_DATA : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal MNGDPL : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal MNGDPL_cmp_eq0000_wg_cy : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal MNGDPL_cmp_eq0000_wg_lut : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal MNGLETTER : STD_LOGIC_VECTOR2 ( 17 downto 17 , 2 downto 2 ); 
  signal Madd_COUNTER_RAM_USB_add0000_cy : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal Madd_COUNTER_RAM_USB_add0000_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Madd_DELAYFLASH_add0000_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal Madd_DELAYFLASH_add0000_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Madd_IMPOS_19_add0000_cy : STD_LOGIC_VECTOR ( 4 downto 4 ); 
  signal Madd_IMPOS_22_16_add0001_cy : STD_LOGIC_VECTOR ( 4 downto 2 ); 
  signal Madd_POSIM_add0000_cy : STD_LOGIC_VECTOR ( 2 downto 2 ); 
  signal Madd_POS_MEMORY_NAT_cy : STD_LOGIC_VECTOR ( 21 downto 16 ); 
  signal Madd_POS_MEMORY_NAT_lut : STD_LOGIC_VECTOR ( 18 downto 16 ); 
  signal Mcount_CNTDPL_cy : STD_LOGIC_VECTOR ( 24 downto 0 ); 
  signal Mcount_CNTDPL_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Mcount_DELAYFLASH_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal Mcount_DELAYFLASH_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal Msub_IMPOS_22_16_sub0000_cy : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal Msub_POSIM_addsub0000_cy : STD_LOGIC_VECTOR ( 2 downto 2 ); 
  signal NORM_NEGA : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal NPASOS_SAVE : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal PICTUREOK : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal PLUSMINUSTAB : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal PLUS_MEMORY : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal POSIM : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal POSIM_mux0004 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal POS_H_MEMORY : STD_LOGIC_VECTOR ( 8 downto 5 ); 
  signal POS_V_MEMORY : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal PRESENTATION : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal RESETCNTDPL : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal RESET : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal RESET_CNT_USB : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 25 downto 0 ); 
  signal SHOWINFO : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal USBDRIVER_ABORTEDSN : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal USBDRIVER_DATAOK : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal USBDRIVER_HIBYTE : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal USBDRIVER_LOBYTE : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal USBDRIVER_STEPPCUR : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal VGA_DRVR1_CNT200M : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal VGA_DRVR1_COUNTER_H : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal VGA_DRVR1_COUNTER_H_CUR : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal VGA_DRVR1_COUNTER_H_CUR_addsub0000 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal VGA_DRVR1_COUNTER_RAM : STD_LOGIC_VECTOR ( 18 downto 0 ); 
  signal VGA_DRVR1_COUNTER_V : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal VGA_DRVR1_COUNTER_V_CUR : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal VGA_DRVR1_COUNTER_V_CUR_addsub0000 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal VGA_DRVR1_Mcount_COUNTER_RAM_cy : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal VGA_DRVR1_Mcount_COUNTER_RAM_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal VGA_DRVR1_Msub_POS_X_cy : STD_LOGIC_VECTOR ( 6 downto 6 ); 
  signal VGA_DRVR1_Msub_POS_Y_cy : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal VGA_DRVR1_Msub_POS_Y_lut : STD_LOGIC_VECTOR ( 8 downto 5 ); 
  signal VGA_DRVR1_Result : STD_LOGIC_VECTOR ( 18 downto 0 ); 
  signal WORDDATA_TEMP : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal WORDDATA_TEMP_mux0000 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Q_varindex0000 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
begin
  NlwRenamedSig_IO_KBRD_CLK_PIN <= KBRD_CLK_PIN;
  NlwRenamedSig_IO_KBRD_DATA_PIN <= KBRD_DATA_PIN;
  XST_GND : X_ZERO
    port map (
      O => DPL_SEG_3_OBUF_397
    );
  XST_VCC : X_ONE
    port map (
      O => DPL_SEG_0_OBUF_396
    );
  IMPOS_19 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => IMPOS_19_not0001,
      I => IMPOS_19_mux0004,
      O => IMPOS(19),
      SET => GND,
      RST => GND
    );
  WORDDATA_TEMP_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => WORDDATA_TEMP_not0001,
      I => WORDDATA_TEMP_mux0000(15),
      O => WORDDATA_TEMP(0),
      SET => GND,
      RST => GND
    );
  WORDDATA_TEMP_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => WORDDATA_TEMP_not0001,
      I => WORDDATA_TEMP_mux0000(14),
      O => WORDDATA_TEMP(1),
      SET => GND,
      RST => GND
    );
  WORDDATA_TEMP_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => WORDDATA_TEMP_not0001,
      I => WORDDATA_TEMP_mux0000(13),
      O => WORDDATA_TEMP(2),
      SET => GND,
      RST => GND
    );
  WORDDATA_TEMP_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => WORDDATA_TEMP_not0001,
      I => WORDDATA_TEMP_mux0000(12),
      O => WORDDATA_TEMP(3),
      SET => GND,
      RST => GND
    );
  WORDDATA_TEMP_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => WORDDATA_TEMP_not0001,
      I => WORDDATA_TEMP_mux0000(11),
      O => WORDDATA_TEMP(4),
      SET => GND,
      RST => GND
    );
  WORDDATA_TEMP_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => WORDDATA_TEMP_not0001,
      I => WORDDATA_TEMP_mux0000(10),
      O => WORDDATA_TEMP(5),
      SET => GND,
      RST => GND
    );
  WORDDATA_TEMP_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => WORDDATA_TEMP_not0001,
      I => WORDDATA_TEMP_mux0000(9),
      O => WORDDATA_TEMP(6),
      SET => GND,
      RST => GND
    );
  WORDDATA_TEMP_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => WORDDATA_TEMP_not0001,
      I => WORDDATA_TEMP_mux0000(8),
      O => WORDDATA_TEMP(7),
      SET => GND,
      RST => GND
    );
  WORDDATA_TEMP_8 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => WORDDATA_TEMP_not0001,
      I => WORDDATA_TEMP_mux0000(7),
      O => WORDDATA_TEMP(8),
      SET => GND,
      RST => GND
    );
  WORDDATA_TEMP_9 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => WORDDATA_TEMP_not0001,
      I => WORDDATA_TEMP_mux0000(6),
      O => WORDDATA_TEMP(9),
      SET => GND,
      RST => GND
    );
  WORDDATA_TEMP_10 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => WORDDATA_TEMP_not0001,
      I => WORDDATA_TEMP_mux0000(5),
      O => WORDDATA_TEMP(10),
      SET => GND,
      RST => GND
    );
  WORDDATA_TEMP_11 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => WORDDATA_TEMP_not0001,
      I => WORDDATA_TEMP_mux0000(4),
      O => WORDDATA_TEMP(11),
      SET => GND,
      RST => GND
    );
  WORDDATA_TEMP_12 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => WORDDATA_TEMP_not0001,
      I => WORDDATA_TEMP_mux0000(3),
      O => WORDDATA_TEMP(12),
      SET => GND,
      RST => GND
    );
  WORDDATA_TEMP_13 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => WORDDATA_TEMP_not0001,
      I => WORDDATA_TEMP_mux0000(2),
      O => WORDDATA_TEMP(13),
      SET => GND,
      RST => GND
    );
  WORDDATA_TEMP_14 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => WORDDATA_TEMP_not0001,
      I => WORDDATA_TEMP_mux0000(1),
      O => WORDDATA_TEMP(14),
      SET => GND,
      RST => GND
    );
  WORDDATA_TEMP_15 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => WORDDATA_TEMP_not0001,
      I => WORDDATA_TEMP_mux0000(0),
      O => WORDDATA_TEMP(15),
      SET => GND,
      RST => GND
    );
  PICTUREOK_0 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => PICTUREOK_0_not0001,
      I => PICTUREOK_0_mux0000,
      O => PICTUREOK(0),
      SET => GND,
      RST => GND
    );
  LOADFLASH_0 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => LOADFLASH_0_not0001,
      I => LOADFLASH_0_mux0000_595,
      O => LOADFLASH(0),
      SET => GND,
      RST => GND
    );
  WE_SIGNAL : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => WE_SIGNAL_not0001,
      I => WE_SIGNAL_mux0001,
      O => WE_SIGNAL_1988,
      SET => GND,
      RST => GND
    );
  RESET_0 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => RESET_0_not0001,
      I => DPL_SEG_3_OBUF_397,
      SSET => BTN_IBUF_178,
      O => RESET(0),
      SET => GND,
      RST => GND,
      SRST => GND
    );
  INPRES_0 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => INPRES_0_not0001,
      I => INPRES_0_mux0000,
      O => INPRES(0),
      SET => GND,
      RST => GND
    );
  PRESENTATION_0 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => INPRES_0_not0001,
      I => PRESENTATION_0_mux0000,
      O => PRESENTATION(0),
      SET => GND,
      RST => GND
    );
  COUNTER_RAM_USB_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => COUNTER_RAM_USB_not0001,
      I => COUNTER_RAM_USB_mux0001(18),
      O => COUNTER_RAM_USB(0),
      SET => GND,
      RST => GND
    );
  COUNTER_RAM_USB_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => COUNTER_RAM_USB_not0001,
      I => COUNTER_RAM_USB_mux0001(17),
      O => COUNTER_RAM_USB(1),
      SET => GND,
      RST => GND
    );
  COUNTER_RAM_USB_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => COUNTER_RAM_USB_not0001,
      I => COUNTER_RAM_USB_mux0001(16),
      O => COUNTER_RAM_USB(2),
      SET => GND,
      RST => GND
    );
  COUNTER_RAM_USB_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => COUNTER_RAM_USB_not0001,
      I => COUNTER_RAM_USB_mux0001(15),
      O => COUNTER_RAM_USB(3),
      SET => GND,
      RST => GND
    );
  COUNTER_RAM_USB_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => COUNTER_RAM_USB_not0001,
      I => COUNTER_RAM_USB_mux0001(14),
      O => COUNTER_RAM_USB(4),
      SET => GND,
      RST => GND
    );
  COUNTER_RAM_USB_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => COUNTER_RAM_USB_not0001,
      I => COUNTER_RAM_USB_mux0001(13),
      O => COUNTER_RAM_USB(5),
      SET => GND,
      RST => GND
    );
  COUNTER_RAM_USB_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => COUNTER_RAM_USB_not0001,
      I => COUNTER_RAM_USB_mux0001(12),
      O => COUNTER_RAM_USB(6),
      SET => GND,
      RST => GND
    );
  COUNTER_RAM_USB_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => COUNTER_RAM_USB_not0001,
      I => COUNTER_RAM_USB_mux0001(11),
      O => COUNTER_RAM_USB(7),
      SET => GND,
      RST => GND
    );
  COUNTER_RAM_USB_8 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => COUNTER_RAM_USB_not0001,
      I => COUNTER_RAM_USB_mux0001(10),
      O => COUNTER_RAM_USB(8),
      SET => GND,
      RST => GND
    );
  COUNTER_RAM_USB_9 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => COUNTER_RAM_USB_not0001,
      I => COUNTER_RAM_USB_mux0001(9),
      O => COUNTER_RAM_USB(9),
      SET => GND,
      RST => GND
    );
  COUNTER_RAM_USB_10 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => COUNTER_RAM_USB_not0001,
      I => COUNTER_RAM_USB_mux0001(8),
      O => COUNTER_RAM_USB(10),
      SET => GND,
      RST => GND
    );
  COUNTER_RAM_USB_11 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => COUNTER_RAM_USB_not0001,
      I => COUNTER_RAM_USB_mux0001(7),
      O => COUNTER_RAM_USB(11),
      SET => GND,
      RST => GND
    );
  COUNTER_RAM_USB_12 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => COUNTER_RAM_USB_not0001,
      I => COUNTER_RAM_USB_mux0001(6),
      O => COUNTER_RAM_USB(12),
      SET => GND,
      RST => GND
    );
  COUNTER_RAM_USB_13 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => COUNTER_RAM_USB_not0001,
      I => COUNTER_RAM_USB_mux0001(5),
      O => COUNTER_RAM_USB(13),
      SET => GND,
      RST => GND
    );
  COUNTER_RAM_USB_14 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => COUNTER_RAM_USB_not0001,
      I => COUNTER_RAM_USB_mux0001(4),
      O => COUNTER_RAM_USB(14),
      SET => GND,
      RST => GND
    );
  COUNTER_RAM_USB_15 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => COUNTER_RAM_USB_not0001,
      I => COUNTER_RAM_USB_mux0001(3),
      O => COUNTER_RAM_USB(15),
      SET => GND,
      RST => GND
    );
  COUNTER_RAM_USB_16 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => COUNTER_RAM_USB_not0001,
      I => COUNTER_RAM_USB_mux0001(2),
      O => COUNTER_RAM_USB(16),
      SET => GND,
      RST => GND
    );
  COUNTER_RAM_USB_17 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => COUNTER_RAM_USB_not0001,
      I => COUNTER_RAM_USB_mux0001(1),
      O => COUNTER_RAM_USB(17),
      SET => GND,
      RST => GND
    );
  COUNTER_RAM_USB_18 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => COUNTER_RAM_USB_not0001,
      I => COUNTER_RAM_USB_mux0001(0),
      O => COUNTER_RAM_USB(18),
      SET => GND,
      RST => GND
    );
  POSIM_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => POSIM_not0001_1554,
      I => POSIM_mux0004(4),
      O => POSIM(0),
      SET => GND,
      RST => GND
    );
  POSIM_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => POSIM_not0001_1554,
      I => POSIM_mux0004(3),
      O => POSIM(1),
      SET => GND,
      RST => GND
    );
  POSIM_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => POSIM_not0001_1554,
      I => POSIM_mux0004(2),
      O => POSIM(2),
      SET => GND,
      RST => GND
    );
  POSIM_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => POSIM_not0001_1554,
      I => POSIM_mux0004(1),
      O => POSIM(3),
      SET => GND,
      RST => GND
    );
  POSIM_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => POSIM_not0001_1554,
      I => POSIM_mux0004(0),
      O => POSIM(4),
      SET => GND,
      RST => GND
    );
  PLUSMINUSTAB_0 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => PLUSMINUSTAB_0_not0001,
      I => PLUSMINUSTAB_0_mux0000_1504,
      O => PLUSMINUSTAB(0),
      SET => GND,
      RST => GND
    );
  SHOWINFO_0 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => SHOWINFO_0_not0002,
      I => SHOWINFO_0_not0003,
      O => SHOWINFO(0),
      SET => GND,
      RST => GND
    );
  PLUS_MEMORY_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => PLUS_MEMORY_0_not0001,
      I => PLUS_MEMORY_0_mux0000,
      O => PLUS_MEMORY(0),
      SET => GND,
      RST => GND
    );
  DELAY_PLUS_MEMORY_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => DELAY_PLUS_MEMORY_not0001_380,
      I => DELAY_PLUS_MEMORY_mux0001(2),
      O => DELAY_PLUS_MEMORY(0),
      SET => GND,
      RST => GND
    );
  DELAY_PLUS_MEMORY_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => DELAY_PLUS_MEMORY_not0001_380,
      I => DELAY_PLUS_MEMORY_mux0001(1),
      O => DELAY_PLUS_MEMORY(1),
      SET => GND,
      RST => GND
    );
  DELAY_PLUS_MEMORY_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => DELAY_PLUS_MEMORY_not0001_380,
      I => DELAY_PLUS_MEMORY_mux0001(0),
      O => DELAY_PLUS_MEMORY(2),
      SET => GND,
      RST => GND
    );
  ABORT_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => ABORT_5_not0001,
      I => ABORT_5_mux0000_119,
      O => ABORT(5),
      SET => GND,
      RST => GND
    );
  OE_SIGNAL : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => OE_SIGNAL_not0001_1484,
      I => OE_SIGNAL_mux0000,
      O => OE_SIGNAL_1479,
      SET => GND,
      RST => GND
    );
  RESETCNTDPL_0 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => RESETCNTDPL_0_not0001,
      I => RESETCNTDPL_0_mux0000,
      O => RESETCNTDPL(0),
      SET => GND,
      RST => GND
    );
  ERASE_RAM_0 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => ERASE_RAM_0_not0001,
      I => ERASE_RAM_0_mux0000,
      O => ERASE_RAM(0),
      SET => GND,
      RST => GND
    );
  NORM_NEGA_0 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => NORM_NEGA_0_not0002_1472,
      I => MNGLETTER(17, 2),
      O => NORM_NEGA(0),
      SET => GND,
      RST => GND
    );
  ERASEFLASH_SIGNAL_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => ERASEFLASH_SIGNAL_0_not0001_405,
      I => IMPOS_19_and0017,
      O => ERASEFLASH_SIGNAL(0),
      SET => GND,
      RST => GND
    );
  ST_CE_SIGNAL : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => ST_CE_SIGNAL_not0001,
      I => ST_CE_SIGNAL_mux0000,
      O => ST_CE_SIGNAL_1672,
      SET => GND,
      RST => GND
    );
  CNTPRSTEP_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => CNTPRSTEP_not0001,
      I => CNTPRSTEP_mux0000(1),
      O => CNTPRSTEP(0),
      SET => GND,
      RST => GND
    );
  CNTPRSTEP_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => CNTPRSTEP_not0001,
      I => CNTPRSTEP_mux0000(0),
      O => CNTPRSTEP(1),
      SET => GND,
      RST => GND
    );
  ST_RP_SIGNAL : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => ST_RP_SIGNAL_not0001,
      I => ST_RP_SIGNAL_mux0000,
      O => ST_RP_SIGNAL_1683,
      SET => GND,
      RST => GND
    );
  ERASEFLASH_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => CNTPROCCES_not0001,
      I => ERASEFLASH_0_mux0000,
      O => ERASEFLASH(0),
      SET => GND,
      RST => GND
    );
  IM_16_8_BITS_0 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => IM_16_8_BITS_0_not0001,
      I => IM_16_8_BITS_0_mux0000,
      O => IM_16_8_BITS(0),
      SET => GND,
      RST => GND
    );
  MT_CE_SIGNAL : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => MT_CE_SIGNAL_not0001,
      I => MT_CE_SIGNAL_mux0000,
      O => MT_CE_SIGNAL_624,
      SET => GND,
      RST => GND
    );
  IMPOS_20 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => IMPOS_19_not0001,
      I => IMPOS_20_mux0004,
      O => IMPOS(20),
      SET => GND,
      RST => GND
    );
  LOAD_DATA_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => NPASOS_SAVE_not0001,
      I => LOAD_DATA_0_mux0000,
      O => LOAD_DATA(0),
      SET => GND,
      RST => GND
    );
  IMPOS_21 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => IMPOS_19_not0001,
      I => IMPOS_21_mux0004,
      O => IMPOS(21),
      SET => GND,
      RST => GND
    );
  IMPOS_16 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => IMPOS_19_not0001,
      I => IMPOS_16_mux0004,
      O => IMPOS(16),
      SET => GND,
      RST => GND
    );
  IMPOS_18 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => IMPOS_19_not0001,
      I => IMPOS_18_mux0004,
      O => IMPOS(18),
      SET => GND,
      RST => GND
    );
  IMPOS_22 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => IMPOS_19_not0001,
      I => IMPOS_22_mux0004,
      O => IMPOS(22),
      SET => GND,
      RST => GND
    );
  IMPOS_17 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => IMPOS_19_not0001,
      I => IMPOS_17_mux0004,
      O => IMPOS(17),
      SET => GND,
      RST => GND
    );
  ABORT_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      I => POSIM(0),
      O => ABORT(0),
      CE => VCC,
      SET => GND,
      RST => GND
    );
  ABORT_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      I => POSIM(1),
      O => ABORT(1),
      CE => VCC,
      SET => GND,
      RST => GND
    );
  ABORT_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      I => POSIM(2),
      O => ABORT(2),
      CE => VCC,
      SET => GND,
      RST => GND
    );
  ABORT_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      I => POSIM(3),
      O => ABORT(3),
      CE => VCC,
      SET => GND,
      RST => GND
    );
  ABORT_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      I => POSIM(4),
      O => ABORT(4),
      CE => VCC,
      SET => GND,
      RST => GND
    );
  IMPOS_BLOCKERASE_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => IMPOS_BLOCKERASE_not0001,
      I => IMPOS(16),
      O => IMPOS_BLOCKERASE(0),
      SET => GND,
      RST => GND
    );
  IMPOS_BLOCKERASE_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => IMPOS_BLOCKERASE_not0001,
      I => IMPOS(17),
      O => IMPOS_BLOCKERASE(1),
      SET => GND,
      RST => GND
    );
  IMPOS_BLOCKERASE_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => IMPOS_BLOCKERASE_not0001,
      I => IMPOS(18),
      O => IMPOS_BLOCKERASE(2),
      SET => GND,
      RST => GND
    );
  IMPOS_BLOCKERASE_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => IMPOS_BLOCKERASE_not0001,
      I => IMPOS(19),
      O => IMPOS_BLOCKERASE(3),
      SET => GND,
      RST => GND
    );
  IMPOS_BLOCKERASE_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => IMPOS_BLOCKERASE_not0001,
      I => IMPOS(20),
      O => IMPOS_BLOCKERASE(4),
      SET => GND,
      RST => GND
    );
  IMPOS_BLOCKERASE_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => IMPOS_BLOCKERASE_not0001,
      I => IMPOS(21),
      O => IMPOS_BLOCKERASE(5),
      SET => GND,
      RST => GND
    );
  IMPOS_BLOCKERASE_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => IMPOS_BLOCKERASE_not0001,
      I => IMPOS(22),
      O => IMPOS_BLOCKERASE(6),
      SET => GND,
      RST => GND
    );
  RESET_CNT_USB_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => RESET_CNT_USB_0_not0001,
      I => KBRD_DRIVER_KEY_DOWN(0),
      O => RESET_CNT_USB(0),
      SET => GND,
      RST => GND
    );
  CTRL_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => CTRL_0_not0001_317,
      I => KBRD_DRIVER_KEY_DOWN(0),
      O => CTRL(0),
      SET => GND,
      RST => GND
    );
  ALT_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => ALT_0_not0001,
      I => KBRD_DRIVER_KEY_DOWN(0),
      O => ALT(0),
      SET => GND,
      RST => GND
    );
  Mcount_DELAYFLASH_lut_0_Q : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => ERASE_RAM(0),
      ADR1 => DELAYFLASH(0),
      ADR2 => DELAYFLASH_add0000(0),
      O => Mcount_DELAYFLASH_lut(0)
    );
  Mcount_DELAYFLASH_cy_0_Q : X_MUX2
    port map (
      IB => ERASE_RAM_inv,
      IA => DPL_SEG_3_OBUF_397,
      SEL => Mcount_DELAYFLASH_lut(0),
      O => Mcount_DELAYFLASH_cy(0)
    );
  Mcount_DELAYFLASH_xor_0_Q : X_XOR2
    port map (
      I0 => ERASE_RAM_inv,
      I1 => Mcount_DELAYFLASH_lut(0),
      O => Mcount_DELAYFLASH
    );
  Mcount_DELAYFLASH_lut_1_Q : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => ERASE_RAM(0),
      ADR1 => DELAYFLASH(1),
      ADR2 => DELAYFLASH_add0000(1),
      O => Mcount_DELAYFLASH_lut(1)
    );
  Mcount_DELAYFLASH_cy_1_Q : X_MUX2
    port map (
      IB => Mcount_DELAYFLASH_cy(0),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Mcount_DELAYFLASH_lut(1),
      O => Mcount_DELAYFLASH_cy(1)
    );
  Mcount_DELAYFLASH_xor_1_Q : X_XOR2
    port map (
      I0 => Mcount_DELAYFLASH_cy(0),
      I1 => Mcount_DELAYFLASH_lut(1),
      O => Mcount_DELAYFLASH1
    );
  Mcount_DELAYFLASH_lut_2_Q : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => ERASE_RAM(0),
      ADR1 => DELAYFLASH(2),
      ADR2 => DELAYFLASH_add0000(2),
      O => Mcount_DELAYFLASH_lut(2)
    );
  Mcount_DELAYFLASH_cy_2_Q : X_MUX2
    port map (
      IB => Mcount_DELAYFLASH_cy(1),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Mcount_DELAYFLASH_lut(2),
      O => Mcount_DELAYFLASH_cy(2)
    );
  Mcount_DELAYFLASH_xor_2_Q : X_XOR2
    port map (
      I0 => Mcount_DELAYFLASH_cy(1),
      I1 => Mcount_DELAYFLASH_lut(2),
      O => Mcount_DELAYFLASH2
    );
  Mcount_DELAYFLASH_lut_3_Q : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => ERASE_RAM(0),
      ADR1 => DELAYFLASH(3),
      ADR2 => DELAYFLASH_add0000(3),
      O => Mcount_DELAYFLASH_lut(3)
    );
  Mcount_DELAYFLASH_cy_3_Q : X_MUX2
    port map (
      IB => Mcount_DELAYFLASH_cy(2),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Mcount_DELAYFLASH_lut(3),
      O => Mcount_DELAYFLASH_cy(3)
    );
  Mcount_DELAYFLASH_xor_3_Q : X_XOR2
    port map (
      I0 => Mcount_DELAYFLASH_cy(2),
      I1 => Mcount_DELAYFLASH_lut(3),
      O => Mcount_DELAYFLASH3
    );
  Mcount_DELAYFLASH_lut_4_Q : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => ERASE_RAM(0),
      ADR1 => DELAYFLASH(4),
      ADR2 => DELAYFLASH_add0000(4),
      O => Mcount_DELAYFLASH_lut(4)
    );
  Mcount_DELAYFLASH_cy_4_Q : X_MUX2
    port map (
      IB => Mcount_DELAYFLASH_cy(3),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Mcount_DELAYFLASH_lut(4),
      O => Mcount_DELAYFLASH_cy(4)
    );
  Mcount_DELAYFLASH_xor_4_Q : X_XOR2
    port map (
      I0 => Mcount_DELAYFLASH_cy(3),
      I1 => Mcount_DELAYFLASH_lut(4),
      O => Mcount_DELAYFLASH4
    );
  Mcount_DELAYFLASH_lut_5_Q : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => ERASE_RAM(0),
      ADR1 => DELAYFLASH(5),
      ADR2 => DELAYFLASH_add0000(5),
      O => Mcount_DELAYFLASH_lut(5)
    );
  Mcount_DELAYFLASH_cy_5_Q : X_MUX2
    port map (
      IB => Mcount_DELAYFLASH_cy(4),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Mcount_DELAYFLASH_lut(5),
      O => Mcount_DELAYFLASH_cy(5)
    );
  Mcount_DELAYFLASH_xor_5_Q : X_XOR2
    port map (
      I0 => Mcount_DELAYFLASH_cy(4),
      I1 => Mcount_DELAYFLASH_lut(5),
      O => Mcount_DELAYFLASH5
    );
  Mcount_DELAYFLASH_lut_6_Q : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => ERASE_RAM(0),
      ADR1 => DELAYFLASH(6),
      ADR2 => DELAYFLASH_add0000(6),
      O => Mcount_DELAYFLASH_lut(6)
    );
  Mcount_DELAYFLASH_cy_6_Q : X_MUX2
    port map (
      IB => Mcount_DELAYFLASH_cy(5),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Mcount_DELAYFLASH_lut(6),
      O => Mcount_DELAYFLASH_cy(6)
    );
  Mcount_DELAYFLASH_xor_6_Q : X_XOR2
    port map (
      I0 => Mcount_DELAYFLASH_cy(5),
      I1 => Mcount_DELAYFLASH_lut(6),
      O => Mcount_DELAYFLASH6
    );
  Mcount_DELAYFLASH_lut_7_Q : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => ERASE_RAM(0),
      ADR1 => DELAYFLASH(7),
      ADR2 => DELAYFLASH_add0000(7),
      O => Mcount_DELAYFLASH_lut(7)
    );
  Mcount_DELAYFLASH_cy_7_Q : X_MUX2
    port map (
      IB => Mcount_DELAYFLASH_cy(6),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Mcount_DELAYFLASH_lut(7),
      O => Mcount_DELAYFLASH_cy(7)
    );
  Mcount_DELAYFLASH_xor_7_Q : X_XOR2
    port map (
      I0 => Mcount_DELAYFLASH_cy(6),
      I1 => Mcount_DELAYFLASH_lut(7),
      O => Mcount_DELAYFLASH7
    );
  Mcount_DELAYFLASH_lut_8_Q : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => ERASE_RAM(0),
      ADR1 => DELAYFLASH(8),
      ADR2 => DELAYFLASH_add0000(8),
      O => Mcount_DELAYFLASH_lut(8)
    );
  Mcount_DELAYFLASH_cy_8_Q : X_MUX2
    port map (
      IB => Mcount_DELAYFLASH_cy(7),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Mcount_DELAYFLASH_lut(8),
      O => Mcount_DELAYFLASH_cy(8)
    );
  Mcount_DELAYFLASH_xor_8_Q : X_XOR2
    port map (
      I0 => Mcount_DELAYFLASH_cy(7),
      I1 => Mcount_DELAYFLASH_lut(8),
      O => Mcount_DELAYFLASH8
    );
  Mcount_DELAYFLASH_lut_9_Q : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => ERASE_RAM(0),
      ADR1 => DELAYFLASH(9),
      ADR2 => DELAYFLASH_add0000(9),
      O => Mcount_DELAYFLASH_lut(9)
    );
  Mcount_DELAYFLASH_xor_9_Q : X_XOR2
    port map (
      I0 => Mcount_DELAYFLASH_cy(8),
      I1 => Mcount_DELAYFLASH_lut(9),
      O => Mcount_DELAYFLASH9
    );
  NPASOS_SAVE_0 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => NPASOS_SAVE_not0001,
      I => Result(0),
      SRST => NPASOS_SAVE_or0000,
      O => NPASOS_SAVE(0),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  NPASOS_SAVE_1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => NPASOS_SAVE_not0001,
      I => Result(1),
      SRST => NPASOS_SAVE_or0000,
      O => NPASOS_SAVE(1),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  NPASOS_SAVE_2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => NPASOS_SAVE_not0001,
      I => Result(2),
      SRST => NPASOS_SAVE_or0000,
      O => NPASOS_SAVE(2),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  CNTDPL_0 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      I => Result_0_1,
      SRST => CNTDPL_or0000,
      O => CNTDPL(0),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  CNTDPL_1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      I => Result_1_1,
      SRST => CNTDPL_or0000,
      O => CNTDPL(1),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  CNTDPL_2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      I => Result_2_1,
      SRST => CNTDPL_or0000,
      O => CNTDPL(2),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  CNTDPL_3 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      I => Result(3),
      SRST => CNTDPL_or0000,
      O => CNTDPL(3),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  CNTDPL_4 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      I => Result(4),
      SRST => CNTDPL_or0000,
      O => CNTDPL(4),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  CNTDPL_5 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      I => Result(5),
      SRST => CNTDPL_or0000,
      O => CNTDPL(5),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  CNTDPL_6 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      I => Result(6),
      SRST => CNTDPL_or0000,
      O => CNTDPL(6),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  CNTDPL_7 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      I => Result(7),
      SRST => CNTDPL_or0000,
      O => CNTDPL(7),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  CNTDPL_8 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      I => Result(8),
      SRST => CNTDPL_or0000,
      O => CNTDPL(8),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  CNTDPL_9 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      I => Result(9),
      SRST => CNTDPL_or0000,
      O => CNTDPL(9),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  CNTDPL_10 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      I => Result(10),
      SRST => CNTDPL_or0000,
      O => CNTDPL(10),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  CNTDPL_11 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      I => Result(11),
      SRST => CNTDPL_or0000,
      O => CNTDPL(11),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  CNTDPL_12 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      I => Result(12),
      SRST => CNTDPL_or0000,
      O => CNTDPL(12),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  CNTDPL_13 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      I => Result(13),
      SRST => CNTDPL_or0000,
      O => CNTDPL(13),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  CNTDPL_14 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      I => Result(14),
      SRST => CNTDPL_or0000,
      O => CNTDPL(14),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  CNTDPL_15 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      I => Result(15),
      SRST => CNTDPL_or0000,
      O => CNTDPL(15),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  CNTDPL_16 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      I => Result(16),
      SRST => CNTDPL_or0000,
      O => CNTDPL(16),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  CNTDPL_17 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      I => Result(17),
      SRST => CNTDPL_or0000,
      O => CNTDPL(17),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  CNTDPL_18 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      I => Result(18),
      SRST => CNTDPL_or0000,
      O => CNTDPL(18),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  CNTDPL_19 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      I => Result(19),
      SRST => CNTDPL_or0000,
      O => CNTDPL(19),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  CNTDPL_20 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      I => Result(20),
      SRST => CNTDPL_or0000,
      O => CNTDPL(20),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  CNTDPL_21 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      I => Result(21),
      SRST => CNTDPL_or0000,
      O => CNTDPL(21),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  CNTDPL_22 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      I => Result(22),
      SRST => CNTDPL_or0000,
      O => CNTDPL(22),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  CNTDPL_23 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      I => Result(23),
      SRST => CNTDPL_or0000,
      O => CNTDPL(23),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  CNTDPL_24 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      I => Result(24),
      SRST => CNTDPL_or0000,
      O => CNTDPL(24),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  CNTDPL_25 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      I => Result(25),
      SRST => CNTDPL_or0000,
      O => CNTDPL(25),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  CNTPROCCES_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => CNTPROCCES_not0001,
      I => Mcount_CNTPROCCES,
      O => CNTPROCCES(0),
      SET => GND,
      RST => GND
    );
  CNTPROCCES_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => CNTPROCCES_not0001,
      I => Mcount_CNTPROCCES1,
      O => CNTPROCCES(1),
      SET => GND,
      RST => GND
    );
  CNTPROCCES_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => CNTPROCCES_not0001,
      I => Mcount_CNTPROCCES2,
      O => CNTPROCCES(2),
      SET => GND,
      RST => GND
    );
  CNTPROCCES_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => CNTPROCCES_not0001,
      I => Mcount_CNTPROCCES3,
      O => CNTPROCCES(3),
      SET => GND,
      RST => GND
    );
  MNGDPL_0 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => MNGDPL_cmp_eq0000,
      I => DPL_ENABLE_0_OBUF_385,
      SRST => RESETCNTDPL(0),
      O => MNGDPL(0),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  MNGDPL_1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => MNGDPL_cmp_eq0000,
      I => Result_1_2,
      SRST => RESETCNTDPL(0),
      O => MNGDPL(1),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  MNGDPL_2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => MNGDPL_cmp_eq0000,
      I => Result_2_2,
      SRST => RESETCNTDPL(0),
      O => MNGDPL(2),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  MNGDPL_3 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => MNGDPL_cmp_eq0000,
      I => Result_3_1,
      SRST => RESETCNTDPL(0),
      O => MNGDPL(3),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  DELAYFLASH_0 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => DELAYFLASH_not0001,
      I => Mcount_DELAYFLASH,
      SRST => DELAYFLASH_or0000,
      O => DELAYFLASH(0),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  DELAYFLASH_1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => DELAYFLASH_not0001,
      I => Mcount_DELAYFLASH1,
      SRST => DELAYFLASH_or0000,
      O => DELAYFLASH(1),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  DELAYFLASH_2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => DELAYFLASH_not0001,
      I => Mcount_DELAYFLASH2,
      SRST => DELAYFLASH_or0000,
      O => DELAYFLASH(2),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  DELAYFLASH_3 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => DELAYFLASH_not0001,
      I => Mcount_DELAYFLASH3,
      SRST => DELAYFLASH_or0000,
      O => DELAYFLASH(3),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  DELAYFLASH_4 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => DELAYFLASH_not0001,
      I => Mcount_DELAYFLASH4,
      SRST => DELAYFLASH_or0000,
      O => DELAYFLASH(4),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  DELAYFLASH_5 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => DELAYFLASH_not0001,
      I => Mcount_DELAYFLASH5,
      SRST => DELAYFLASH_or0000,
      O => DELAYFLASH(5),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  DELAYFLASH_6 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => DELAYFLASH_not0001,
      I => Mcount_DELAYFLASH6,
      SRST => DELAYFLASH_or0000,
      O => DELAYFLASH(6),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  DELAYFLASH_7 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => DELAYFLASH_not0001,
      I => Mcount_DELAYFLASH7,
      SRST => DELAYFLASH_or0000,
      O => DELAYFLASH(7),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  DELAYFLASH_8 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => DELAYFLASH_not0001,
      I => Mcount_DELAYFLASH8,
      SRST => DELAYFLASH_or0000,
      O => DELAYFLASH(8),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  DELAYFLASH_9 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => DELAYFLASH_not0001,
      I => Mcount_DELAYFLASH9,
      SRST => DELAYFLASH_or0000,
      O => DELAYFLASH(9),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Madd_POS_MEMORY_NAT_cy_16_Q : X_MUX2
    port map (
      IB => DPL_SEG_3_OBUF_397,
      IA => IMPOS(16),
      SEL => Madd_POS_MEMORY_NAT_lut(16),
      O => Madd_POS_MEMORY_NAT_cy(16)
    );
  Madd_POS_MEMORY_NAT_xor_16_Q : X_XOR2
    port map (
      I0 => DPL_SEG_3_OBUF_397,
      I1 => Madd_POS_MEMORY_NAT_lut(16),
      O => ADDR_16_OBUF_153
    );
  Madd_POS_MEMORY_NAT_cy_17_Q : X_MUX2
    port map (
      IB => Madd_POS_MEMORY_NAT_cy(16),
      IA => IMPOS(17),
      SEL => Madd_POS_MEMORY_NAT_lut(17),
      O => Madd_POS_MEMORY_NAT_cy(17)
    );
  Madd_POS_MEMORY_NAT_xor_17_Q : X_XOR2
    port map (
      I0 => Madd_POS_MEMORY_NAT_cy(16),
      I1 => Madd_POS_MEMORY_NAT_lut(17),
      O => ADDR_17_OBUF_154
    );
  Madd_POS_MEMORY_NAT_cy_18_Q : X_MUX2
    port map (
      IB => Madd_POS_MEMORY_NAT_cy(17),
      IA => IMPOS(18),
      SEL => Madd_POS_MEMORY_NAT_lut(18),
      O => Madd_POS_MEMORY_NAT_cy(18)
    );
  Madd_POS_MEMORY_NAT_xor_18_Q : X_XOR2
    port map (
      I0 => Madd_POS_MEMORY_NAT_cy(17),
      I1 => Madd_POS_MEMORY_NAT_lut(18),
      O => ADDR_18_OBUF_155
    );
  Madd_POS_MEMORY_NAT_cy_19_Q : X_MUX2
    port map (
      IB => Madd_POS_MEMORY_NAT_cy(18),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Madd_POS_MEMORY_NAT_cy_19_rt_699,
      O => Madd_POS_MEMORY_NAT_cy(19)
    );
  Madd_POS_MEMORY_NAT_xor_19_Q : X_XOR2
    port map (
      I0 => Madd_POS_MEMORY_NAT_cy(18),
      I1 => Madd_POS_MEMORY_NAT_cy_19_rt_699,
      O => ADDR_19_OBUF_156
    );
  Madd_POS_MEMORY_NAT_cy_20_Q : X_MUX2
    port map (
      IB => Madd_POS_MEMORY_NAT_cy(19),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Madd_POS_MEMORY_NAT_cy_20_rt_701,
      O => Madd_POS_MEMORY_NAT_cy(20)
    );
  Madd_POS_MEMORY_NAT_xor_20_Q : X_XOR2
    port map (
      I0 => Madd_POS_MEMORY_NAT_cy(19),
      I1 => Madd_POS_MEMORY_NAT_cy_20_rt_701,
      O => ADDR_20_OBUF_158
    );
  Madd_POS_MEMORY_NAT_cy_21_Q : X_MUX2
    port map (
      IB => Madd_POS_MEMORY_NAT_cy(20),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Madd_POS_MEMORY_NAT_cy_21_rt_703,
      O => Madd_POS_MEMORY_NAT_cy(21)
    );
  Madd_POS_MEMORY_NAT_xor_21_Q : X_XOR2
    port map (
      I0 => Madd_POS_MEMORY_NAT_cy(20),
      I1 => Madd_POS_MEMORY_NAT_cy_21_rt_703,
      O => ADDR_21_OBUF_159
    );
  Madd_POS_MEMORY_NAT_xor_22_Q : X_XOR2
    port map (
      I0 => Madd_POS_MEMORY_NAT_cy(21),
      I1 => Madd_POS_MEMORY_NAT_xor_22_rt_707,
      O => ADDR_22_OBUF_160
    );
  Madd_DELAYFLASH_add0000_cy_0_Q : X_MUX2
    port map (
      IB => DPL_SEG_3_OBUF_397,
      IA => DPL_SEG_0_OBUF_396,
      SEL => Madd_DELAYFLASH_add0000_lut(0),
      O => Madd_DELAYFLASH_add0000_cy(0)
    );
  Madd_DELAYFLASH_add0000_xor_0_Q : X_XOR2
    port map (
      I0 => DPL_SEG_3_OBUF_397,
      I1 => Madd_DELAYFLASH_add0000_lut(0),
      O => DELAYFLASH_add0000(0)
    );
  Madd_DELAYFLASH_add0000_cy_1_Q : X_MUX2
    port map (
      IB => Madd_DELAYFLASH_add0000_cy(0),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Madd_DELAYFLASH_add0000_cy_1_rt_671,
      O => Madd_DELAYFLASH_add0000_cy(1)
    );
  Madd_DELAYFLASH_add0000_xor_1_Q : X_XOR2
    port map (
      I0 => Madd_DELAYFLASH_add0000_cy(0),
      I1 => Madd_DELAYFLASH_add0000_cy_1_rt_671,
      O => DELAYFLASH_add0000(1)
    );
  Madd_DELAYFLASH_add0000_cy_2_Q : X_MUX2
    port map (
      IB => Madd_DELAYFLASH_add0000_cy(1),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Madd_DELAYFLASH_add0000_cy_2_rt_673,
      O => Madd_DELAYFLASH_add0000_cy(2)
    );
  Madd_DELAYFLASH_add0000_xor_2_Q : X_XOR2
    port map (
      I0 => Madd_DELAYFLASH_add0000_cy(1),
      I1 => Madd_DELAYFLASH_add0000_cy_2_rt_673,
      O => DELAYFLASH_add0000(2)
    );
  Madd_DELAYFLASH_add0000_cy_3_Q : X_MUX2
    port map (
      IB => Madd_DELAYFLASH_add0000_cy(2),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Madd_DELAYFLASH_add0000_cy_3_rt_675,
      O => Madd_DELAYFLASH_add0000_cy(3)
    );
  Madd_DELAYFLASH_add0000_xor_3_Q : X_XOR2
    port map (
      I0 => Madd_DELAYFLASH_add0000_cy(2),
      I1 => Madd_DELAYFLASH_add0000_cy_3_rt_675,
      O => DELAYFLASH_add0000(3)
    );
  Madd_DELAYFLASH_add0000_cy_4_Q : X_MUX2
    port map (
      IB => Madd_DELAYFLASH_add0000_cy(3),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Madd_DELAYFLASH_add0000_cy_4_rt_677,
      O => Madd_DELAYFLASH_add0000_cy(4)
    );
  Madd_DELAYFLASH_add0000_xor_4_Q : X_XOR2
    port map (
      I0 => Madd_DELAYFLASH_add0000_cy(3),
      I1 => Madd_DELAYFLASH_add0000_cy_4_rt_677,
      O => DELAYFLASH_add0000(4)
    );
  Madd_DELAYFLASH_add0000_cy_5_Q : X_MUX2
    port map (
      IB => Madd_DELAYFLASH_add0000_cy(4),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Madd_DELAYFLASH_add0000_cy_5_rt_679,
      O => Madd_DELAYFLASH_add0000_cy(5)
    );
  Madd_DELAYFLASH_add0000_xor_5_Q : X_XOR2
    port map (
      I0 => Madd_DELAYFLASH_add0000_cy(4),
      I1 => Madd_DELAYFLASH_add0000_cy_5_rt_679,
      O => DELAYFLASH_add0000(5)
    );
  Madd_DELAYFLASH_add0000_cy_6_Q : X_MUX2
    port map (
      IB => Madd_DELAYFLASH_add0000_cy(5),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Madd_DELAYFLASH_add0000_cy_6_rt_681,
      O => Madd_DELAYFLASH_add0000_cy(6)
    );
  Madd_DELAYFLASH_add0000_xor_6_Q : X_XOR2
    port map (
      I0 => Madd_DELAYFLASH_add0000_cy(5),
      I1 => Madd_DELAYFLASH_add0000_cy_6_rt_681,
      O => DELAYFLASH_add0000(6)
    );
  Madd_DELAYFLASH_add0000_cy_7_Q : X_MUX2
    port map (
      IB => Madd_DELAYFLASH_add0000_cy(6),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Madd_DELAYFLASH_add0000_cy_7_rt_683,
      O => Madd_DELAYFLASH_add0000_cy(7)
    );
  Madd_DELAYFLASH_add0000_xor_7_Q : X_XOR2
    port map (
      I0 => Madd_DELAYFLASH_add0000_cy(6),
      I1 => Madd_DELAYFLASH_add0000_cy_7_rt_683,
      O => DELAYFLASH_add0000(7)
    );
  Madd_DELAYFLASH_add0000_cy_8_Q : X_MUX2
    port map (
      IB => Madd_DELAYFLASH_add0000_cy(7),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Madd_DELAYFLASH_add0000_cy_8_rt_685,
      O => Madd_DELAYFLASH_add0000_cy(8)
    );
  Madd_DELAYFLASH_add0000_xor_8_Q : X_XOR2
    port map (
      I0 => Madd_DELAYFLASH_add0000_cy(7),
      I1 => Madd_DELAYFLASH_add0000_cy_8_rt_685,
      O => DELAYFLASH_add0000(8)
    );
  Madd_DELAYFLASH_add0000_xor_9_Q : X_XOR2
    port map (
      I0 => Madd_DELAYFLASH_add0000_cy(8),
      I1 => Madd_DELAYFLASH_add0000_xor_9_rt_687,
      O => DELAYFLASH_add0000(9)
    );
  Madd_COUNTER_RAM_USB_add0000_cy_0_Q : X_MUX2
    port map (
      IB => DPL_SEG_3_OBUF_397,
      IA => DPL_SEG_0_OBUF_396,
      SEL => Madd_COUNTER_RAM_USB_add0000_lut(0),
      O => Madd_COUNTER_RAM_USB_add0000_cy(0)
    );
  Madd_COUNTER_RAM_USB_add0000_xor_0_Q : X_XOR2
    port map (
      I0 => DPL_SEG_3_OBUF_397,
      I1 => Madd_COUNTER_RAM_USB_add0000_lut(0),
      O => COUNTER_RAM_USB_add0000(0)
    );
  Madd_COUNTER_RAM_USB_add0000_cy_1_Q : X_MUX2
    port map (
      IB => Madd_COUNTER_RAM_USB_add0000_cy(0),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Madd_COUNTER_RAM_USB_add0000_cy_1_rt_650,
      O => Madd_COUNTER_RAM_USB_add0000_cy(1)
    );
  Madd_COUNTER_RAM_USB_add0000_xor_1_Q : X_XOR2
    port map (
      I0 => Madd_COUNTER_RAM_USB_add0000_cy(0),
      I1 => Madd_COUNTER_RAM_USB_add0000_cy_1_rt_650,
      O => COUNTER_RAM_USB_add0000(1)
    );
  Madd_COUNTER_RAM_USB_add0000_cy_2_Q : X_MUX2
    port map (
      IB => Madd_COUNTER_RAM_USB_add0000_cy(1),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Madd_COUNTER_RAM_USB_add0000_cy_2_rt_652,
      O => Madd_COUNTER_RAM_USB_add0000_cy(2)
    );
  Madd_COUNTER_RAM_USB_add0000_xor_2_Q : X_XOR2
    port map (
      I0 => Madd_COUNTER_RAM_USB_add0000_cy(1),
      I1 => Madd_COUNTER_RAM_USB_add0000_cy_2_rt_652,
      O => COUNTER_RAM_USB_add0000(2)
    );
  Madd_COUNTER_RAM_USB_add0000_cy_3_Q : X_MUX2
    port map (
      IB => Madd_COUNTER_RAM_USB_add0000_cy(2),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Madd_COUNTER_RAM_USB_add0000_cy_3_rt_654,
      O => Madd_COUNTER_RAM_USB_add0000_cy(3)
    );
  Madd_COUNTER_RAM_USB_add0000_xor_3_Q : X_XOR2
    port map (
      I0 => Madd_COUNTER_RAM_USB_add0000_cy(2),
      I1 => Madd_COUNTER_RAM_USB_add0000_cy_3_rt_654,
      O => COUNTER_RAM_USB_add0000(3)
    );
  Madd_COUNTER_RAM_USB_add0000_cy_4_Q : X_MUX2
    port map (
      IB => Madd_COUNTER_RAM_USB_add0000_cy(3),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Madd_COUNTER_RAM_USB_add0000_cy_4_rt_656,
      O => Madd_COUNTER_RAM_USB_add0000_cy(4)
    );
  Madd_COUNTER_RAM_USB_add0000_xor_4_Q : X_XOR2
    port map (
      I0 => Madd_COUNTER_RAM_USB_add0000_cy(3),
      I1 => Madd_COUNTER_RAM_USB_add0000_cy_4_rt_656,
      O => COUNTER_RAM_USB_add0000(4)
    );
  Madd_COUNTER_RAM_USB_add0000_cy_5_Q : X_MUX2
    port map (
      IB => Madd_COUNTER_RAM_USB_add0000_cy(4),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Madd_COUNTER_RAM_USB_add0000_cy_5_rt_658,
      O => Madd_COUNTER_RAM_USB_add0000_cy(5)
    );
  Madd_COUNTER_RAM_USB_add0000_xor_5_Q : X_XOR2
    port map (
      I0 => Madd_COUNTER_RAM_USB_add0000_cy(4),
      I1 => Madd_COUNTER_RAM_USB_add0000_cy_5_rt_658,
      O => COUNTER_RAM_USB_add0000(5)
    );
  Madd_COUNTER_RAM_USB_add0000_cy_6_Q : X_MUX2
    port map (
      IB => Madd_COUNTER_RAM_USB_add0000_cy(5),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Madd_COUNTER_RAM_USB_add0000_cy_6_rt_660,
      O => Madd_COUNTER_RAM_USB_add0000_cy(6)
    );
  Madd_COUNTER_RAM_USB_add0000_xor_6_Q : X_XOR2
    port map (
      I0 => Madd_COUNTER_RAM_USB_add0000_cy(5),
      I1 => Madd_COUNTER_RAM_USB_add0000_cy_6_rt_660,
      O => COUNTER_RAM_USB_add0000(6)
    );
  Madd_COUNTER_RAM_USB_add0000_cy_7_Q : X_MUX2
    port map (
      IB => Madd_COUNTER_RAM_USB_add0000_cy(6),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Madd_COUNTER_RAM_USB_add0000_cy_7_rt_662,
      O => Madd_COUNTER_RAM_USB_add0000_cy(7)
    );
  Madd_COUNTER_RAM_USB_add0000_xor_7_Q : X_XOR2
    port map (
      I0 => Madd_COUNTER_RAM_USB_add0000_cy(6),
      I1 => Madd_COUNTER_RAM_USB_add0000_cy_7_rt_662,
      O => COUNTER_RAM_USB_add0000(7)
    );
  Madd_COUNTER_RAM_USB_add0000_cy_8_Q : X_MUX2
    port map (
      IB => Madd_COUNTER_RAM_USB_add0000_cy(7),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Madd_COUNTER_RAM_USB_add0000_cy_8_rt_664,
      O => Madd_COUNTER_RAM_USB_add0000_cy(8)
    );
  Madd_COUNTER_RAM_USB_add0000_xor_8_Q : X_XOR2
    port map (
      I0 => Madd_COUNTER_RAM_USB_add0000_cy(7),
      I1 => Madd_COUNTER_RAM_USB_add0000_cy_8_rt_664,
      O => COUNTER_RAM_USB_add0000(8)
    );
  Madd_COUNTER_RAM_USB_add0000_cy_9_Q : X_MUX2
    port map (
      IB => Madd_COUNTER_RAM_USB_add0000_cy(8),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Madd_COUNTER_RAM_USB_add0000_cy_9_rt_666,
      O => Madd_COUNTER_RAM_USB_add0000_cy(9)
    );
  Madd_COUNTER_RAM_USB_add0000_xor_9_Q : X_XOR2
    port map (
      I0 => Madd_COUNTER_RAM_USB_add0000_cy(8),
      I1 => Madd_COUNTER_RAM_USB_add0000_cy_9_rt_666,
      O => COUNTER_RAM_USB_add0000(9)
    );
  Madd_COUNTER_RAM_USB_add0000_cy_10_Q : X_MUX2
    port map (
      IB => Madd_COUNTER_RAM_USB_add0000_cy(9),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Madd_COUNTER_RAM_USB_add0000_cy_10_rt_634,
      O => Madd_COUNTER_RAM_USB_add0000_cy(10)
    );
  Madd_COUNTER_RAM_USB_add0000_xor_10_Q : X_XOR2
    port map (
      I0 => Madd_COUNTER_RAM_USB_add0000_cy(9),
      I1 => Madd_COUNTER_RAM_USB_add0000_cy_10_rt_634,
      O => COUNTER_RAM_USB_add0000(10)
    );
  Madd_COUNTER_RAM_USB_add0000_cy_11_Q : X_MUX2
    port map (
      IB => Madd_COUNTER_RAM_USB_add0000_cy(10),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Madd_COUNTER_RAM_USB_add0000_cy_11_rt_636,
      O => Madd_COUNTER_RAM_USB_add0000_cy(11)
    );
  Madd_COUNTER_RAM_USB_add0000_xor_11_Q : X_XOR2
    port map (
      I0 => Madd_COUNTER_RAM_USB_add0000_cy(10),
      I1 => Madd_COUNTER_RAM_USB_add0000_cy_11_rt_636,
      O => COUNTER_RAM_USB_add0000(11)
    );
  Madd_COUNTER_RAM_USB_add0000_cy_12_Q : X_MUX2
    port map (
      IB => Madd_COUNTER_RAM_USB_add0000_cy(11),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Madd_COUNTER_RAM_USB_add0000_cy_12_rt_638,
      O => Madd_COUNTER_RAM_USB_add0000_cy(12)
    );
  Madd_COUNTER_RAM_USB_add0000_xor_12_Q : X_XOR2
    port map (
      I0 => Madd_COUNTER_RAM_USB_add0000_cy(11),
      I1 => Madd_COUNTER_RAM_USB_add0000_cy_12_rt_638,
      O => COUNTER_RAM_USB_add0000(12)
    );
  Madd_COUNTER_RAM_USB_add0000_cy_13_Q : X_MUX2
    port map (
      IB => Madd_COUNTER_RAM_USB_add0000_cy(12),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Madd_COUNTER_RAM_USB_add0000_cy_13_rt_640,
      O => Madd_COUNTER_RAM_USB_add0000_cy(13)
    );
  Madd_COUNTER_RAM_USB_add0000_xor_13_Q : X_XOR2
    port map (
      I0 => Madd_COUNTER_RAM_USB_add0000_cy(12),
      I1 => Madd_COUNTER_RAM_USB_add0000_cy_13_rt_640,
      O => COUNTER_RAM_USB_add0000(13)
    );
  Madd_COUNTER_RAM_USB_add0000_cy_14_Q : X_MUX2
    port map (
      IB => Madd_COUNTER_RAM_USB_add0000_cy(13),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Madd_COUNTER_RAM_USB_add0000_cy_14_rt_642,
      O => Madd_COUNTER_RAM_USB_add0000_cy(14)
    );
  Madd_COUNTER_RAM_USB_add0000_xor_14_Q : X_XOR2
    port map (
      I0 => Madd_COUNTER_RAM_USB_add0000_cy(13),
      I1 => Madd_COUNTER_RAM_USB_add0000_cy_14_rt_642,
      O => COUNTER_RAM_USB_add0000(14)
    );
  Madd_COUNTER_RAM_USB_add0000_cy_15_Q : X_MUX2
    port map (
      IB => Madd_COUNTER_RAM_USB_add0000_cy(14),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Madd_COUNTER_RAM_USB_add0000_cy_15_rt_644,
      O => Madd_COUNTER_RAM_USB_add0000_cy(15)
    );
  Madd_COUNTER_RAM_USB_add0000_xor_15_Q : X_XOR2
    port map (
      I0 => Madd_COUNTER_RAM_USB_add0000_cy(14),
      I1 => Madd_COUNTER_RAM_USB_add0000_cy_15_rt_644,
      O => COUNTER_RAM_USB_add0000(15)
    );
  Madd_COUNTER_RAM_USB_add0000_cy_16_Q : X_MUX2
    port map (
      IB => Madd_COUNTER_RAM_USB_add0000_cy(15),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Madd_COUNTER_RAM_USB_add0000_cy_16_rt_646,
      O => Madd_COUNTER_RAM_USB_add0000_cy(16)
    );
  Madd_COUNTER_RAM_USB_add0000_xor_16_Q : X_XOR2
    port map (
      I0 => Madd_COUNTER_RAM_USB_add0000_cy(15),
      I1 => Madd_COUNTER_RAM_USB_add0000_cy_16_rt_646,
      O => COUNTER_RAM_USB_add0000(16)
    );
  Madd_COUNTER_RAM_USB_add0000_cy_17_Q : X_MUX2
    port map (
      IB => Madd_COUNTER_RAM_USB_add0000_cy(16),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Madd_COUNTER_RAM_USB_add0000_cy_17_rt_648,
      O => Madd_COUNTER_RAM_USB_add0000_cy(17)
    );
  Madd_COUNTER_RAM_USB_add0000_xor_17_Q : X_XOR2
    port map (
      I0 => Madd_COUNTER_RAM_USB_add0000_cy(16),
      I1 => Madd_COUNTER_RAM_USB_add0000_cy_17_rt_648,
      O => COUNTER_RAM_USB_add0000(17)
    );
  Madd_COUNTER_RAM_USB_add0000_xor_18_Q : X_XOR2
    port map (
      I0 => Madd_COUNTER_RAM_USB_add0000_cy(17),
      I1 => Madd_COUNTER_RAM_USB_add0000_xor_18_rt_668,
      O => COUNTER_RAM_USB_add0000(18)
    );
  Mcount_CNTDPL_cy_0_Q : X_MUX2
    port map (
      IB => DPL_SEG_3_OBUF_397,
      IA => DPL_SEG_0_OBUF_396,
      SEL => Mcount_CNTDPL_lut(0),
      O => Mcount_CNTDPL_cy(0)
    );
  Mcount_CNTDPL_xor_0_Q : X_XOR2
    port map (
      I0 => DPL_SEG_3_OBUF_397,
      I1 => Mcount_CNTDPL_lut(0),
      O => Result_0_1
    );
  Mcount_CNTDPL_cy_1_Q : X_MUX2
    port map (
      IB => Mcount_CNTDPL_cy(0),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Mcount_CNTDPL_cy_1_rt_730,
      O => Mcount_CNTDPL_cy(1)
    );
  Mcount_CNTDPL_xor_1_Q : X_XOR2
    port map (
      I0 => Mcount_CNTDPL_cy(0),
      I1 => Mcount_CNTDPL_cy_1_rt_730,
      O => Result_1_1
    );
  Mcount_CNTDPL_cy_2_Q : X_MUX2
    port map (
      IB => Mcount_CNTDPL_cy(1),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Mcount_CNTDPL_cy_2_rt_742,
      O => Mcount_CNTDPL_cy(2)
    );
  Mcount_CNTDPL_xor_2_Q : X_XOR2
    port map (
      I0 => Mcount_CNTDPL_cy(1),
      I1 => Mcount_CNTDPL_cy_2_rt_742,
      O => Result_2_1
    );
  Mcount_CNTDPL_cy_3_Q : X_MUX2
    port map (
      IB => Mcount_CNTDPL_cy(2),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Mcount_CNTDPL_cy_3_rt_744,
      O => Mcount_CNTDPL_cy(3)
    );
  Mcount_CNTDPL_xor_3_Q : X_XOR2
    port map (
      I0 => Mcount_CNTDPL_cy(2),
      I1 => Mcount_CNTDPL_cy_3_rt_744,
      O => Result(3)
    );
  Mcount_CNTDPL_cy_4_Q : X_MUX2
    port map (
      IB => Mcount_CNTDPL_cy(3),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Mcount_CNTDPL_cy_4_rt_746,
      O => Mcount_CNTDPL_cy(4)
    );
  Mcount_CNTDPL_xor_4_Q : X_XOR2
    port map (
      I0 => Mcount_CNTDPL_cy(3),
      I1 => Mcount_CNTDPL_cy_4_rt_746,
      O => Result(4)
    );
  Mcount_CNTDPL_cy_5_Q : X_MUX2
    port map (
      IB => Mcount_CNTDPL_cy(4),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Mcount_CNTDPL_cy_5_rt_748,
      O => Mcount_CNTDPL_cy(5)
    );
  Mcount_CNTDPL_xor_5_Q : X_XOR2
    port map (
      I0 => Mcount_CNTDPL_cy(4),
      I1 => Mcount_CNTDPL_cy_5_rt_748,
      O => Result(5)
    );
  Mcount_CNTDPL_cy_6_Q : X_MUX2
    port map (
      IB => Mcount_CNTDPL_cy(5),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Mcount_CNTDPL_cy_6_rt_750,
      O => Mcount_CNTDPL_cy(6)
    );
  Mcount_CNTDPL_xor_6_Q : X_XOR2
    port map (
      I0 => Mcount_CNTDPL_cy(5),
      I1 => Mcount_CNTDPL_cy_6_rt_750,
      O => Result(6)
    );
  Mcount_CNTDPL_cy_7_Q : X_MUX2
    port map (
      IB => Mcount_CNTDPL_cy(6),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Mcount_CNTDPL_cy_7_rt_752,
      O => Mcount_CNTDPL_cy(7)
    );
  Mcount_CNTDPL_xor_7_Q : X_XOR2
    port map (
      I0 => Mcount_CNTDPL_cy(6),
      I1 => Mcount_CNTDPL_cy_7_rt_752,
      O => Result(7)
    );
  Mcount_CNTDPL_cy_8_Q : X_MUX2
    port map (
      IB => Mcount_CNTDPL_cy(7),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Mcount_CNTDPL_cy_8_rt_754,
      O => Mcount_CNTDPL_cy(8)
    );
  Mcount_CNTDPL_xor_8_Q : X_XOR2
    port map (
      I0 => Mcount_CNTDPL_cy(7),
      I1 => Mcount_CNTDPL_cy_8_rt_754,
      O => Result(8)
    );
  Mcount_CNTDPL_cy_9_Q : X_MUX2
    port map (
      IB => Mcount_CNTDPL_cy(8),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Mcount_CNTDPL_cy_9_rt_756,
      O => Mcount_CNTDPL_cy(9)
    );
  Mcount_CNTDPL_xor_9_Q : X_XOR2
    port map (
      I0 => Mcount_CNTDPL_cy(8),
      I1 => Mcount_CNTDPL_cy_9_rt_756,
      O => Result(9)
    );
  Mcount_CNTDPL_cy_10_Q : X_MUX2
    port map (
      IB => Mcount_CNTDPL_cy(9),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Mcount_CNTDPL_cy_10_rt_710,
      O => Mcount_CNTDPL_cy(10)
    );
  Mcount_CNTDPL_xor_10_Q : X_XOR2
    port map (
      I0 => Mcount_CNTDPL_cy(9),
      I1 => Mcount_CNTDPL_cy_10_rt_710,
      O => Result(10)
    );
  Mcount_CNTDPL_cy_11_Q : X_MUX2
    port map (
      IB => Mcount_CNTDPL_cy(10),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Mcount_CNTDPL_cy_11_rt_712,
      O => Mcount_CNTDPL_cy(11)
    );
  Mcount_CNTDPL_xor_11_Q : X_XOR2
    port map (
      I0 => Mcount_CNTDPL_cy(10),
      I1 => Mcount_CNTDPL_cy_11_rt_712,
      O => Result(11)
    );
  Mcount_CNTDPL_cy_12_Q : X_MUX2
    port map (
      IB => Mcount_CNTDPL_cy(11),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Mcount_CNTDPL_cy_12_rt_714,
      O => Mcount_CNTDPL_cy(12)
    );
  Mcount_CNTDPL_xor_12_Q : X_XOR2
    port map (
      I0 => Mcount_CNTDPL_cy(11),
      I1 => Mcount_CNTDPL_cy_12_rt_714,
      O => Result(12)
    );
  Mcount_CNTDPL_cy_13_Q : X_MUX2
    port map (
      IB => Mcount_CNTDPL_cy(12),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Mcount_CNTDPL_cy_13_rt_716,
      O => Mcount_CNTDPL_cy(13)
    );
  Mcount_CNTDPL_xor_13_Q : X_XOR2
    port map (
      I0 => Mcount_CNTDPL_cy(12),
      I1 => Mcount_CNTDPL_cy_13_rt_716,
      O => Result(13)
    );
  Mcount_CNTDPL_cy_14_Q : X_MUX2
    port map (
      IB => Mcount_CNTDPL_cy(13),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Mcount_CNTDPL_cy_14_rt_718,
      O => Mcount_CNTDPL_cy(14)
    );
  Mcount_CNTDPL_xor_14_Q : X_XOR2
    port map (
      I0 => Mcount_CNTDPL_cy(13),
      I1 => Mcount_CNTDPL_cy_14_rt_718,
      O => Result(14)
    );
  Mcount_CNTDPL_cy_15_Q : X_MUX2
    port map (
      IB => Mcount_CNTDPL_cy(14),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Mcount_CNTDPL_cy_15_rt_720,
      O => Mcount_CNTDPL_cy(15)
    );
  Mcount_CNTDPL_xor_15_Q : X_XOR2
    port map (
      I0 => Mcount_CNTDPL_cy(14),
      I1 => Mcount_CNTDPL_cy_15_rt_720,
      O => Result(15)
    );
  Mcount_CNTDPL_cy_16_Q : X_MUX2
    port map (
      IB => Mcount_CNTDPL_cy(15),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Mcount_CNTDPL_cy_16_rt_722,
      O => Mcount_CNTDPL_cy(16)
    );
  Mcount_CNTDPL_xor_16_Q : X_XOR2
    port map (
      I0 => Mcount_CNTDPL_cy(15),
      I1 => Mcount_CNTDPL_cy_16_rt_722,
      O => Result(16)
    );
  Mcount_CNTDPL_cy_17_Q : X_MUX2
    port map (
      IB => Mcount_CNTDPL_cy(16),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Mcount_CNTDPL_cy_17_rt_724,
      O => Mcount_CNTDPL_cy(17)
    );
  Mcount_CNTDPL_xor_17_Q : X_XOR2
    port map (
      I0 => Mcount_CNTDPL_cy(16),
      I1 => Mcount_CNTDPL_cy_17_rt_724,
      O => Result(17)
    );
  Mcount_CNTDPL_cy_18_Q : X_MUX2
    port map (
      IB => Mcount_CNTDPL_cy(17),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Mcount_CNTDPL_cy_18_rt_726,
      O => Mcount_CNTDPL_cy(18)
    );
  Mcount_CNTDPL_xor_18_Q : X_XOR2
    port map (
      I0 => Mcount_CNTDPL_cy(17),
      I1 => Mcount_CNTDPL_cy_18_rt_726,
      O => Result(18)
    );
  Mcount_CNTDPL_cy_19_Q : X_MUX2
    port map (
      IB => Mcount_CNTDPL_cy(18),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Mcount_CNTDPL_cy_19_rt_728,
      O => Mcount_CNTDPL_cy(19)
    );
  Mcount_CNTDPL_xor_19_Q : X_XOR2
    port map (
      I0 => Mcount_CNTDPL_cy(18),
      I1 => Mcount_CNTDPL_cy_19_rt_728,
      O => Result(19)
    );
  Mcount_CNTDPL_cy_20_Q : X_MUX2
    port map (
      IB => Mcount_CNTDPL_cy(19),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Mcount_CNTDPL_cy_20_rt_732,
      O => Mcount_CNTDPL_cy(20)
    );
  Mcount_CNTDPL_xor_20_Q : X_XOR2
    port map (
      I0 => Mcount_CNTDPL_cy(19),
      I1 => Mcount_CNTDPL_cy_20_rt_732,
      O => Result(20)
    );
  Mcount_CNTDPL_cy_21_Q : X_MUX2
    port map (
      IB => Mcount_CNTDPL_cy(20),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Mcount_CNTDPL_cy_21_rt_734,
      O => Mcount_CNTDPL_cy(21)
    );
  Mcount_CNTDPL_xor_21_Q : X_XOR2
    port map (
      I0 => Mcount_CNTDPL_cy(20),
      I1 => Mcount_CNTDPL_cy_21_rt_734,
      O => Result(21)
    );
  Mcount_CNTDPL_cy_22_Q : X_MUX2
    port map (
      IB => Mcount_CNTDPL_cy(21),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Mcount_CNTDPL_cy_22_rt_736,
      O => Mcount_CNTDPL_cy(22)
    );
  Mcount_CNTDPL_xor_22_Q : X_XOR2
    port map (
      I0 => Mcount_CNTDPL_cy(21),
      I1 => Mcount_CNTDPL_cy_22_rt_736,
      O => Result(22)
    );
  Mcount_CNTDPL_cy_23_Q : X_MUX2
    port map (
      IB => Mcount_CNTDPL_cy(22),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Mcount_CNTDPL_cy_23_rt_738,
      O => Mcount_CNTDPL_cy(23)
    );
  Mcount_CNTDPL_xor_23_Q : X_XOR2
    port map (
      I0 => Mcount_CNTDPL_cy(22),
      I1 => Mcount_CNTDPL_cy_23_rt_738,
      O => Result(23)
    );
  Mcount_CNTDPL_cy_24_Q : X_MUX2
    port map (
      IB => Mcount_CNTDPL_cy(23),
      IA => DPL_SEG_3_OBUF_397,
      SEL => Mcount_CNTDPL_cy_24_rt_740,
      O => Mcount_CNTDPL_cy(24)
    );
  Mcount_CNTDPL_xor_24_Q : X_XOR2
    port map (
      I0 => Mcount_CNTDPL_cy(23),
      I1 => Mcount_CNTDPL_cy_24_rt_740,
      O => Result(24)
    );
  Mcount_CNTDPL_xor_25_Q : X_XOR2
    port map (
      I0 => Mcount_CNTDPL_cy(24),
      I1 => Mcount_CNTDPL_xor_25_rt_758,
      O => Result(25)
    );
  Mmux_varindex0000_5_f6 : X_MUX2
    port map (
      IA => Mmux_varindex0000_7_f5_889,
      IB => Mmux_varindex0000_6_f5_887,
      SEL => POS_H_MEMORY(7),
      O => Mmux_varindex0000_5_f6_886
    );
  Mmux_varindex0000_7_f5 : X_MUX2
    port map (
      IA => Mmux_varindex0000_9,
      IB => Mmux_varindex0000_81_891,
      SEL => POS_H_MEMORY(6),
      O => Mmux_varindex0000_7_f5_889
    );
  Mmux_varindex0000_6_f5 : X_MUX2
    port map (
      IA => Mmux_varindex0000_8_890,
      IB => Mmux_varindex0000_7_888,
      SEL => POS_H_MEMORY(6),
      O => Mmux_varindex0000_6_f5_887
    );
  Mmux_CHARBIT_155 : X_LUT4
    generic map(
      INIT => X"FFB8"
    )
    port map (
      ADR0 => Mmux_CHARBIT_201_849,
      ADR1 => POS_V_MEMORY(1),
      ADR2 => Mmux_CHARBIT_192_847,
      ADR3 => POS_V_MEMORY(2),
      O => Mmux_CHARBIT_155_828
    );
  Mmux_CHARBIT_18_f5 : X_MUX2
    port map (
      IA => Mmux_CHARBIT_20_848,
      IB => Mmux_CHARBIT_191_846,
      SEL => POS_V_MEMORY(1),
      O => Mmux_CHARBIT_18_f5_844
    );
  Mmux_CHARBIT_20 : X_LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      ADR0 => POS_V_MEMORY(0),
      ADR1 => Mrom_varindex0000_rom000049,
      ADR2 => Mrom_varindex0000_rom000041_943,
      O => Mmux_CHARBIT_20_848
    );
  Mmux_CHARBIT_191 : X_LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      ADR0 => POS_V_MEMORY(0),
      ADR1 => Mrom_varindex0000_rom000033,
      ADR2 => Mrom_varindex0000_rom000025_914,
      O => Mmux_CHARBIT_191_846
    );
  Mmux_CHARBIT_9_f6 : X_MUX2
    port map (
      IA => Mmux_CHARBIT_11_f5_802,
      IB => Mmux_CHARBIT_10_f5_799,
      SEL => VGA_DRVR1_COUNTER_H(0),
      O => Mmux_CHARBIT_9_f6_861
    );
  Mmux_CHARBIT_11_f5 : X_MUX2
    port map (
      IA => Mmux_CHARBIT_133_809,
      IB => Mmux_CHARBIT_122_805,
      SEL => POS_V_MEMORY(3),
      O => Mmux_CHARBIT_11_f5_802
    );
  Mmux_CHARBIT_133 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => POS_V_MEMORY(2),
      ADR1 => POS_V_MEMORY_1_6,
      ADR2 => Mmux_CHARBIT_17_f5_841,
      O => Mmux_CHARBIT_133_809
    );
  Mmux_CHARBIT_17_f5 : X_MUX2
    port map (
      IA => Mmux_CHARBIT_19_845,
      IB => Mmux_CHARBIT_181_843,
      SEL => POS_V_MEMORY(1),
      O => Mmux_CHARBIT_17_f5_841
    );
  Mmux_CHARBIT_19 : X_LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      ADR0 => POS_V_MEMORY(0),
      ADR1 => Mrom_varindex0000_rom000051,
      ADR2 => Mrom_varindex0000_rom000043_945,
      O => Mmux_CHARBIT_19_845
    );
  Mmux_CHARBIT_181 : X_LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      ADR0 => POS_V_MEMORY(0),
      ADR1 => Mrom_varindex0000_rom000035,
      ADR2 => Mrom_varindex0000_rom000027,
      O => Mmux_CHARBIT_181_843
    );
  Mmux_CHARBIT_122 : X_LUT4
    generic map(
      INIT => X"FFB8"
    )
    port map (
      ADR0 => Mmux_CHARBIT_172,
      ADR1 => POS_V_MEMORY(1),
      ADR2 => Mmux_CHARBIT_164_834,
      ADR3 => POS_V_MEMORY(2),
      O => Mmux_CHARBIT_122_805
    );
  Mmux_CHARBIT_10_f5 : X_MUX2
    port map (
      IA => Mmux_CHARBIT_121_804,
      IB => Mmux_CHARBIT_111_801,
      SEL => POS_V_MEMORY(3),
      O => Mmux_CHARBIT_10_f5_799
    );
  Mmux_CHARBIT_121 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => POS_V_MEMORY(2),
      ADR1 => POS_V_MEMORY_1_5,
      ADR2 => Mmux_CHARBIT_16_f5_835,
      O => Mmux_CHARBIT_121_804
    );
  Mmux_CHARBIT_16_f5 : X_MUX2
    port map (
      IA => Mmux_CHARBIT_18_842,
      IB => Mmux_CHARBIT_171_837,
      SEL => POS_V_MEMORY(1),
      O => Mmux_CHARBIT_16_f5_835
    );
  Mmux_CHARBIT_171 : X_LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      ADR0 => POS_V_MEMORY(0),
      ADR1 => Mrom_varindex0000_rom000034,
      ADR2 => Mrom_varindex0000_rom000026,
      O => Mmux_CHARBIT_171_837
    );
  Mmux_CHARBIT_111 : X_LUT4
    generic map(
      INIT => X"FFB8"
    )
    port map (
      ADR0 => Mmux_CHARBIT_163_833,
      ADR1 => POS_V_MEMORY(1),
      ADR2 => Mmux_CHARBIT_154_827,
      ADR3 => POS_V_MEMORY(2),
      O => Mmux_CHARBIT_111_801
    );
  Mmux_CHARBIT_5_f7 : X_MUX2
    port map (
      IA => Mmux_CHARBIT_7_f6_853,
      IB => Mmux_CHARBIT_6_f6_851,
      SEL => VGA_DRVR1_COUNTER_H(1),
      O => Mmux_CHARBIT_5_f7_850
    );
  Mmux_CHARBIT_7_f6 : X_MUX2
    port map (
      IA => Mmux_CHARBIT_9_f5_860,
      IB => Mmux_CHARBIT_8_f51,
      SEL => VGA_DRVR1_COUNTER_H(0),
      O => Mmux_CHARBIT_7_f6_853
    );
  Mmux_CHARBIT_9_f5 : X_MUX2
    port map (
      IA => Mmux_CHARBIT_11_800,
      IB => Mmux_CHARBIT_102_798,
      SEL => POS_V_MEMORY(3),
      O => Mmux_CHARBIT_9_f5_860
    );
  Mmux_CHARBIT_11 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => POS_V_MEMORY(2),
      ADR1 => POS_V_MEMORY_1_4,
      ADR2 => Mmux_CHARBIT_15_f5_829,
      O => Mmux_CHARBIT_11_800
    );
  Mmux_CHARBIT_15_f5 : X_MUX2
    port map (
      IA => Mmux_CHARBIT_17_836,
      IB => Mmux_CHARBIT_162_832,
      SEL => POS_V_MEMORY(1),
      O => Mmux_CHARBIT_15_f5_829
    );
  Mmux_CHARBIT_17 : X_LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      ADR0 => POS_V_MEMORY(0),
      ADR1 => Mrom_varindex0000_rom000055,
      ADR2 => Mrom_varindex0000_rom000047,
      O => Mmux_CHARBIT_17_836
    );
  Mmux_CHARBIT_162 : X_LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      ADR0 => POS_V_MEMORY(0),
      ADR1 => Mrom_varindex0000_rom000039_942,
      ADR2 => Mrom_varindex0000_rom000031,
      O => Mmux_CHARBIT_162_832
    );
  Mmux_CHARBIT_102 : X_LUT4
    generic map(
      INIT => X"FFB8"
    )
    port map (
      ADR0 => Mmux_CHARBIT_153,
      ADR1 => POS_V_MEMORY(1),
      ADR2 => Mmux_CHARBIT_143_816,
      ADR3 => POS_V_MEMORY(2),
      O => Mmux_CHARBIT_102_798
    );
  Mmux_CHARBIT_8_f5_0 : X_MUX2
    port map (
      IA => Mmux_CHARBIT_101_797,
      IB => Mmux_CHARBIT_92_859,
      SEL => POS_V_MEMORY(3),
      O => Mmux_CHARBIT_8_f51
    );
  Mmux_CHARBIT_101 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => POS_V_MEMORY(2),
      ADR1 => POS_V_MEMORY_1_3,
      ADR2 => Mmux_CHARBIT_14_f51,
      O => Mmux_CHARBIT_101_797
    );
  Mmux_CHARBIT_14_f5_0 : X_MUX2
    port map (
      IA => Mmux_CHARBIT_161_831,
      IB => Mmux_CHARBIT_152_823,
      SEL => POS_V_MEMORY(1),
      O => Mmux_CHARBIT_14_f51
    );
  Mmux_CHARBIT_161 : X_LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      ADR0 => POS_V_MEMORY(0),
      ADR1 => Mrom_varindex0000_rom000054_958,
      ADR2 => Mrom_varindex0000_rom000038,
      O => Mmux_CHARBIT_161_831
    );
  Mmux_CHARBIT_152 : X_LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      ADR0 => POS_V_MEMORY(0),
      ADR1 => Mrom_varindex0000_rom000038,
      ADR2 => Mrom_varindex0000_rom000030,
      O => Mmux_CHARBIT_152_823
    );
  Mmux_CHARBIT_92 : X_LUT4
    generic map(
      INIT => X"FFB8"
    )
    port map (
      ADR0 => Mmux_CHARBIT_142_815,
      ADR1 => POS_V_MEMORY(1),
      ADR2 => Mmux_CHARBIT_132_808,
      ADR3 => POS_V_MEMORY(2),
      O => Mmux_CHARBIT_92_859
    );
  Mmux_CHARBIT_6_f6 : X_MUX2
    port map (
      IA => Mmux_CHARBIT_8_f5_855,
      IB => Mmux_CHARBIT_7_f5_852,
      SEL => VGA_DRVR1_COUNTER_H(0),
      O => Mmux_CHARBIT_6_f6_851
    );
  Mmux_CHARBIT_8_f5 : X_MUX2
    port map (
      IA => Mmux_CHARBIT_10_796,
      IB => Mmux_CHARBIT_91_858,
      SEL => POS_V_MEMORY(3),
      O => Mmux_CHARBIT_8_f5_855
    );
  Mmux_CHARBIT_10 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => POS_V_MEMORY(2),
      ADR1 => POS_V_MEMORY_1_2,
      ADR2 => Mmux_CHARBIT_14_f5_819,
      O => Mmux_CHARBIT_10_796
    );
  Mmux_CHARBIT_14_f5 : X_MUX2
    port map (
      IA => Mmux_CHARBIT_16,
      IB => Mmux_CHARBIT_151_822,
      SEL => POS_V_MEMORY(1),
      O => Mmux_CHARBIT_14_f5_819
    );
  Mmux_CHARBIT_151 : X_LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      ADR0 => POS_V_MEMORY(0),
      ADR1 => Mrom_varindex0000_rom000037_940,
      ADR2 => Mrom_varindex0000_rom000029,
      O => Mmux_CHARBIT_151_822
    );
  Mmux_CHARBIT_91 : X_LUT4
    generic map(
      INIT => X"FFB8"
    )
    port map (
      ADR0 => Mmux_CHARBIT_141,
      ADR1 => POS_V_MEMORY(1),
      ADR2 => Mmux_CHARBIT_131_807,
      ADR3 => POS_V_MEMORY(2),
      O => Mmux_CHARBIT_91_858
    );
  Mmux_CHARBIT_7_f5 : X_MUX2
    port map (
      IA => Mmux_CHARBIT_9_857,
      IB => Mmux_CHARBIT_8_854,
      SEL => POS_V_MEMORY(3),
      O => Mmux_CHARBIT_7_f5_852
    );
  Mmux_CHARBIT_9 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => POS_V_MEMORY(2),
      ADR1 => POS_V_MEMORY_1_1,
      ADR2 => Mmux_CHARBIT_13_f5_810,
      O => Mmux_CHARBIT_9_857
    );
  Mmux_CHARBIT_13_f5 : X_MUX2
    port map (
      IA => Mmux_CHARBIT_15_821,
      IB => Mmux_CHARBIT_14_811,
      SEL => POS_V_MEMORY(1),
      O => Mmux_CHARBIT_13_f5_810
    );
  Mmux_CHARBIT_15 : X_LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      ADR0 => POS_V_MEMORY(0),
      ADR1 => Mrom_varindex0000_rom000052_957,
      ADR2 => Mrom_varindex0000_rom000044,
      O => Mmux_CHARBIT_15_821
    );
  Mmux_CHARBIT_14 : X_LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      ADR0 => POS_V_MEMORY(0),
      ADR1 => Mrom_varindex0000_rom000036,
      ADR2 => Mrom_varindex0000_rom000028,
      O => Mmux_CHARBIT_14_811
    );
  Mmux_CHARBIT_8 : X_LUT4
    generic map(
      INIT => X"FFB8"
    )
    port map (
      ADR0 => Mmux_CHARBIT_13_806,
      ADR1 => POS_V_MEMORY(1),
      ADR2 => Mmux_CHARBIT_12_803,
      ADR3 => POS_V_MEMORY(2),
      O => Mmux_CHARBIT_8_854
    );
  USBDRIVER_DATAOK_0 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => USBDRIVER_DATAOK(0),
      I => DPL_SEG_3_OBUF_397,
      SSET => USBDRIVER_STEPPCUR(3),
      O => USBDRIVER_DATAOK(0),
      SET => GND,
      RST => GND,
      SRST => GND
    );
  USBDRIVER_LOBYTE_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => USBDRIVER_STEPPCUR(3),
      I => N155,
      O => USBDRIVER_LOBYTE(7),
      SET => GND,
      RST => GND
    );
  USBDRIVER_LOBYTE_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => USBDRIVER_STEPPCUR(3),
      I => N1561,
      O => USBDRIVER_LOBYTE(6),
      SET => GND,
      RST => GND
    );
  USBDRIVER_LOBYTE_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => USBDRIVER_STEPPCUR(3),
      I => N1571,
      O => USBDRIVER_LOBYTE(5),
      SET => GND,
      RST => GND
    );
  USBDRIVER_LOBYTE_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => USBDRIVER_STEPPCUR(3),
      I => N1581,
      O => USBDRIVER_LOBYTE(4),
      SET => GND,
      RST => GND
    );
  USBDRIVER_LOBYTE_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => USBDRIVER_STEPPCUR(3),
      I => N159,
      O => USBDRIVER_LOBYTE(3),
      SET => GND,
      RST => GND
    );
  USBDRIVER_LOBYTE_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => USBDRIVER_STEPPCUR(3),
      I => N1601,
      O => USBDRIVER_LOBYTE(2),
      SET => GND,
      RST => GND
    );
  USBDRIVER_LOBYTE_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => USBDRIVER_STEPPCUR(3),
      I => N1611,
      O => USBDRIVER_LOBYTE(1),
      SET => GND,
      RST => GND
    );
  USBDRIVER_LOBYTE_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => USBDRIVER_STEPPCUR(3),
      I => N1621,
      O => USBDRIVER_LOBYTE(0),
      SET => GND,
      RST => GND
    );
  USBDRIVER_HIBYTE_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => USBDRIVER_STEPPCUR(2),
      I => N155,
      O => USBDRIVER_HIBYTE(7),
      SET => GND,
      RST => GND
    );
  USBDRIVER_HIBYTE_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => USBDRIVER_STEPPCUR(2),
      I => N1561,
      O => USBDRIVER_HIBYTE(6),
      SET => GND,
      RST => GND
    );
  USBDRIVER_HIBYTE_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => USBDRIVER_STEPPCUR(2),
      I => N1571,
      O => USBDRIVER_HIBYTE(5),
      SET => GND,
      RST => GND
    );
  USBDRIVER_HIBYTE_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => USBDRIVER_STEPPCUR(2),
      I => N1581,
      O => USBDRIVER_HIBYTE(4),
      SET => GND,
      RST => GND
    );
  USBDRIVER_HIBYTE_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => USBDRIVER_STEPPCUR(2),
      I => N159,
      O => USBDRIVER_HIBYTE(3),
      SET => GND,
      RST => GND
    );
  USBDRIVER_HIBYTE_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => USBDRIVER_STEPPCUR(2),
      I => N1601,
      O => USBDRIVER_HIBYTE(2),
      SET => GND,
      RST => GND
    );
  USBDRIVER_HIBYTE_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => USBDRIVER_STEPPCUR(2),
      I => N1611,
      O => USBDRIVER_HIBYTE(1),
      SET => GND,
      RST => GND
    );
  USBDRIVER_HIBYTE_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => USBDRIVER_STEPPCUR(2),
      I => N1621,
      O => USBDRIVER_HIBYTE(0),
      SET => GND,
      RST => GND
    );
  USBDRIVER_STEPPCUR_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      I => USBDRIVER_STEPPNEXT_7_Q_1734,
      O => USBDRIVER_STEPPCUR(7),
      CE => VCC,
      SET => GND,
      RST => GND
    );
  USBDRIVER_STEPPCUR_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      I => USBDRIVER_STEPPNEXT_6_Q,
      O => USBDRIVER_STEPPCUR(6),
      CE => VCC,
      SET => GND,
      RST => GND
    );
  USBDRIVER_STEPPCUR_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      I => USBDRIVER_STEPPNEXT_5_Q_1729,
      O => USBDRIVER_STEPPCUR(5),
      CE => VCC,
      SET => GND,
      RST => GND
    );
  USBDRIVER_STEPPCUR_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      I => USBDRIVER_STEPPNEXT_4_Q,
      O => USBDRIVER_STEPPCUR(4),
      CE => VCC,
      SET => GND,
      RST => GND
    );
  USBDRIVER_STEPPCUR_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      I => USBDRIVER_STEPPNEXT_1_Q,
      O => USBDRIVER_STEPPCUR(1),
      CE => VCC,
      SET => GND,
      RST => GND
    );
  USBDRIVER_STEPPCUR_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      I => USBDRIVER_STEPPNEXT_0_Q,
      O => USBDRIVER_STEPPCUR(0),
      CE => VCC,
      SET => GND,
      RST => GND
    );
  USBDRIVER_ABORTEDSN_0 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => USBDRIVER_ABORTEDSN_0_and0000,
      I => DPL_SEG_0_OBUF_396,
      SRST => USBDRIVER_ABORTEDSN(0),
      O => USBDRIVER_ABORTEDSN(0),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  KBRD_DRIVER_BUFG_INST1 : X_CKBUF
    port map (
      I => KBRD_DRIVER_CLK_P_534,
      O => KBRD_DRIVER_CLKOUT
    );
  KBRD_DRIVER_KBRD_DATA_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => KBRD_DRIVER_KBRD_DATA_and0000,
      I => KBRD_DRIVER_KBRD_DATA_S(7),
      O => KBRD_DRIVER_KBRD_DATA(7),
      SET => GND,
      RST => GND
    );
  KBRD_DRIVER_KBRD_DATA_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => KBRD_DRIVER_KBRD_DATA_and0000,
      I => KBRD_DRIVER_KBRD_DATA_S(6),
      O => KBRD_DRIVER_KBRD_DATA(6),
      SET => GND,
      RST => GND
    );
  KBRD_DRIVER_KBRD_DATA_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => KBRD_DRIVER_KBRD_DATA_and0000,
      I => KBRD_DRIVER_KBRD_DATA_S(5),
      O => KBRD_DRIVER_KBRD_DATA(5),
      SET => GND,
      RST => GND
    );
  KBRD_DRIVER_KBRD_DATA_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => KBRD_DRIVER_KBRD_DATA_and0000,
      I => KBRD_DRIVER_KBRD_DATA_S(4),
      O => KBRD_DRIVER_KBRD_DATA(4),
      SET => GND,
      RST => GND
    );
  KBRD_DRIVER_KBRD_DATA_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => KBRD_DRIVER_KBRD_DATA_and0000,
      I => KBRD_DRIVER_KBRD_DATA_S(3),
      O => KBRD_DRIVER_KBRD_DATA(3),
      SET => GND,
      RST => GND
    );
  KBRD_DRIVER_KBRD_DATA_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => KBRD_DRIVER_KBRD_DATA_and0000,
      I => KBRD_DRIVER_KBRD_DATA_S(2),
      O => KBRD_DRIVER_KBRD_DATA(2),
      SET => GND,
      RST => GND
    );
  KBRD_DRIVER_KBRD_DATA_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => KBRD_DRIVER_KBRD_DATA_and0000,
      I => KBRD_DRIVER_KBRD_DATA_S(1),
      O => KBRD_DRIVER_KBRD_DATA(1),
      SET => GND,
      RST => GND
    );
  KBRD_DRIVER_KBRD_DATA_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => KBRD_DRIVER_KBRD_DATA_and0000,
      I => KBRD_DRIVER_KBRD_DATA_S(0),
      O => KBRD_DRIVER_KBRD_DATA(0),
      SET => GND,
      RST => GND
    );
  KBRD_DRIVER_KBRD_DATA_S_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_KBRD_DRIVER_KBRD_DATA_S_6_C,
      CE => KBRD_DRIVER_KBRD_DATA_S_6_and0000,
      I => KBRD_DATA_PIN_IBUF_532,
      O => KBRD_DRIVER_KBRD_DATA_S(6),
      SET => GND,
      RST => GND
    );
  KBRD_DRIVER_KBRD_DATA_S_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_KBRD_DRIVER_KBRD_DATA_S_5_C,
      CE => KBRD_DRIVER_KBRD_DATA_S_5_and0000,
      I => KBRD_DATA_PIN_IBUF_532,
      O => KBRD_DRIVER_KBRD_DATA_S(5),
      SET => GND,
      RST => GND
    );
  KBRD_DRIVER_KBRD_DATA_S_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_KBRD_DRIVER_KBRD_DATA_S_4_C,
      CE => KBRD_DRIVER_KBRD_DATA_S_4_and0000,
      I => KBRD_DATA_PIN_IBUF_532,
      O => KBRD_DRIVER_KBRD_DATA_S(4),
      SET => GND,
      RST => GND
    );
  KBRD_DRIVER_KBRD_DATA_S_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_KBRD_DRIVER_KBRD_DATA_S_3_C,
      CE => KBRD_DRIVER_KBRD_DATA_S_3_and0000,
      I => KBRD_DATA_PIN_IBUF_532,
      O => KBRD_DRIVER_KBRD_DATA_S(3),
      SET => GND,
      RST => GND
    );
  KBRD_DRIVER_KBRD_DATA_S_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_KBRD_DRIVER_KBRD_DATA_S_1_C,
      CE => KBRD_DRIVER_KBRD_DATA_S_1_and0000,
      I => KBRD_DATA_PIN_IBUF_532,
      O => KBRD_DRIVER_KBRD_DATA_S(1),
      SET => GND,
      RST => GND
    );
  KBRD_DRIVER_KBRD_DATA_S_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_KBRD_DRIVER_KBRD_DATA_S_2_C,
      CE => KBRD_DRIVER_KBRD_DATA_S_2_and0000,
      I => KBRD_DATA_PIN_IBUF_532,
      O => KBRD_DRIVER_KBRD_DATA_S(2),
      SET => GND,
      RST => GND
    );
  KBRD_DRIVER_KBRD_DATA_S_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_KBRD_DRIVER_KBRD_DATA_S_0_C,
      CE => KBRD_DRIVER_KBRD_DATA_S_0_and0000,
      I => KBRD_DATA_PIN_IBUF_532,
      O => KBRD_DRIVER_KBRD_DATA_S(0),
      SET => GND,
      RST => GND
    );
  KBRD_DRIVER_PAR_OK : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_KBRD_DRIVER_PAR_OK_C,
      RST => RESET(0),
      I => KBRD_DRIVER_PAR_OK_mux0000,
      O => KBRD_DRIVER_PAR_OK_590,
      CE => VCC,
      SET => GND
    );
  KBRD_DRIVER_COUNTER_KB_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_KBRD_DRIVER_COUNTER_KB_3_C,
      RST => RESET(0),
      I => KBRD_DRIVER_COUNTER_KB_mux0002(0),
      O => KBRD_DRIVER_COUNTER_KB(3),
      CE => VCC,
      SET => GND
    );
  KBRD_DRIVER_COUNTER_KB_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_KBRD_DRIVER_COUNTER_KB_2_C,
      RST => RESET(0),
      I => KBRD_DRIVER_COUNTER_KB_mux0002(1),
      O => KBRD_DRIVER_COUNTER_KB(2),
      CE => VCC,
      SET => GND
    );
  KBRD_DRIVER_COUNTER_KB_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_KBRD_DRIVER_COUNTER_KB_1_C,
      RST => RESET(0),
      I => KBRD_DRIVER_COUNTER_KB_mux0002(2),
      O => KBRD_DRIVER_COUNTER_KB(1),
      CE => VCC,
      SET => GND
    );
  KBRD_DRIVER_COUNTER_KB_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_KBRD_DRIVER_COUNTER_KB_0_C,
      RST => RESET(0),
      I => KBRD_DRIVER_COUNTER_KB_mux0002(3),
      O => KBRD_DRIVER_COUNTER_KB(0),
      CE => VCC,
      SET => GND
    );
  KBRD_DRIVER_KBRD_DATA_S_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_KBRD_DRIVER_KBRD_DATA_S_7_C,
      CE => KBRD_DRIVER_KBRD_DATA_S_7_and0000,
      I => KBRD_DATA_PIN_IBUF_532,
      O => KBRD_DRIVER_KBRD_DATA_S(7),
      SET => GND,
      RST => GND
    );
  KBRD_DRIVER_CLK_P : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      I => KBRD_CLK_PIN_IBUF_530,
      SET => RESET(0),
      O => KBRD_DRIVER_CLK_P_534,
      CE => VCC,
      RST => GND
    );
  KBRD_DRIVER_KEY_UP_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      RST => RESET(0),
      I => KBRD_DRIVER_KEY_UP_0_mux0000_585,
      O => KBRD_DRIVER_KEY_UP(0),
      CE => VCC,
      SET => GND
    );
  KBRD_DRIVER_WT_KB_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      RST => RESET(0),
      I => KBRD_DRIVER_WT_KB_0_mux0000_593,
      O => KBRD_DRIVER_WT_KB(0),
      CE => VCC,
      SET => GND
    );
  KBRD_DRIVER_KEY_DOWN_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      RST => RESET(0),
      I => KBRD_DRIVER_KEY_DOWN_0_mux0000,
      O => KBRD_DRIVER_KEY_DOWN(0),
      CE => VCC,
      SET => GND
    );
  KBRD_DRIVER_E0_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      CE => KBRD_DRIVER_E0_0_not0001,
      RST => RESET(0),
      I => KBRD_DRIVER_E0_0_cmp_eq0000,
      O => KBRD_DRIVER_E0(0),
      SET => GND
    );
  VGA_DRVR1_DRIVERCLKDLL100_BUFG_inst1 : X_CKBUF
    port map (
      I => VGA_DRVR1_CLK100M,
      O => NLW_VGA_DRVR1_DRIVERCLKDLL100_BUFG_inst1_O_UNCONNECTED
    );
  VGA_DRVR1_DRIVERCLKDLL200_BUFG_inst1 : X_CKBUF
    port map (
      I => VGA_DRVR1_CLK200M,
      O => NLW_VGA_DRVR1_DRIVERCLKDLL200_BUFG_inst1_O_UNCONNECTED
    );
  VGA_DRVR1_DRIVERCLKDLL_100_200_BUFG_inst1 : X_CKBUF
    port map (
      I => VGA_DRVR1_CLK200M_NEW,
      O => NLW_VGA_DRVR1_DRIVERCLKDLL_100_200_BUFG_inst1_O_UNCONNECTED
    );
  VGA_DRVR1_DRIVERCLKDLL_200_NEW_BUFG_inst1 : X_CKBUF
    port map (
      I => VGA_DRVR1_CLK400M,
      O => NLW_VGA_DRVR1_DRIVERCLKDLL_200_NEW_BUFG_inst1_O_UNCONNECTED
    );
  VGA_DRVR1_BUFG_INST400 : X_CKBUF
    port map (
      I => VGA_DRVR1_CLK400M,
      O => VGA_DRVR1_CLK400M_BUFG
    );
  VGA_DRVR1_BUFG_INST200_NEW : X_CKBUF
    port map (
      I => VGA_DRVR1_CLK200M_NEW,
      O => VGA_DRVR1_CLK200M_NEW_BUFG
    );
  VGA_DRVR1_BUFG_INST100_200 : X_CKBUF
    port map (
      I => VGA_DRVR1_CLK_100_200M_1746,
      O => VGA_DRVR1_CLK_100_200M_BUFG
    );
  VGA_DRVR1_BUFG_INST1 : X_CKBUF
    port map (
      I => VGA_DRVR1_CLK200M,
      O => VGA_DRVR1_BUFGCLK200M
    );
  VGA_DRVR1_Mcount_COUNTER_RAM_xor_18_Q : X_XOR2
    port map (
      I0 => VGA_DRVR1_Mcount_COUNTER_RAM_cy(17),
      I1 => VGA_DRVR1_Mcount_COUNTER_RAM_xor_18_rt_1941,
      O => VGA_DRVR1_Result(18)
    );
  VGA_DRVR1_Mcount_COUNTER_RAM_xor_17_Q : X_XOR2
    port map (
      I0 => VGA_DRVR1_Mcount_COUNTER_RAM_cy(16),
      I1 => VGA_DRVR1_Mcount_COUNTER_RAM_cy_17_rt_1921,
      O => VGA_DRVR1_Result(17)
    );
  VGA_DRVR1_Mcount_COUNTER_RAM_cy_17_Q : X_MUX2
    port map (
      IB => VGA_DRVR1_Mcount_COUNTER_RAM_cy(16),
      IA => DPL_SEG_3_OBUF_397,
      SEL => VGA_DRVR1_Mcount_COUNTER_RAM_cy_17_rt_1921,
      O => VGA_DRVR1_Mcount_COUNTER_RAM_cy(17)
    );
  VGA_DRVR1_Mcount_COUNTER_RAM_xor_16_Q : X_XOR2
    port map (
      I0 => VGA_DRVR1_Mcount_COUNTER_RAM_cy(15),
      I1 => VGA_DRVR1_Mcount_COUNTER_RAM_cy_16_rt_1919,
      O => VGA_DRVR1_Result(16)
    );
  VGA_DRVR1_Mcount_COUNTER_RAM_cy_16_Q : X_MUX2
    port map (
      IB => VGA_DRVR1_Mcount_COUNTER_RAM_cy(15),
      IA => DPL_SEG_3_OBUF_397,
      SEL => VGA_DRVR1_Mcount_COUNTER_RAM_cy_16_rt_1919,
      O => VGA_DRVR1_Mcount_COUNTER_RAM_cy(16)
    );
  VGA_DRVR1_Mcount_COUNTER_RAM_xor_15_Q : X_XOR2
    port map (
      I0 => VGA_DRVR1_Mcount_COUNTER_RAM_cy(14),
      I1 => VGA_DRVR1_Mcount_COUNTER_RAM_cy_15_rt_1917,
      O => VGA_DRVR1_Result(15)
    );
  VGA_DRVR1_Mcount_COUNTER_RAM_cy_15_Q : X_MUX2
    port map (
      IB => VGA_DRVR1_Mcount_COUNTER_RAM_cy(14),
      IA => DPL_SEG_3_OBUF_397,
      SEL => VGA_DRVR1_Mcount_COUNTER_RAM_cy_15_rt_1917,
      O => VGA_DRVR1_Mcount_COUNTER_RAM_cy(15)
    );
  VGA_DRVR1_Mcount_COUNTER_RAM_xor_14_Q : X_XOR2
    port map (
      I0 => VGA_DRVR1_Mcount_COUNTER_RAM_cy(13),
      I1 => VGA_DRVR1_Mcount_COUNTER_RAM_cy_14_rt_1915,
      O => VGA_DRVR1_Result(14)
    );
  VGA_DRVR1_Mcount_COUNTER_RAM_cy_14_Q : X_MUX2
    port map (
      IB => VGA_DRVR1_Mcount_COUNTER_RAM_cy(13),
      IA => DPL_SEG_3_OBUF_397,
      SEL => VGA_DRVR1_Mcount_COUNTER_RAM_cy_14_rt_1915,
      O => VGA_DRVR1_Mcount_COUNTER_RAM_cy(14)
    );
  VGA_DRVR1_Mcount_COUNTER_RAM_xor_13_Q : X_XOR2
    port map (
      I0 => VGA_DRVR1_Mcount_COUNTER_RAM_cy(12),
      I1 => VGA_DRVR1_Mcount_COUNTER_RAM_cy_13_rt_1913,
      O => VGA_DRVR1_Result(13)
    );
  VGA_DRVR1_Mcount_COUNTER_RAM_cy_13_Q : X_MUX2
    port map (
      IB => VGA_DRVR1_Mcount_COUNTER_RAM_cy(12),
      IA => DPL_SEG_3_OBUF_397,
      SEL => VGA_DRVR1_Mcount_COUNTER_RAM_cy_13_rt_1913,
      O => VGA_DRVR1_Mcount_COUNTER_RAM_cy(13)
    );
  VGA_DRVR1_Mcount_COUNTER_RAM_xor_12_Q : X_XOR2
    port map (
      I0 => VGA_DRVR1_Mcount_COUNTER_RAM_cy(11),
      I1 => VGA_DRVR1_Mcount_COUNTER_RAM_cy_12_rt_1911,
      O => VGA_DRVR1_Result(12)
    );
  VGA_DRVR1_Mcount_COUNTER_RAM_cy_12_Q : X_MUX2
    port map (
      IB => VGA_DRVR1_Mcount_COUNTER_RAM_cy(11),
      IA => DPL_SEG_3_OBUF_397,
      SEL => VGA_DRVR1_Mcount_COUNTER_RAM_cy_12_rt_1911,
      O => VGA_DRVR1_Mcount_COUNTER_RAM_cy(12)
    );
  VGA_DRVR1_Mcount_COUNTER_RAM_xor_11_Q : X_XOR2
    port map (
      I0 => VGA_DRVR1_Mcount_COUNTER_RAM_cy(10),
      I1 => VGA_DRVR1_Mcount_COUNTER_RAM_cy_11_rt_1909,
      O => VGA_DRVR1_Result(11)
    );
  VGA_DRVR1_Mcount_COUNTER_RAM_cy_11_Q : X_MUX2
    port map (
      IB => VGA_DRVR1_Mcount_COUNTER_RAM_cy(10),
      IA => DPL_SEG_3_OBUF_397,
      SEL => VGA_DRVR1_Mcount_COUNTER_RAM_cy_11_rt_1909,
      O => VGA_DRVR1_Mcount_COUNTER_RAM_cy(11)
    );
  VGA_DRVR1_Mcount_COUNTER_RAM_xor_10_Q : X_XOR2
    port map (
      I0 => VGA_DRVR1_Mcount_COUNTER_RAM_cy(9),
      I1 => VGA_DRVR1_Mcount_COUNTER_RAM_cy_10_rt_1907,
      O => VGA_DRVR1_Result(10)
    );
  VGA_DRVR1_Mcount_COUNTER_RAM_cy_10_Q : X_MUX2
    port map (
      IB => VGA_DRVR1_Mcount_COUNTER_RAM_cy(9),
      IA => DPL_SEG_3_OBUF_397,
      SEL => VGA_DRVR1_Mcount_COUNTER_RAM_cy_10_rt_1907,
      O => VGA_DRVR1_Mcount_COUNTER_RAM_cy(10)
    );
  VGA_DRVR1_Mcount_COUNTER_RAM_xor_9_Q : X_XOR2
    port map (
      I0 => VGA_DRVR1_Mcount_COUNTER_RAM_cy(8),
      I1 => VGA_DRVR1_Mcount_COUNTER_RAM_cy_9_rt_1939,
      O => VGA_DRVR1_Result(9)
    );
  VGA_DRVR1_Mcount_COUNTER_RAM_cy_9_Q : X_MUX2
    port map (
      IB => VGA_DRVR1_Mcount_COUNTER_RAM_cy(8),
      IA => DPL_SEG_3_OBUF_397,
      SEL => VGA_DRVR1_Mcount_COUNTER_RAM_cy_9_rt_1939,
      O => VGA_DRVR1_Mcount_COUNTER_RAM_cy(9)
    );
  VGA_DRVR1_Mcount_COUNTER_RAM_xor_8_Q : X_XOR2
    port map (
      I0 => VGA_DRVR1_Mcount_COUNTER_RAM_cy(7),
      I1 => VGA_DRVR1_Mcount_COUNTER_RAM_cy_8_rt_1937,
      O => VGA_DRVR1_Result(8)
    );
  VGA_DRVR1_Mcount_COUNTER_RAM_cy_8_Q : X_MUX2
    port map (
      IB => VGA_DRVR1_Mcount_COUNTER_RAM_cy(7),
      IA => DPL_SEG_3_OBUF_397,
      SEL => VGA_DRVR1_Mcount_COUNTER_RAM_cy_8_rt_1937,
      O => VGA_DRVR1_Mcount_COUNTER_RAM_cy(8)
    );
  VGA_DRVR1_Mcount_COUNTER_RAM_xor_7_Q : X_XOR2
    port map (
      I0 => VGA_DRVR1_Mcount_COUNTER_RAM_cy(6),
      I1 => VGA_DRVR1_Mcount_COUNTER_RAM_cy_7_rt_1935,
      O => VGA_DRVR1_Result(7)
    );
  VGA_DRVR1_Mcount_COUNTER_RAM_cy_7_Q : X_MUX2
    port map (
      IB => VGA_DRVR1_Mcount_COUNTER_RAM_cy(6),
      IA => DPL_SEG_3_OBUF_397,
      SEL => VGA_DRVR1_Mcount_COUNTER_RAM_cy_7_rt_1935,
      O => VGA_DRVR1_Mcount_COUNTER_RAM_cy(7)
    );
  VGA_DRVR1_Mcount_COUNTER_RAM_xor_6_Q : X_XOR2
    port map (
      I0 => VGA_DRVR1_Mcount_COUNTER_RAM_cy(5),
      I1 => VGA_DRVR1_Mcount_COUNTER_RAM_cy_6_rt_1933,
      O => VGA_DRVR1_Result(6)
    );
  VGA_DRVR1_Mcount_COUNTER_RAM_cy_6_Q : X_MUX2
    port map (
      IB => VGA_DRVR1_Mcount_COUNTER_RAM_cy(5),
      IA => DPL_SEG_3_OBUF_397,
      SEL => VGA_DRVR1_Mcount_COUNTER_RAM_cy_6_rt_1933,
      O => VGA_DRVR1_Mcount_COUNTER_RAM_cy(6)
    );
  VGA_DRVR1_Mcount_COUNTER_RAM_xor_5_Q : X_XOR2
    port map (
      I0 => VGA_DRVR1_Mcount_COUNTER_RAM_cy(4),
      I1 => VGA_DRVR1_Mcount_COUNTER_RAM_cy_5_rt_1931,
      O => VGA_DRVR1_Result(5)
    );
  VGA_DRVR1_Mcount_COUNTER_RAM_cy_5_Q : X_MUX2
    port map (
      IB => VGA_DRVR1_Mcount_COUNTER_RAM_cy(4),
      IA => DPL_SEG_3_OBUF_397,
      SEL => VGA_DRVR1_Mcount_COUNTER_RAM_cy_5_rt_1931,
      O => VGA_DRVR1_Mcount_COUNTER_RAM_cy(5)
    );
  VGA_DRVR1_Mcount_COUNTER_RAM_xor_4_Q : X_XOR2
    port map (
      I0 => VGA_DRVR1_Mcount_COUNTER_RAM_cy(3),
      I1 => VGA_DRVR1_Mcount_COUNTER_RAM_cy_4_rt_1929,
      O => VGA_DRVR1_Result(4)
    );
  VGA_DRVR1_Mcount_COUNTER_RAM_cy_4_Q : X_MUX2
    port map (
      IB => VGA_DRVR1_Mcount_COUNTER_RAM_cy(3),
      IA => DPL_SEG_3_OBUF_397,
      SEL => VGA_DRVR1_Mcount_COUNTER_RAM_cy_4_rt_1929,
      O => VGA_DRVR1_Mcount_COUNTER_RAM_cy(4)
    );
  VGA_DRVR1_Mcount_COUNTER_RAM_xor_3_Q : X_XOR2
    port map (
      I0 => VGA_DRVR1_Mcount_COUNTER_RAM_cy(2),
      I1 => VGA_DRVR1_Mcount_COUNTER_RAM_cy_3_rt_1927,
      O => VGA_DRVR1_Result(3)
    );
  VGA_DRVR1_Mcount_COUNTER_RAM_cy_3_Q : X_MUX2
    port map (
      IB => VGA_DRVR1_Mcount_COUNTER_RAM_cy(2),
      IA => DPL_SEG_3_OBUF_397,
      SEL => VGA_DRVR1_Mcount_COUNTER_RAM_cy_3_rt_1927,
      O => VGA_DRVR1_Mcount_COUNTER_RAM_cy(3)
    );
  VGA_DRVR1_Mcount_COUNTER_RAM_xor_2_Q : X_XOR2
    port map (
      I0 => VGA_DRVR1_Mcount_COUNTER_RAM_cy(1),
      I1 => VGA_DRVR1_Mcount_COUNTER_RAM_cy_2_rt_1925,
      O => VGA_DRVR1_Result(2)
    );
  VGA_DRVR1_Mcount_COUNTER_RAM_cy_2_Q : X_MUX2
    port map (
      IB => VGA_DRVR1_Mcount_COUNTER_RAM_cy(1),
      IA => DPL_SEG_3_OBUF_397,
      SEL => VGA_DRVR1_Mcount_COUNTER_RAM_cy_2_rt_1925,
      O => VGA_DRVR1_Mcount_COUNTER_RAM_cy(2)
    );
  VGA_DRVR1_Mcount_COUNTER_RAM_xor_1_Q : X_XOR2
    port map (
      I0 => VGA_DRVR1_Mcount_COUNTER_RAM_cy(0),
      I1 => VGA_DRVR1_Mcount_COUNTER_RAM_cy_1_rt_1923,
      O => VGA_DRVR1_Result(1)
    );
  VGA_DRVR1_Mcount_COUNTER_RAM_cy_1_Q : X_MUX2
    port map (
      IB => VGA_DRVR1_Mcount_COUNTER_RAM_cy(0),
      IA => DPL_SEG_3_OBUF_397,
      SEL => VGA_DRVR1_Mcount_COUNTER_RAM_cy_1_rt_1923,
      O => VGA_DRVR1_Mcount_COUNTER_RAM_cy(1)
    );
  VGA_DRVR1_Mcount_COUNTER_RAM_xor_0_Q : X_XOR2
    port map (
      I0 => DPL_SEG_3_OBUF_397,
      I1 => VGA_DRVR1_Mcount_COUNTER_RAM_lut(0),
      O => VGA_DRVR1_Result(0)
    );
  VGA_DRVR1_Mcount_COUNTER_RAM_cy_0_Q : X_MUX2
    port map (
      IB => DPL_SEG_3_OBUF_397,
      IA => DPL_SEG_0_OBUF_396,
      SEL => VGA_DRVR1_Mcount_COUNTER_RAM_lut(0),
      O => VGA_DRVR1_Mcount_COUNTER_RAM_cy(0)
    );
  VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_xor_9_Q : X_XOR2
    port map (
      I0 => VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy(8),
      I1 => VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_xor_9_rt_1904,
      O => VGA_DRVR1_COUNTER_V_CUR_addsub0000(9)
    );
  VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_xor_8_Q : X_XOR2
    port map (
      I0 => VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy(7),
      I1 => VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy_8_rt_1902,
      O => VGA_DRVR1_COUNTER_V_CUR_addsub0000(8)
    );
  VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy_8_Q : X_MUX2
    port map (
      IB => VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy(7),
      IA => DPL_SEG_3_OBUF_397,
      SEL => VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy_8_rt_1902,
      O => VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy(8)
    );
  VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_xor_7_Q : X_XOR2
    port map (
      I0 => VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy(6),
      I1 => VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy_7_rt_1900,
      O => VGA_DRVR1_COUNTER_V_CUR_addsub0000(7)
    );
  VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy_7_Q : X_MUX2
    port map (
      IB => VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy(6),
      IA => DPL_SEG_3_OBUF_397,
      SEL => VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy_7_rt_1900,
      O => VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy(7)
    );
  VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_xor_6_Q : X_XOR2
    port map (
      I0 => VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy(5),
      I1 => VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy_6_rt_1898,
      O => VGA_DRVR1_COUNTER_V_CUR_addsub0000(6)
    );
  VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy_6_Q : X_MUX2
    port map (
      IB => VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy(5),
      IA => DPL_SEG_3_OBUF_397,
      SEL => VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy_6_rt_1898,
      O => VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy(6)
    );
  VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_xor_5_Q : X_XOR2
    port map (
      I0 => VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy(4),
      I1 => VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy_5_rt_1896,
      O => VGA_DRVR1_COUNTER_V_CUR_addsub0000(5)
    );
  VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy_5_Q : X_MUX2
    port map (
      IB => VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy(4),
      IA => DPL_SEG_3_OBUF_397,
      SEL => VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy_5_rt_1896,
      O => VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy(5)
    );
  VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_xor_4_Q : X_XOR2
    port map (
      I0 => VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy(3),
      I1 => VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy_4_rt_1894,
      O => VGA_DRVR1_COUNTER_V_CUR_addsub0000(4)
    );
  VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy_4_Q : X_MUX2
    port map (
      IB => VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy(3),
      IA => DPL_SEG_3_OBUF_397,
      SEL => VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy_4_rt_1894,
      O => VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy(4)
    );
  VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_xor_3_Q : X_XOR2
    port map (
      I0 => VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy(2),
      I1 => VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy_3_rt_1892,
      O => VGA_DRVR1_COUNTER_V_CUR_addsub0000(3)
    );
  VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy_3_Q : X_MUX2
    port map (
      IB => VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy(2),
      IA => DPL_SEG_3_OBUF_397,
      SEL => VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy_3_rt_1892,
      O => VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy(3)
    );
  VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_xor_2_Q : X_XOR2
    port map (
      I0 => VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy(1),
      I1 => VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy_2_rt_1890,
      O => VGA_DRVR1_COUNTER_V_CUR_addsub0000(2)
    );
  VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy_2_Q : X_MUX2
    port map (
      IB => VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy(1),
      IA => DPL_SEG_3_OBUF_397,
      SEL => VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy_2_rt_1890,
      O => VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy(2)
    );
  VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_xor_1_Q : X_XOR2
    port map (
      I0 => VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy(0),
      I1 => VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy_1_rt_1888,
      O => VGA_DRVR1_COUNTER_V_CUR_addsub0000(1)
    );
  VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy_1_Q : X_MUX2
    port map (
      IB => VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy(0),
      IA => DPL_SEG_3_OBUF_397,
      SEL => VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy_1_rt_1888,
      O => VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy(1)
    );
  VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_xor_0_Q : X_XOR2
    port map (
      I0 => DPL_SEG_3_OBUF_397,
      I1 => VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_lut(0),
      O => VGA_DRVR1_COUNTER_V_CUR_addsub0000(0)
    );
  VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy_0_Q : X_MUX2
    port map (
      IB => DPL_SEG_3_OBUF_397,
      IA => DPL_SEG_0_OBUF_396,
      SEL => VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_lut(0),
      O => VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy(0)
    );
  VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_xor_9_Q : X_XOR2
    port map (
      I0 => VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy(8),
      I1 => VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_xor_9_rt_1885,
      O => VGA_DRVR1_COUNTER_H_CUR_addsub0000(9)
    );
  VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_xor_8_Q : X_XOR2
    port map (
      I0 => VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy(7),
      I1 => VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy_8_rt_1883,
      O => VGA_DRVR1_COUNTER_H_CUR_addsub0000(8)
    );
  VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy_8_Q : X_MUX2
    port map (
      IB => VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy(7),
      IA => DPL_SEG_3_OBUF_397,
      SEL => VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy_8_rt_1883,
      O => VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy(8)
    );
  VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_xor_7_Q : X_XOR2
    port map (
      I0 => VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy(6),
      I1 => VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy_7_rt_1881,
      O => VGA_DRVR1_COUNTER_H_CUR_addsub0000(7)
    );
  VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy_7_Q : X_MUX2
    port map (
      IB => VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy(6),
      IA => DPL_SEG_3_OBUF_397,
      SEL => VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy_7_rt_1881,
      O => VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy(7)
    );
  VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_xor_6_Q : X_XOR2
    port map (
      I0 => VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy(5),
      I1 => VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy_6_rt_1879,
      O => VGA_DRVR1_COUNTER_H_CUR_addsub0000(6)
    );
  VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy_6_Q : X_MUX2
    port map (
      IB => VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy(5),
      IA => DPL_SEG_3_OBUF_397,
      SEL => VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy_6_rt_1879,
      O => VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy(6)
    );
  VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_xor_5_Q : X_XOR2
    port map (
      I0 => VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy(4),
      I1 => VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy_5_rt_1877,
      O => VGA_DRVR1_COUNTER_H_CUR_addsub0000(5)
    );
  VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy_5_Q : X_MUX2
    port map (
      IB => VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy(4),
      IA => DPL_SEG_3_OBUF_397,
      SEL => VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy_5_rt_1877,
      O => VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy(5)
    );
  VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_xor_4_Q : X_XOR2
    port map (
      I0 => VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy(3),
      I1 => VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy_4_rt_1875,
      O => VGA_DRVR1_COUNTER_H_CUR_addsub0000(4)
    );
  VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy_4_Q : X_MUX2
    port map (
      IB => VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy(3),
      IA => DPL_SEG_3_OBUF_397,
      SEL => VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy_4_rt_1875,
      O => VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy(4)
    );
  VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_xor_3_Q : X_XOR2
    port map (
      I0 => VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy(2),
      I1 => VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy_3_rt_1873,
      O => VGA_DRVR1_COUNTER_H_CUR_addsub0000(3)
    );
  VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy_3_Q : X_MUX2
    port map (
      IB => VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy(2),
      IA => DPL_SEG_3_OBUF_397,
      SEL => VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy_3_rt_1873,
      O => VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy(3)
    );
  VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_xor_2_Q : X_XOR2
    port map (
      I0 => VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy(1),
      I1 => VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy_2_rt_1871,
      O => VGA_DRVR1_COUNTER_H_CUR_addsub0000(2)
    );
  VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy_2_Q : X_MUX2
    port map (
      IB => VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy(1),
      IA => DPL_SEG_3_OBUF_397,
      SEL => VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy_2_rt_1871,
      O => VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy(2)
    );
  VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_xor_1_Q : X_XOR2
    port map (
      I0 => VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy(0),
      I1 => VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy_1_rt_1869,
      O => VGA_DRVR1_COUNTER_H_CUR_addsub0000(1)
    );
  VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy_1_Q : X_MUX2
    port map (
      IB => VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy(0),
      IA => DPL_SEG_3_OBUF_397,
      SEL => VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy_1_rt_1869,
      O => VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy(1)
    );
  VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_xor_0_Q : X_XOR2
    port map (
      I0 => DPL_SEG_3_OBUF_397,
      I1 => VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_lut(0),
      O => VGA_DRVR1_COUNTER_H_CUR_addsub0000(0)
    );
  VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy_0_Q : X_MUX2
    port map (
      IB => DPL_SEG_3_OBUF_397,
      IA => DPL_SEG_0_OBUF_396,
      SEL => VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_lut(0),
      O => VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy(0)
    );
  VGA_DRVR1_Msub_POS_Y_xor_8_Q : X_XOR2
    port map (
      I0 => VGA_DRVR1_Msub_POS_Y_cy(7),
      I1 => VGA_DRVR1_Msub_POS_Y_lut(8),
      O => POS_V_MEMORY(8)
    );
  VGA_DRVR1_Msub_POS_Y_xor_7_Q : X_XOR2
    port map (
      I0 => VGA_DRVR1_Msub_POS_Y_cy(6),
      I1 => VGA_DRVR1_Msub_POS_Y_lut(7),
      O => POS_V_MEMORY(7)
    );
  VGA_DRVR1_Msub_POS_Y_cy_7_Q : X_MUX2
    port map (
      IB => VGA_DRVR1_Msub_POS_Y_cy(6),
      IA => DPL_SEG_0_OBUF_396,
      SEL => VGA_DRVR1_Msub_POS_Y_lut(7),
      O => VGA_DRVR1_Msub_POS_Y_cy(7)
    );
  VGA_DRVR1_Msub_POS_Y_xor_6_Q : X_XOR2
    port map (
      I0 => VGA_DRVR1_Msub_POS_Y_cy(5),
      I1 => VGA_DRVR1_Msub_POS_Y_lut(6),
      O => POS_V_MEMORY(6)
    );
  VGA_DRVR1_Msub_POS_Y_cy_6_Q : X_MUX2
    port map (
      IB => VGA_DRVR1_Msub_POS_Y_cy(5),
      IA => DPL_SEG_0_OBUF_396,
      SEL => VGA_DRVR1_Msub_POS_Y_lut(6),
      O => VGA_DRVR1_Msub_POS_Y_cy(6)
    );
  VGA_DRVR1_Msub_POS_Y_xor_5_Q : X_XOR2
    port map (
      I0 => VGA_DRVR1_Msub_POS_Y_cy(4),
      I1 => VGA_DRVR1_Msub_POS_Y_lut(5),
      O => POS_V_MEMORY(5)
    );
  VGA_DRVR1_Msub_POS_Y_cy_5_Q : X_MUX2
    port map (
      IB => VGA_DRVR1_Msub_POS_Y_cy(4),
      IA => DPL_SEG_0_OBUF_396,
      SEL => VGA_DRVR1_Msub_POS_Y_lut(5),
      O => VGA_DRVR1_Msub_POS_Y_cy(5)
    );
  VGA_DRVR1_Msub_POS_Y_xor_4_Q : X_XOR2
    port map (
      I0 => VGA_DRVR1_Msub_POS_Y_cy(3),
      I1 => VGA_DRVR1_Msub_POS_Y_cy_4_rt_1952,
      O => POS_V_MEMORY(4)
    );
  VGA_DRVR1_Msub_POS_Y_cy_4_Q : X_MUX2
    port map (
      IB => VGA_DRVR1_Msub_POS_Y_cy(3),
      IA => DPL_SEG_3_OBUF_397,
      SEL => VGA_DRVR1_Msub_POS_Y_cy_4_rt_1952,
      O => VGA_DRVR1_Msub_POS_Y_cy(4)
    );
  VGA_DRVR1_Msub_POS_Y_xor_3_Q : X_XOR2
    port map (
      I0 => VGA_DRVR1_Msub_POS_Y_cy(2),
      I1 => VGA_DRVR1_Msub_POS_Y_cy_3_rt_1950,
      O => POS_V_MEMORY(3)
    );
  VGA_DRVR1_Msub_POS_Y_cy_3_Q : X_MUX2
    port map (
      IB => VGA_DRVR1_Msub_POS_Y_cy(2),
      IA => DPL_SEG_3_OBUF_397,
      SEL => VGA_DRVR1_Msub_POS_Y_cy_3_rt_1950,
      O => VGA_DRVR1_Msub_POS_Y_cy(3)
    );
  VGA_DRVR1_Msub_POS_Y_xor_2_Q : X_XOR2
    port map (
      I0 => VGA_DRVR1_Msub_POS_Y_cy(1),
      I1 => VGA_DRVR1_Msub_POS_Y_cy_2_rt_1948,
      O => POS_V_MEMORY(2)
    );
  VGA_DRVR1_Msub_POS_Y_cy_2_Q : X_MUX2
    port map (
      IB => VGA_DRVR1_Msub_POS_Y_cy(1),
      IA => DPL_SEG_3_OBUF_397,
      SEL => VGA_DRVR1_Msub_POS_Y_cy_2_rt_1948,
      O => VGA_DRVR1_Msub_POS_Y_cy(2)
    );
  VGA_DRVR1_Msub_POS_Y_xor_1_Q : X_XOR2
    port map (
      I0 => VGA_DRVR1_Msub_POS_Y_cy(0),
      I1 => VGA_DRVR1_Msub_POS_Y_cy_1_rt_1946,
      O => POS_V_MEMORY(1)
    );
  VGA_DRVR1_Msub_POS_Y_cy_1_Q : X_MUX2
    port map (
      IB => VGA_DRVR1_Msub_POS_Y_cy(0),
      IA => DPL_SEG_3_OBUF_397,
      SEL => VGA_DRVR1_Msub_POS_Y_cy_1_rt_1946,
      O => VGA_DRVR1_Msub_POS_Y_cy(1)
    );
  VGA_DRVR1_Msub_POS_Y_xor_0_Q : X_XOR2
    port map (
      I0 => DPL_SEG_0_OBUF_396,
      I1 => VGA_DRVR1_Msub_POS_Y_cy_0_rt_1944,
      O => POS_V_MEMORY(0)
    );
  VGA_DRVR1_Msub_POS_Y_cy_0_Q : X_MUX2
    port map (
      IB => DPL_SEG_0_OBUF_396,
      IA => DPL_SEG_3_OBUF_397,
      SEL => VGA_DRVR1_Msub_POS_Y_cy_0_rt_1944,
      O => VGA_DRVR1_Msub_POS_Y_cy(0)
    );
  VGA_DRVR1_CNT200M_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => VGA_DRVR1_BUFGCLK200M,
      I => VGA_DRVR1_Result_2_1,
      O => VGA_DRVR1_CNT200M_21,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  VGA_DRVR1_CNT200M_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => VGA_DRVR1_BUFGCLK200M,
      I => VGA_DRVR1_Result_1_1,
      O => VGA_DRVR1_CNT200M(1),
      CE => VCC,
      SET => GND,
      RST => GND
    );
  VGA_DRVR1_COUNTER_RAM_18 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => VGA_DRVR1_CLK25M,
      CE => VGA_DRVR1_COUNTER_RAM_or0000_inv,
      I => VGA_DRVR1_Result(18),
      SRST => VGA_DRVR1_COUNTER_RAM_and0000,
      O => VGA_DRVR1_COUNTER_RAM(18),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  VGA_DRVR1_COUNTER_RAM_17 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => VGA_DRVR1_CLK25M,
      CE => VGA_DRVR1_COUNTER_RAM_or0000_inv,
      I => VGA_DRVR1_Result(17),
      SRST => VGA_DRVR1_COUNTER_RAM_and0000,
      O => VGA_DRVR1_COUNTER_RAM(17),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  VGA_DRVR1_COUNTER_RAM_16 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => VGA_DRVR1_CLK25M,
      CE => VGA_DRVR1_COUNTER_RAM_or0000_inv,
      I => VGA_DRVR1_Result(16),
      SRST => VGA_DRVR1_COUNTER_RAM_and0000,
      O => VGA_DRVR1_COUNTER_RAM(16),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  VGA_DRVR1_COUNTER_RAM_15 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => VGA_DRVR1_CLK25M,
      CE => VGA_DRVR1_COUNTER_RAM_or0000_inv,
      I => VGA_DRVR1_Result(15),
      SRST => VGA_DRVR1_COUNTER_RAM_and0000,
      O => VGA_DRVR1_COUNTER_RAM(15),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  VGA_DRVR1_COUNTER_RAM_14 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => VGA_DRVR1_CLK25M,
      CE => VGA_DRVR1_COUNTER_RAM_or0000_inv,
      I => VGA_DRVR1_Result(14),
      SRST => VGA_DRVR1_COUNTER_RAM_and0000,
      O => VGA_DRVR1_COUNTER_RAM(14),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  VGA_DRVR1_COUNTER_RAM_13 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => VGA_DRVR1_CLK25M,
      CE => VGA_DRVR1_COUNTER_RAM_or0000_inv,
      I => VGA_DRVR1_Result(13),
      SRST => VGA_DRVR1_COUNTER_RAM_and0000,
      O => VGA_DRVR1_COUNTER_RAM(13),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  VGA_DRVR1_COUNTER_RAM_12 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => VGA_DRVR1_CLK25M,
      CE => VGA_DRVR1_COUNTER_RAM_or0000_inv,
      I => VGA_DRVR1_Result(12),
      SRST => VGA_DRVR1_COUNTER_RAM_and0000,
      O => VGA_DRVR1_COUNTER_RAM(12),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  VGA_DRVR1_COUNTER_RAM_11 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => VGA_DRVR1_CLK25M,
      CE => VGA_DRVR1_COUNTER_RAM_or0000_inv,
      I => VGA_DRVR1_Result(11),
      SRST => VGA_DRVR1_COUNTER_RAM_and0000,
      O => VGA_DRVR1_COUNTER_RAM(11),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  VGA_DRVR1_COUNTER_RAM_10 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => VGA_DRVR1_CLK25M,
      CE => VGA_DRVR1_COUNTER_RAM_or0000_inv,
      I => VGA_DRVR1_Result(10),
      SRST => VGA_DRVR1_COUNTER_RAM_and0000,
      O => VGA_DRVR1_COUNTER_RAM(10),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  VGA_DRVR1_COUNTER_RAM_9 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => VGA_DRVR1_CLK25M,
      CE => VGA_DRVR1_COUNTER_RAM_or0000_inv,
      I => VGA_DRVR1_Result(9),
      SRST => VGA_DRVR1_COUNTER_RAM_and0000,
      O => VGA_DRVR1_COUNTER_RAM(9),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  VGA_DRVR1_COUNTER_RAM_8 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => VGA_DRVR1_CLK25M,
      CE => VGA_DRVR1_COUNTER_RAM_or0000_inv,
      I => VGA_DRVR1_Result(8),
      SRST => VGA_DRVR1_COUNTER_RAM_and0000,
      O => VGA_DRVR1_COUNTER_RAM(8),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  VGA_DRVR1_COUNTER_RAM_7 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => VGA_DRVR1_CLK25M,
      CE => VGA_DRVR1_COUNTER_RAM_or0000_inv,
      I => VGA_DRVR1_Result(7),
      SRST => VGA_DRVR1_COUNTER_RAM_and0000,
      O => VGA_DRVR1_COUNTER_RAM(7),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  VGA_DRVR1_COUNTER_RAM_6 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => VGA_DRVR1_CLK25M,
      CE => VGA_DRVR1_COUNTER_RAM_or0000_inv,
      I => VGA_DRVR1_Result(6),
      SRST => VGA_DRVR1_COUNTER_RAM_and0000,
      O => VGA_DRVR1_COUNTER_RAM(6),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  VGA_DRVR1_COUNTER_RAM_5 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => VGA_DRVR1_CLK25M,
      CE => VGA_DRVR1_COUNTER_RAM_or0000_inv,
      I => VGA_DRVR1_Result(5),
      SRST => VGA_DRVR1_COUNTER_RAM_and0000,
      O => VGA_DRVR1_COUNTER_RAM(5),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  VGA_DRVR1_COUNTER_RAM_4 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => VGA_DRVR1_CLK25M,
      CE => VGA_DRVR1_COUNTER_RAM_or0000_inv,
      I => VGA_DRVR1_Result(4),
      SRST => VGA_DRVR1_COUNTER_RAM_and0000,
      O => VGA_DRVR1_COUNTER_RAM(4),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  VGA_DRVR1_COUNTER_RAM_3 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => VGA_DRVR1_CLK25M,
      CE => VGA_DRVR1_COUNTER_RAM_or0000_inv,
      I => VGA_DRVR1_Result(3),
      SRST => VGA_DRVR1_COUNTER_RAM_and0000,
      O => VGA_DRVR1_COUNTER_RAM(3),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  VGA_DRVR1_COUNTER_RAM_2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => VGA_DRVR1_CLK25M,
      CE => VGA_DRVR1_COUNTER_RAM_or0000_inv,
      I => VGA_DRVR1_Result(2),
      SRST => VGA_DRVR1_COUNTER_RAM_and0000,
      O => VGA_DRVR1_COUNTER_RAM(2),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  VGA_DRVR1_COUNTER_RAM_1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => VGA_DRVR1_CLK25M,
      CE => VGA_DRVR1_COUNTER_RAM_or0000_inv,
      I => VGA_DRVR1_Result(1),
      SRST => VGA_DRVR1_COUNTER_RAM_and0000,
      O => VGA_DRVR1_COUNTER_RAM(1),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  VGA_DRVR1_COUNTER_RAM_0 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => VGA_DRVR1_CLK25M,
      CE => VGA_DRVR1_COUNTER_RAM_or0000_inv,
      I => VGA_DRVR1_Result(0),
      SRST => VGA_DRVR1_COUNTER_RAM_and0000,
      O => VGA_DRVR1_COUNTER_RAM(0),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  VGA_DRVR1_CLK200M_END : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => VGA_DRVR1_CLK400M_BUFG,
      I => DPL_SEG_0_OBUF_396,
      SRST => VGA_DRVR1_CLK200M_END_1740,
      O => VGA_DRVR1_CLK200M_END_1740,
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  VGA_DRVR1_CLK_100_200M : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => VGA_DRVR1_BUFGCLK200M,
      I => DPL_SEG_0_OBUF_396,
      SRST => VGA_DRVR1_CLK_100_200M_1746,
      O => VGA_DRVR1_CLK_100_200M_1746,
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  VGA_DRVR1_COUNTER_V_9 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => VGA_DRVR1_CLK25M,
      CE => VGA_DRVR1_COUNTER_V_not0001_inv,
      I => VGA_DRVR1_COUNTER_V_CUR(9),
      O => VGA_DRVR1_COUNTER_V(9),
      SET => GND,
      RST => GND
    );
  VGA_DRVR1_COUNTER_V_8 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => VGA_DRVR1_CLK25M,
      CE => VGA_DRVR1_COUNTER_V_not0001_inv,
      I => VGA_DRVR1_COUNTER_V_CUR(8),
      O => VGA_DRVR1_COUNTER_V(8),
      SET => GND,
      RST => GND
    );
  VGA_DRVR1_COUNTER_V_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => VGA_DRVR1_CLK25M,
      CE => VGA_DRVR1_COUNTER_V_not0001_inv,
      I => VGA_DRVR1_COUNTER_V_CUR(7),
      O => VGA_DRVR1_COUNTER_V(7),
      SET => GND,
      RST => GND
    );
  VGA_DRVR1_COUNTER_V_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => VGA_DRVR1_CLK25M,
      CE => VGA_DRVR1_COUNTER_V_not0001_inv,
      I => VGA_DRVR1_COUNTER_V_CUR(6),
      O => VGA_DRVR1_COUNTER_V(6),
      SET => GND,
      RST => GND
    );
  VGA_DRVR1_COUNTER_V_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => VGA_DRVR1_CLK25M,
      CE => VGA_DRVR1_COUNTER_V_not0001_inv,
      I => VGA_DRVR1_COUNTER_V_CUR(5),
      O => VGA_DRVR1_COUNTER_V(5),
      SET => GND,
      RST => GND
    );
  VGA_DRVR1_COUNTER_V_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => VGA_DRVR1_CLK25M,
      CE => VGA_DRVR1_COUNTER_V_not0001_inv,
      I => VGA_DRVR1_COUNTER_V_CUR(4),
      O => VGA_DRVR1_COUNTER_V(4),
      SET => GND,
      RST => GND
    );
  VGA_DRVR1_COUNTER_V_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => VGA_DRVR1_CLK25M,
      CE => VGA_DRVR1_COUNTER_V_not0001_inv,
      I => VGA_DRVR1_COUNTER_V_CUR(3),
      O => VGA_DRVR1_COUNTER_V(3),
      SET => GND,
      RST => GND
    );
  VGA_DRVR1_COUNTER_V_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => VGA_DRVR1_CLK25M,
      CE => VGA_DRVR1_COUNTER_V_not0001_inv,
      I => VGA_DRVR1_COUNTER_V_CUR(2),
      O => VGA_DRVR1_COUNTER_V(2),
      SET => GND,
      RST => GND
    );
  VGA_DRVR1_COUNTER_V_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => VGA_DRVR1_CLK25M,
      CE => VGA_DRVR1_COUNTER_V_not0001_inv,
      I => VGA_DRVR1_COUNTER_V_CUR(1),
      O => VGA_DRVR1_COUNTER_V(1),
      SET => GND,
      RST => GND
    );
  VGA_DRVR1_COUNTER_V_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => VGA_DRVR1_CLK25M,
      CE => VGA_DRVR1_COUNTER_V_not0001_inv,
      I => VGA_DRVR1_COUNTER_V_CUR(0),
      O => VGA_DRVR1_COUNTER_V(0),
      SET => GND,
      RST => GND
    );
  VGA_DRVR1_COUNTER_H_9 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => VGA_DRVR1_CLK25M,
      I => VGA_DRVR1_COUNTER_H_CUR(9),
      O => VGA_DRVR1_COUNTER_H(9),
      CE => VCC,
      SET => GND,
      RST => GND
    );
  VGA_DRVR1_COUNTER_H_8 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => VGA_DRVR1_CLK25M,
      I => VGA_DRVR1_COUNTER_H_CUR(8),
      O => VGA_DRVR1_COUNTER_H(8),
      CE => VCC,
      SET => GND,
      RST => GND
    );
  VGA_DRVR1_COUNTER_H_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => VGA_DRVR1_CLK25M,
      I => VGA_DRVR1_COUNTER_H_CUR(7),
      O => VGA_DRVR1_COUNTER_H(7),
      CE => VCC,
      SET => GND,
      RST => GND
    );
  VGA_DRVR1_COUNTER_H_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => VGA_DRVR1_CLK25M,
      I => VGA_DRVR1_COUNTER_H_CUR(6),
      O => VGA_DRVR1_COUNTER_H(6),
      CE => VCC,
      SET => GND,
      RST => GND
    );
  VGA_DRVR1_COUNTER_H_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => VGA_DRVR1_CLK25M,
      I => VGA_DRVR1_COUNTER_H_CUR(5),
      O => VGA_DRVR1_COUNTER_H(5),
      CE => VCC,
      SET => GND,
      RST => GND
    );
  VGA_DRVR1_COUNTER_H_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => VGA_DRVR1_CLK25M,
      I => VGA_DRVR1_COUNTER_H_CUR(4),
      O => VGA_DRVR1_COUNTER_H(4),
      CE => VCC,
      SET => GND,
      RST => GND
    );
  VGA_DRVR1_COUNTER_H_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => VGA_DRVR1_CLK25M,
      I => VGA_DRVR1_COUNTER_H_CUR(3),
      O => VGA_DRVR1_COUNTER_H(3),
      CE => VCC,
      SET => GND,
      RST => GND
    );
  VGA_DRVR1_COUNTER_H_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => VGA_DRVR1_CLK25M,
      I => VGA_DRVR1_COUNTER_H_CUR(2),
      O => VGA_DRVR1_COUNTER_H(2),
      CE => VCC,
      SET => GND,
      RST => GND
    );
  VGA_DRVR1_COUNTER_H_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => VGA_DRVR1_CLK25M,
      I => VGA_DRVR1_COUNTER_H_CUR(1),
      O => VGA_DRVR1_COUNTER_H(1),
      CE => VCC,
      SET => GND,
      RST => GND
    );
  VGA_DRVR1_COUNTER_H_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => VGA_DRVR1_CLK25M,
      I => VGA_DRVR1_COUNTER_H_CUR(0),
      O => VGA_DRVR1_COUNTER_H(0),
      CE => VCC,
      SET => GND,
      RST => GND
    );
  COUNTER_RAM_USB_cmp_eq0000_wg_lut_0_Q : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => COUNTER_RAM_USB(7),
      ADR1 => COUNTER_RAM_USB(4),
      ADR2 => COUNTER_RAM_USB(5),
      O => COUNTER_RAM_USB_cmp_eq0000_wg_lut(0)
    );
  COUNTER_RAM_USB_cmp_eq0000_wg_cy_0_Q : X_MUX2
    port map (
      IB => DPL_SEG_0_OBUF_396,
      IA => DPL_SEG_3_OBUF_397,
      SEL => COUNTER_RAM_USB_cmp_eq0000_wg_lut(0),
      O => COUNTER_RAM_USB_cmp_eq0000_wg_cy(0)
    );
  COUNTER_RAM_USB_cmp_eq0000_wg_lut_1_Q : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => COUNTER_RAM_USB(6),
      ADR1 => COUNTER_RAM_USB(8),
      ADR2 => COUNTER_RAM_USB(3),
      ADR3 => COUNTER_RAM_USB(9),
      O => COUNTER_RAM_USB_cmp_eq0000_wg_lut(1)
    );
  COUNTER_RAM_USB_cmp_eq0000_wg_cy_1_Q : X_MUX2
    port map (
      IB => COUNTER_RAM_USB_cmp_eq0000_wg_cy(0),
      IA => DPL_SEG_3_OBUF_397,
      SEL => COUNTER_RAM_USB_cmp_eq0000_wg_lut(1),
      O => COUNTER_RAM_USB_cmp_eq0000_wg_cy(1)
    );
  COUNTER_RAM_USB_cmp_eq0000_wg_lut_2_Q : X_LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      ADR0 => COUNTER_RAM_USB(11),
      ADR1 => COUNTER_RAM_USB(10),
      ADR2 => COUNTER_RAM_USB(1),
      ADR3 => COUNTER_RAM_USB(12),
      O => COUNTER_RAM_USB_cmp_eq0000_wg_lut(2)
    );
  COUNTER_RAM_USB_cmp_eq0000_wg_cy_2_Q : X_MUX2
    port map (
      IB => COUNTER_RAM_USB_cmp_eq0000_wg_cy(1),
      IA => DPL_SEG_3_OBUF_397,
      SEL => COUNTER_RAM_USB_cmp_eq0000_wg_lut(2),
      O => COUNTER_RAM_USB_cmp_eq0000_wg_cy(2)
    );
  COUNTER_RAM_USB_cmp_eq0000_wg_lut_3_Q : X_LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      ADR0 => COUNTER_RAM_USB(15),
      ADR1 => COUNTER_RAM_USB(13),
      ADR2 => COUNTER_RAM_USB(0),
      ADR3 => COUNTER_RAM_USB(14),
      O => COUNTER_RAM_USB_cmp_eq0000_wg_lut(3)
    );
  COUNTER_RAM_USB_cmp_eq0000_wg_cy_3_Q : X_MUX2
    port map (
      IB => COUNTER_RAM_USB_cmp_eq0000_wg_cy(2),
      IA => DPL_SEG_3_OBUF_397,
      SEL => COUNTER_RAM_USB_cmp_eq0000_wg_lut(3),
      O => COUNTER_RAM_USB_cmp_eq0000_wg_cy(3)
    );
  COUNTER_RAM_USB_cmp_eq0000_wg_lut_4_Q : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => COUNTER_RAM_USB(16),
      ADR1 => COUNTER_RAM_USB(17),
      ADR2 => COUNTER_RAM_USB(2),
      ADR3 => COUNTER_RAM_USB(18),
      O => COUNTER_RAM_USB_cmp_eq0000_wg_lut(4)
    );
  COUNTER_RAM_USB_cmp_eq0000_wg_cy_4_Q : X_MUX2
    port map (
      IB => COUNTER_RAM_USB_cmp_eq0000_wg_cy(3),
      IA => DPL_SEG_3_OBUF_397,
      SEL => COUNTER_RAM_USB_cmp_eq0000_wg_lut(4),
      O => COUNTER_RAM_USB_cmp_eq0000
    );
  MNGDPL_cmp_eq0000_wg_lut_0_Q : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => CNTDPL(5),
      ADR1 => CNTDPL(9),
      O => MNGDPL_cmp_eq0000_wg_lut(0)
    );
  MNGDPL_cmp_eq0000_wg_cy_0_Q : X_MUX2
    port map (
      IB => DPL_SEG_0_OBUF_396,
      IA => DPL_SEG_3_OBUF_397,
      SEL => MNGDPL_cmp_eq0000_wg_lut(0),
      O => MNGDPL_cmp_eq0000_wg_cy(0)
    );
  MNGDPL_cmp_eq0000_wg_lut_1_Q : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => CNTDPL(7),
      ADR1 => CNTDPL(8),
      ADR2 => CNTDPL(4),
      ADR3 => CNTDPL(12),
      O => MNGDPL_cmp_eq0000_wg_lut(1)
    );
  MNGDPL_cmp_eq0000_wg_cy_1_Q : X_MUX2
    port map (
      IB => MNGDPL_cmp_eq0000_wg_cy(0),
      IA => DPL_SEG_3_OBUF_397,
      SEL => MNGDPL_cmp_eq0000_wg_lut(1),
      O => MNGDPL_cmp_eq0000_wg_cy(1)
    );
  MNGDPL_cmp_eq0000_wg_lut_2_Q : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => CNTDPL(10),
      ADR1 => CNTDPL(11),
      ADR2 => CNTDPL(6),
      ADR3 => CNTDPL(13),
      O => MNGDPL_cmp_eq0000_wg_lut(2)
    );
  MNGDPL_cmp_eq0000_wg_cy_2_Q : X_MUX2
    port map (
      IB => MNGDPL_cmp_eq0000_wg_cy(1),
      IA => DPL_SEG_3_OBUF_397,
      SEL => MNGDPL_cmp_eq0000_wg_lut(2),
      O => MNGDPL_cmp_eq0000_wg_cy(2)
    );
  MNGDPL_cmp_eq0000_wg_lut_3_Q : X_LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      ADR0 => CNTDPL(14),
      ADR1 => CNTDPL(15),
      ADR2 => CNTDPL(3),
      ADR3 => CNTDPL(16),
      O => MNGDPL_cmp_eq0000_wg_lut(3)
    );
  MNGDPL_cmp_eq0000_wg_cy_3_Q : X_MUX2
    port map (
      IB => MNGDPL_cmp_eq0000_wg_cy(2),
      IA => DPL_SEG_3_OBUF_397,
      SEL => MNGDPL_cmp_eq0000_wg_lut(3),
      O => MNGDPL_cmp_eq0000_wg_cy(3)
    );
  MNGDPL_cmp_eq0000_wg_lut_4_Q : X_LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      ADR0 => CNTDPL(19),
      ADR1 => CNTDPL(17),
      ADR2 => CNTDPL(2),
      ADR3 => CNTDPL(18),
      O => MNGDPL_cmp_eq0000_wg_lut(4)
    );
  MNGDPL_cmp_eq0000_wg_cy_4_Q : X_MUX2
    port map (
      IB => MNGDPL_cmp_eq0000_wg_cy(3),
      IA => DPL_SEG_3_OBUF_397,
      SEL => MNGDPL_cmp_eq0000_wg_lut(4),
      O => MNGDPL_cmp_eq0000_wg_cy(4)
    );
  MNGDPL_cmp_eq0000_wg_lut_5_Q : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => CNTDPL(22),
      ADR1 => CNTDPL(20),
      ADR2 => CNTDPL(1),
      ADR3 => CNTDPL(21),
      O => MNGDPL_cmp_eq0000_wg_lut(5)
    );
  MNGDPL_cmp_eq0000_wg_cy_5_Q : X_MUX2
    port map (
      IB => MNGDPL_cmp_eq0000_wg_cy(4),
      IA => DPL_SEG_3_OBUF_397,
      SEL => MNGDPL_cmp_eq0000_wg_lut(5),
      O => MNGDPL_cmp_eq0000_wg_cy(5)
    );
  MNGDPL_cmp_eq0000_wg_lut_6_Q : X_LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      ADR0 => CNTDPL(25),
      ADR1 => CNTDPL(23),
      ADR2 => CNTDPL(0),
      ADR3 => CNTDPL(24),
      O => MNGDPL_cmp_eq0000_wg_lut(6)
    );
  MNGDPL_cmp_eq0000_wg_cy_6_Q : X_MUX2
    port map (
      IB => MNGDPL_cmp_eq0000_wg_cy(5),
      IA => DPL_SEG_3_OBUF_397,
      SEL => MNGDPL_cmp_eq0000_wg_lut(6),
      O => MNGDPL_cmp_eq0000
    );
  KBRD_DRIVER_E0_0_cmp_eq00002 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => KBRD_DRIVER_KEY_DOWN_0_or0000,
      ADR1 => KBRD_DRIVER_KBRD_DATA_S(4),
      O => KBRD_DRIVER_E0_0_cmp_eq0000
    );
  KBRD_DRIVER_E0_0_not00011 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => KBRD_DRIVER_COUNTER_KB(0),
      ADR1 => KBRD_DRIVER_KEY_DOWN_0_or0000,
      ADR2 => KBRD_DRIVER_KEY_DOWN_0_and0000,
      ADR3 => KBRD_DRIVER_COUNTER_KB(3),
      O => KBRD_DRIVER_E0_0_not0001
    );
  KBRD_DRIVER_E0_0_cmp_eq00001_SW0 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => KBRD_DRIVER_KBRD_DATA_S(3),
      ADR1 => KBRD_DRIVER_KBRD_DATA_S(2),
      ADR2 => KBRD_DRIVER_KBRD_DATA_S(1),
      ADR3 => KBRD_DRIVER_KBRD_DATA_S(0),
      O => N01
    );
  KBRD_DRIVER_E0_0_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      ADR0 => KBRD_DRIVER_KBRD_DATA_S(7),
      ADR1 => KBRD_DRIVER_KBRD_DATA_S(6),
      ADR2 => KBRD_DRIVER_KBRD_DATA_S(5),
      ADR3 => N01,
      O => KBRD_DRIVER_KEY_DOWN_0_or0000
    );
  USBDRIVER_PWAIT1 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => USBDRIVER_STEPPCUR(0),
      ADR1 => ABORT(5),
      O => PWAIT_OBUF_1617
    );
  USBDRIVER_PDB_and0000_inv1 : X_LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      ADR0 => PWRITE_IBUF_1619,
      ADR1 => USBDRIVER_STEPPCUR(1),
      O => USBDRIVER_PDB_and0000_inv
    );
  PLUS_MEMORY_0_mux00001 : X_LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      ADR0 => USBDRIVER_ABORTEDSN(0),
      ADR1 => PLUS_MEMORY(0),
      O => PLUS_MEMORY_0_mux0000
    );
  Mcount_NPASOS_SAVE_xor_1_11 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => NPASOS_SAVE(0),
      ADR1 => NPASOS_SAVE(1),
      O => Result(1)
    );
  Mcount_MNGDPL_xor_1_11 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => MNGDPL(1),
      ADR1 => MNGDPL(0),
      O => Result_1_2
    );
  Mcount_CNTPROCCES21 : X_LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      ADR0 => CNTPROCCES(2),
      ADR1 => CNTPROCCES(0),
      ADR2 => CNTPROCCES(1),
      O => Mcount_CNTPROCCES2
    );
  DELAY_PLUS_MEMORY_mux0001_2_1 : X_LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      ADR0 => USBDRIVER_ABORTEDSN(0),
      ADR1 => PLUS_MEMORY(0),
      ADR2 => DELAY_PLUS_MEMORY(0),
      O => DELAY_PLUS_MEMORY_mux0001(2)
    );
  Mcount_NPASOS_SAVE_xor_2_11 : X_LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      ADR0 => NPASOS_SAVE(2),
      ADR1 => NPASOS_SAVE(1),
      ADR2 => NPASOS_SAVE(0),
      O => Result(2)
    );
  Mcount_MNGDPL_xor_2_11 : X_LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      ADR0 => MNGDPL(2),
      ADR1 => MNGDPL(1),
      ADR2 => MNGDPL(0),
      O => Result_2_2
    );
  KBRD_DRIVER_COUNTER_KB_mux0002_2_1 : X_LUT4
    generic map(
      INIT => X"0006"
    )
    port map (
      ADR0 => KBRD_DRIVER_COUNTER_KB(0),
      ADR1 => KBRD_DRIVER_COUNTER_KB(1),
      ADR2 => KBRD_DRIVER_PAR_OK_590,
      ADR3 => KBRD_DRIVER_COUNTER_KB(3),
      O => KBRD_DRIVER_COUNTER_KB_mux0002(2)
    );
  DELAY_PLUS_MEMORY_mux0001_1_1 : X_LUT4
    generic map(
      INIT => X"0060"
    )
    port map (
      ADR0 => DELAY_PLUS_MEMORY(0),
      ADR1 => DELAY_PLUS_MEMORY(1),
      ADR2 => PLUS_MEMORY(0),
      ADR3 => USBDRIVER_ABORTEDSN(0),
      O => DELAY_PLUS_MEMORY_mux0001(1)
    );
  LOAD_DATA_0_mux00001 : X_LUT4
    generic map(
      INIT => X"B2AA"
    )
    port map (
      ADR0 => LOAD_DATA(0),
      ADR1 => NPASOS_SAVE(1),
      ADR2 => NPASOS_SAVE(0),
      ADR3 => NPASOS_SAVE(2),
      O => LOAD_DATA_0_mux0000
    );
  Mcount_MNGDPL_xor_3_11 : X_LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      ADR0 => MNGDPL(3),
      ADR1 => MNGDPL(1),
      ADR2 => MNGDPL(0),
      ADR3 => MNGDPL(2),
      O => Result_3_1
    );
  KBRD_DRIVER_WT_KB_0_mux0000_SW0 : X_LUT3
    generic map(
      INIT => X"31"
    )
    port map (
      ADR0 => KBRD_DRIVER_KEY_DOWN(0),
      ADR1 => KBRD_DRIVER_KEY_DOWN_0_or0000,
      ADR2 => KBRD_DRIVER_KEY_UP(0),
      O => N6
    );
  KBRD_DRIVER_WT_KB_0_mux0000 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => KBRD_DRIVER_N4,
      ADR1 => KBRD_DRIVER_WT_KB(0),
      ADR2 => N6,
      ADR3 => KBRD_DRIVER_N8,
      O => KBRD_DRIVER_WT_KB_0_mux0000_593
    );
  VGA_DRVR1_VS_SW0 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_V(3),
      ADR1 => VGA_DRVR1_COUNTER_V(4),
      ADR2 => VGA_DRVR1_COUNTER_V(9),
      O => N8
    );
  VGA_DRVR1_VS : X_LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      ADR0 => VGA_DRVR1_N2,
      ADR1 => VGA_DRVR1_COUNTER_V(1),
      ADR2 => VGA_DRVR1_COUNTER_V(2),
      ADR3 => N8,
      O => VS_OBUF_1986
    );
  KBRD_DRIVER_KBRD_DATA_and000027 : X_LUT4
    generic map(
      INIT => X"080A"
    )
    port map (
      ADR0 => KBRD_DRIVER_KBRD_DATA_and000018,
      ADR1 => KBRD_DRIVER_KEY_UP(0),
      ADR2 => KBRD_DRIVER_WT_KB(0),
      ADR3 => KBRD_DRIVER_KEY_DOWN(0),
      O => KBRD_DRIVER_KBRD_DATA_and0000
    );
  KBRD_DRIVER_KEY_UP_0_mux0000_SW0 : X_LUT4
    generic map(
      INIT => X"AA8A"
    )
    port map (
      ADR0 => KBRD_DRIVER_KEY_UP(0),
      ADR1 => KBRD_DRIVER_KEY_DOWN(0),
      ADR2 => KBRD_DRIVER_WT_KB(0),
      ADR3 => KBRD_DRIVER_N4,
      O => N16
    );
  KBRD_DRIVER_KEY_UP_0_mux0000 : X_LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      ADR0 => KBRD_DRIVER_N8,
      ADR1 => KBRD_DRIVER_KEY_DOWN_0_or0000,
      ADR2 => KBRD_DRIVER_KBRD_DATA_S(4),
      ADR3 => N16,
      O => KBRD_DRIVER_KEY_UP_0_mux0000_585
    );
  KBRD_DRIVER_KBRD_DATA_S_6_and00001 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => KBRD_DRIVER_N11,
      ADR1 => KBRD_DRIVER_COUNTER_KB(2),
      ADR2 => KBRD_DRIVER_COUNTER_KB(1),
      O => KBRD_DRIVER_KBRD_DATA_S_6_and0000
    );
  KBRD_DRIVER_KBRD_DATA_S_5_and00001 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => KBRD_DRIVER_N2,
      ADR1 => KBRD_DRIVER_COUNTER_KB(2),
      ADR2 => KBRD_DRIVER_COUNTER_KB(1),
      O => KBRD_DRIVER_KBRD_DATA_S_5_and0000
    );
  KBRD_DRIVER_KBRD_DATA_S_4_and00001 : X_LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      ADR0 => KBRD_DRIVER_N11,
      ADR1 => KBRD_DRIVER_COUNTER_KB(2),
      ADR2 => KBRD_DRIVER_COUNTER_KB(1),
      O => KBRD_DRIVER_KBRD_DATA_S_4_and0000
    );
  KBRD_DRIVER_KBRD_DATA_S_3_and00001 : X_LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      ADR0 => KBRD_DRIVER_N2,
      ADR1 => KBRD_DRIVER_COUNTER_KB(2),
      ADR2 => KBRD_DRIVER_COUNTER_KB(1),
      O => KBRD_DRIVER_KBRD_DATA_S_3_and0000
    );
  KBRD_DRIVER_KBRD_DATA_S_2_and00001 : X_LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      ADR0 => KBRD_DRIVER_COUNTER_KB(1),
      ADR1 => KBRD_DRIVER_N11,
      ADR2 => KBRD_DRIVER_COUNTER_KB(2),
      O => KBRD_DRIVER_KBRD_DATA_S_2_and0000
    );
  KBRD_DRIVER_KBRD_DATA_S_1_and00001 : X_LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      ADR0 => KBRD_DRIVER_COUNTER_KB(1),
      ADR1 => KBRD_DRIVER_N2,
      ADR2 => KBRD_DRIVER_COUNTER_KB(2),
      O => KBRD_DRIVER_KBRD_DATA_S_1_and0000
    );
  KBRD_DRIVER_KBRD_DATA_S_0_and000011 : X_LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      ADR0 => KBRD_DRIVER_COUNTER_KB(3),
      ADR1 => KBRD_DRIVER_COUNTER_KB(0),
      ADR2 => RESET(0),
      O => KBRD_DRIVER_N11
    );
  KBRD_DRIVER_KBRD_DATA_S_7_and00001 : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => RESET(0),
      ADR1 => KBRD_DRIVER_COUNTER_KB(0),
      ADR2 => KBRD_DRIVER_KEY_DOWN_0_and0000,
      ADR3 => KBRD_DRIVER_COUNTER_KB(3),
      O => KBRD_DRIVER_KBRD_DATA_S_7_and0000
    );
  DELAY_PLUS_MEMORY_not0001 : X_LUT4
    generic map(
      INIT => X"080A"
    )
    port map (
      ADR0 => N162,
      ADR1 => USBDRIVER_DATAOK(0),
      ADR2 => ERASE_RAM(0),
      ADR3 => PLUS_MEMORY_0_mux0000,
      O => DELAY_PLUS_MEMORY_not0001_380
    );
  ALT_0_and000221 : X_LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      ADR0 => KBRD_DRIVER_KBRD_DATA(5),
      ADR1 => KBRD_DRIVER_KBRD_DATA(4),
      ADR2 => KBRD_DRIVER_KBRD_DATA(2),
      O => N297
    );
  KBRD_DRIVER_KEY_DOWN_0_mux000069 : X_LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      ADR0 => KBRD_DRIVER_N8,
      ADR1 => KBRD_DRIVER_KEY_DOWN_0_or0000,
      ADR2 => KBRD_DRIVER_KEY_UP(0),
      ADR3 => KBRD_DRIVER_WT_KB(0),
      O => KBRD_DRIVER_KEY_DOWN_0_mux000069_582
    );
  KBRD_DRIVER_KEY_DOWN_0_mux000071 : X_LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      ADR0 => KBRD_DRIVER_KEY_DOWN(0),
      ADR1 => KBRD_DRIVER_KEY_DOWN_0_mux000034,
      ADR2 => KBRD_DRIVER_KEY_DOWN_0_mux000069_582,
      O => KBRD_DRIVER_KEY_DOWN_0_mux0000
    );
  VGA_DRVR1_COLOR_0_11 : X_LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      ADR0 => VGA_DRVR1_CNT200M_21,
      ADR1 => IM_16_8_BITS(0),
      O => VGA_DRVR1_N1
    );
  DATAS_mux0000_9_1 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => PLUS_MEMORY(0),
      ADR1 => WORDDATA_TEMP(9),
      ADR2 => USBDRIVER_HIBYTE(1),
      O => DATA_9_IOBUF
    );
  DATAS_mux0000_3_1 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => PLUS_MEMORY(0),
      ADR1 => WORDDATA_TEMP(3),
      ADR2 => USBDRIVER_LOBYTE(3),
      O => DATA_3_IOBUF
    );
  DATAS_mux0000_15_1 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => PLUS_MEMORY(0),
      ADR1 => WORDDATA_TEMP(15),
      ADR2 => USBDRIVER_HIBYTE(7),
      O => DATA_15_IOBUF
    );
  VGA_DRVR1_COUNTER_V_CUR_0_1 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_V_CUR_addsub0000(0),
      ADR1 => VGA_DRVR1_COUNTER_V_CUR_cmp_eq0000_1861,
      O => VGA_DRVR1_COUNTER_V_CUR(0)
    );
  KBRD_DRIVER_ENABLE_KB_0_and000021 : X_LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      ADR0 => KBRD_DRIVER_COUNTER_KB(2),
      ADR1 => KBRD_DRIVER_COUNTER_KB(1),
      O => KBRD_DRIVER_KEY_DOWN_0_and0000
    );
  PLUSMINUSTAB_0_or00011 : X_LUT4
    generic map(
      INIT => X"2004"
    )
    port map (
      ADR0 => KBRD_DRIVER_KBRD_DATA(6),
      ADR1 => KBRD_DRIVER_KBRD_DATA(1),
      ADR2 => KBRD_DRIVER_KBRD_DATA(0),
      ADR3 => KBRD_DRIVER_KBRD_DATA(3),
      O => PLUSMINUSTAB_0_or0001
    );
  PLUSMINUSTAB_0_mux0000 : X_LUT4
    generic map(
      INIT => X"AA2E"
    )
    port map (
      ADR0 => PLUSMINUSTAB(0),
      ADR1 => N24,
      ADR2 => KBRD_DRIVER_KEY_DOWN(0),
      ADR3 => KBRD_DRIVER_KBRD_DATA(7),
      O => PLUSMINUSTAB_0_mux0000_1504
    );
  VGA_DRVR1_COUNTER_V_CUR_cmp_eq0000_SW0 : X_LUT4
    generic map(
      INIT => X"FFDF"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_V(3),
      ADR1 => VGA_DRVR1_COUNTER_V(4),
      ADR2 => VGA_DRVR1_COUNTER_V(9),
      ADR3 => VGA_DRVR1_COUNTER_V(2),
      O => N28
    );
  VGA_DRVR1_COUNTER_V_CUR_cmp_eq0000 : X_LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      ADR0 => VGA_DRVR1_N2,
      ADR1 => VGA_DRVR1_COUNTER_V(0),
      ADR2 => VGA_DRVR1_COUNTER_V(1),
      ADR3 => N28,
      O => VGA_DRVR1_COUNTER_V_CUR_cmp_eq0000_1861
    );
  RESET_0_not00011 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => RESET(0),
      ADR1 => ENABLE_KB,
      O => RESET_0_not0001
    );
  RESET_CNT_USB_0_and000211 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => IMPOS_19_and0018,
      ADR1 => KBRD_DRIVER_KBRD_DATA(1),
      ADR2 => KBRD_DRIVER_KBRD_DATA(0),
      O => N325
    );
  PICTUREOK_0_not000121 : X_LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      ADR0 => ERASEFLASH_SIGNAL(0),
      ADR1 => ERASEFLASH(0),
      ADR2 => LOADFLASH(0),
      O => N162
    );
  VGA_DRVR1_COUNTER_V_CUR_1_1 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_V_CUR_addsub0000(1),
      ADR1 => VGA_DRVR1_COUNTER_V_CUR_cmp_eq0000_1861,
      O => VGA_DRVR1_COUNTER_V_CUR(1)
    );
  IM_16_8_BITS_0_mux000051 : X_LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      ADR0 => KBRD_DRIVER_KBRD_DATA(3),
      ADR1 => KBRD_DRIVER_KBRD_DATA(6),
      O => N179
    );
  Madd_POSIM_add0000_cy_2_11 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => POSIM(0),
      ADR1 => POSIM(1),
      ADR2 => POSIM(2),
      O => Madd_POSIM_add0000_cy(2)
    );
  WORDDATA_TEMP_mux0000_7_1 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => N134,
      ADR1 => WORDDATA_TEMP(8),
      ADR2 => N170,
      ADR3 => WE_SIGNAL_mux000174,
      O => WORDDATA_TEMP_mux0000(7)
    );
  WORDDATA_TEMP_mux0000_6_1 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => N134,
      ADR1 => WORDDATA_TEMP(9),
      ADR2 => N1691,
      ADR3 => WE_SIGNAL_mux000174,
      O => WORDDATA_TEMP_mux0000(6)
    );
  WORDDATA_TEMP_mux0000_5_1 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => N134,
      ADR1 => WORDDATA_TEMP(10),
      ADR2 => N168,
      ADR3 => WE_SIGNAL_mux000174,
      O => WORDDATA_TEMP_mux0000(5)
    );
  WORDDATA_TEMP_mux0000_4_1 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => N134,
      ADR1 => WORDDATA_TEMP(11),
      ADR2 => N167,
      ADR3 => WE_SIGNAL_mux000174,
      O => WORDDATA_TEMP_mux0000(4)
    );
  WORDDATA_TEMP_mux0000_3_1 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => N134,
      ADR1 => WORDDATA_TEMP(12),
      ADR2 => N1661,
      ADR3 => WE_SIGNAL_mux000174,
      O => WORDDATA_TEMP_mux0000(3)
    );
  WORDDATA_TEMP_mux0000_2_1 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => N134,
      ADR1 => WORDDATA_TEMP(13),
      ADR2 => N1651,
      ADR3 => WE_SIGNAL_mux000174,
      O => WORDDATA_TEMP_mux0000(2)
    );
  WORDDATA_TEMP_mux0000_1_1 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => N134,
      ADR1 => WORDDATA_TEMP(14),
      ADR2 => N1641,
      ADR3 => WE_SIGNAL_mux000174,
      O => WORDDATA_TEMP_mux0000(1)
    );
  WORDDATA_TEMP_mux0000_0_1 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => N134,
      ADR1 => WORDDATA_TEMP(15),
      ADR2 => N1631,
      ADR3 => WE_SIGNAL_mux000174,
      O => WORDDATA_TEMP_mux0000(0)
    );
  WORDDATA_TEMP_mux0000_9_Q : X_LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      ADR0 => N77,
      ADR1 => N30,
      ADR2 => N1721,
      ADR3 => WE_SIGNAL_mux000174,
      O => WORDDATA_TEMP_mux0000(9)
    );
  WORDDATA_TEMP_mux0000_8_Q : X_LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      ADR0 => N77,
      ADR1 => N32,
      ADR2 => N171,
      ADR3 => WE_SIGNAL_mux000174,
      O => WORDDATA_TEMP_mux0000(8)
    );
  WORDDATA_TEMP_mux0000_15_Q : X_LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      ADR0 => N41,
      ADR1 => N34,
      ADR2 => N178,
      ADR3 => WE_SIGNAL_mux000174,
      O => WORDDATA_TEMP_mux0000(15)
    );
  WORDDATA_TEMP_mux0000_14_Q : X_LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      ADR0 => N41,
      ADR1 => N36,
      ADR2 => N1771,
      ADR3 => WE_SIGNAL_mux000174,
      O => WORDDATA_TEMP_mux0000(14)
    );
  WORDDATA_TEMP_mux0000_13_Q : X_LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      ADR0 => N41,
      ADR1 => N381,
      ADR2 => N176,
      ADR3 => WE_SIGNAL_mux000174,
      O => WORDDATA_TEMP_mux0000(13)
    );
  WORDDATA_TEMP_mux0000_12_Q : X_LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      ADR0 => N41,
      ADR1 => N401,
      ADR2 => N1751,
      ADR3 => WE_SIGNAL_mux000174,
      O => WORDDATA_TEMP_mux0000(12)
    );
  WORDDATA_TEMP_mux0000_11_Q : X_LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      ADR0 => N77,
      ADR1 => N421,
      ADR2 => N1741,
      ADR3 => WE_SIGNAL_mux000174,
      O => WORDDATA_TEMP_mux0000(11)
    );
  WORDDATA_TEMP_mux0000_10_3_SW0 : X_LUT3
    generic map(
      INIT => X"6E"
    )
    port map (
      ADR0 => CNTPROCCES(1),
      ADR1 => CNTPROCCES(0),
      ADR2 => CNTPROCCES(2),
      O => N441
    );
  WORDDATA_TEMP_mux0000_10_10 : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => CNTPROCCES(3),
      ADR1 => CNTPROCCES(2),
      ADR2 => ST_CE_SIGNAL_and0005,
      ADR3 => N306,
      O => WORDDATA_TEMP_mux0000_10_10_2021
    );
  CNTPRSTEP_mux0000_1_4 : X_LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      ADR0 => BTN_IBUF_178,
      ADR1 => CNTPRSTEP(0),
      ADR2 => LOADFLASH(0),
      O => CNTPRSTEP_mux0000_1_4_234
    );
  CNTPRSTEP_mux0000_1_19 : X_LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      ADR0 => KBRD_DRIVER_E0(0),
      ADR1 => KBRD_DRIVER_KEY_DOWN(0),
      ADR2 => PRESENTATION(0),
      O => CNTPRSTEP_mux0000_1_19_233
    );
  CNTPRSTEP_mux0000_0_7 : X_LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      ADR0 => KBRD_DRIVER_E0(0),
      ADR1 => KBRD_DRIVER_KEY_DOWN(0),
      ADR2 => PRESENTATION(0),
      O => CNTPRSTEP_mux0000_0_7_231
    );
  CNTPRSTEP_mux0000_0_56 : X_LUT4
    generic map(
      INIT => X"0006"
    )
    port map (
      ADR0 => CNTPRSTEP(0),
      ADR1 => CNTPRSTEP(1),
      ADR2 => LOADFLASH(0),
      ADR3 => BTN_IBUF_178,
      O => CNTPRSTEP_mux0000_0_56_230
    );
  VGA_DRVR1_COUNTER_V_CUR_2_1 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_V_CUR_addsub0000(2),
      ADR1 => VGA_DRVR1_COUNTER_V_CUR_cmp_eq0000_1861,
      O => VGA_DRVR1_COUNTER_V_CUR(2)
    );
  VGA_DRVR1_COUNTER_V_CUR_3_1 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_V_CUR_addsub0000(3),
      ADR1 => VGA_DRVR1_COUNTER_V_CUR_cmp_eq0000_1861,
      O => VGA_DRVR1_COUNTER_V_CUR(3)
    );
  VGA_DRVR1_COUNTER_V_CUR_4_1 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_V_CUR_addsub0000(4),
      ADR1 => VGA_DRVR1_COUNTER_V_CUR_cmp_eq0000_1861,
      O => VGA_DRVR1_COUNTER_V_CUR(4)
    );
  VGA_DRVR1_F_8_TO_91 : X_LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      ADR0 => VGA_DRVR1_CNT200M(0),
      ADR1 => VGA_DRVR1_CNT200M_21,
      ADR2 => VGA_DRVR1_CNT200M(1),
      O => VGA_DRVR1_F_8_TO_9
    );
  DATAS_mux0000_8_1 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => PLUS_MEMORY(0),
      ADR1 => WORDDATA_TEMP(8),
      ADR2 => USBDRIVER_HIBYTE(0),
      O => DATA_8_IOBUF
    );
  DATAS_mux0000_7_1 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => PLUS_MEMORY(0),
      ADR1 => WORDDATA_TEMP(7),
      ADR2 => USBDRIVER_LOBYTE(7),
      O => DATA_7_IOBUF
    );
  DATAS_mux0000_6_1 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => PLUS_MEMORY(0),
      ADR1 => WORDDATA_TEMP(6),
      ADR2 => USBDRIVER_LOBYTE(6),
      O => DATA_6_IOBUF
    );
  DATAS_mux0000_2_1 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => PLUS_MEMORY(0),
      ADR1 => WORDDATA_TEMP(2),
      ADR2 => USBDRIVER_LOBYTE(2),
      O => DATA_2_IOBUF
    );
  DATAS_mux0000_14_1 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => PLUS_MEMORY(0),
      ADR1 => WORDDATA_TEMP(14),
      ADR2 => USBDRIVER_HIBYTE(6),
      O => DATA_14_IOBUF
    );
  DATAS_mux0000_13_1 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => PLUS_MEMORY(0),
      ADR1 => WORDDATA_TEMP(13),
      ADR2 => USBDRIVER_HIBYTE(5),
      O => DATA_13_IOBUF
    );
  DATAS_mux0000_12_1 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => PLUS_MEMORY(0),
      ADR1 => WORDDATA_TEMP(12),
      ADR2 => USBDRIVER_HIBYTE(4),
      O => DATA_12_IOBUF
    );
  VGA_DRVR1_F_101 : X_LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      ADR0 => VGA_DRVR1_CNT200M(0),
      ADR1 => VGA_DRVR1_CNT200M_21,
      ADR2 => VGA_DRVR1_CLK200M_END_1740,
      ADR3 => VGA_DRVR1_CNT200M(1),
      O => VGA_DRVR1_F_10
    );
  VGA_DRVR1_COUNTER_RAM_and00008 : X_LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_H(4),
      ADR1 => VGA_DRVR1_COUNTER_H(3),
      ADR2 => N650,
      ADR3 => VGA_DRVR1_N13,
      O => VGA_DRVR1_COUNTER_RAM_and00008_1823
    );
  VGA_DRVR1_COUNTER_RAM_and000015 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_V(7),
      ADR1 => VGA_DRVR1_COUNTER_V(6),
      ADR2 => VGA_DRVR1_COUNTER_V(5),
      ADR3 => VGA_DRVR1_COUNTER_V(8),
      O => VGA_DRVR1_COUNTER_RAM_and000015_1818
    );
  VGA_DRVR1_COUNTER_RAM_and000017 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_V(1),
      ADR1 => VGA_DRVR1_COUNTER_V(2),
      O => VGA_DRVR1_COUNTER_RAM_and000017_1819
    );
  VGA_DRVR1_COUNTER_RAM_and000022 : X_LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_V(3),
      ADR1 => VGA_DRVR1_COUNTER_V(4),
      ADR2 => VGA_DRVR1_COUNTER_V(0),
      ADR3 => VGA_DRVR1_COUNTER_RAM_and000017_1819,
      O => VGA_DRVR1_COUNTER_RAM_and000022_1821
    );
  VGA_DRVR1_COUNTER_RAM_and000034 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_V(9),
      ADR1 => VGA_DRVR1_COUNTER_H(8),
      ADR2 => VGA_DRVR1_COUNTER_H(9),
      O => VGA_DRVR1_COUNTER_RAM_and000034_1822
    );
  VGA_DRVR1_COUNTER_V_CUR_5_1 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_V_CUR_addsub0000(5),
      ADR1 => VGA_DRVR1_COUNTER_V_CUR_cmp_eq0000_1861,
      O => VGA_DRVR1_COUNTER_V_CUR(5)
    );
  VGA_DRVR1_COUNTER_V_CUR_6_1 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_V_CUR_addsub0000(6),
      ADR1 => VGA_DRVR1_COUNTER_V_CUR_cmp_eq0000_1861,
      O => VGA_DRVR1_COUNTER_V_CUR(6)
    );
  VGA_DRVR1_COUNTER_RAM_or000021 : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_V(7),
      ADR1 => VGA_DRVR1_COUNTER_V(8),
      ADR2 => VGA_DRVR1_COUNTER_V(6),
      ADR3 => VGA_DRVR1_COUNTER_V(5),
      O => VGA_DRVR1_N2
    );
  ERASEFLASH_SIGNAL_0_and00021 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => KBRD_DRIVER_KBRD_DATA(5),
      ADR1 => KBRD_DRIVER_KBRD_DATA(4),
      ADR2 => N651,
      ADR3 => N301,
      O => ERASEFLASH_SIGNAL_0_and0002
    );
  NORM_NEGA_0_not0002_SW0 : X_LUT4
    generic map(
      INIT => X"F7FF"
    )
    port map (
      ADR0 => KBRD_DRIVER_KBRD_DATA(5),
      ADR1 => KBRD_DRIVER_KBRD_DATA(4),
      ADR2 => KBRD_DRIVER_KBRD_DATA(2),
      ADR3 => N179,
      O => N46
    );
  NORM_NEGA_0_not0002 : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => N174,
      ADR1 => N46,
      ADR2 => N301,
      ADR3 => INPRES_0_not0001,
      O => NORM_NEGA_0_not0002_1472
    );
  VGA_DRVR1_COUNTER_V_CUR_7_1 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_V_CUR_addsub0000(7),
      ADR1 => VGA_DRVR1_COUNTER_V_CUR_cmp_eq0000_1861,
      O => VGA_DRVR1_COUNTER_V_CUR(7)
    );
  VGA_DRVR1_COUNTER_V_CUR_8_1 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_V_CUR_addsub0000(8),
      ADR1 => VGA_DRVR1_COUNTER_V_CUR_cmp_eq0000_1861,
      O => VGA_DRVR1_COUNTER_V_CUR(8)
    );
  VGA_DRVR1_COUNTER_V_CUR_9_1 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_V_CUR_addsub0000(9),
      ADR1 => VGA_DRVR1_COUNTER_V_CUR_cmp_eq0000_1861,
      O => VGA_DRVR1_COUNTER_V_CUR(9)
    );
  ERASE_RAM_0_mux00001 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => INPRES_0_not0001,
      ADR1 => ERASE_RAM_0_cmp_eq0000,
      ADR2 => N715,
      O => ERASE_RAM_0_mux0000
    );
  COUNTER_RAM_USB_mux0001_9_1 : X_LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      ADR0 => N3,
      ADR1 => COUNTER_RAM_USB_add0000(9),
      ADR2 => COUNTER_RAM_USB_cmp_eq0000,
      O => COUNTER_RAM_USB_mux0001(9)
    );
  COUNTER_RAM_USB_mux0001_18_1 : X_LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      ADR0 => N3,
      ADR1 => COUNTER_RAM_USB_add0000(0),
      ADR2 => COUNTER_RAM_USB_cmp_eq0000,
      O => COUNTER_RAM_USB_mux0001(18)
    );
  COUNTER_RAM_USB_mux0001_17_1 : X_LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      ADR0 => N3,
      ADR1 => COUNTER_RAM_USB_add0000(1),
      ADR2 => COUNTER_RAM_USB_cmp_eq0000,
      O => COUNTER_RAM_USB_mux0001(17)
    );
  COUNTER_RAM_USB_mux0001_16_1 : X_LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      ADR0 => N3,
      ADR1 => COUNTER_RAM_USB_add0000(2),
      ADR2 => COUNTER_RAM_USB_cmp_eq0000,
      O => COUNTER_RAM_USB_mux0001(16)
    );
  COUNTER_RAM_USB_mux0001_15_1 : X_LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      ADR0 => N3,
      ADR1 => COUNTER_RAM_USB_add0000(3),
      ADR2 => COUNTER_RAM_USB_cmp_eq0000,
      O => COUNTER_RAM_USB_mux0001(15)
    );
  COUNTER_RAM_USB_mux0001_14_1 : X_LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      ADR0 => N3,
      ADR1 => COUNTER_RAM_USB_add0000(4),
      ADR2 => COUNTER_RAM_USB_cmp_eq0000,
      O => COUNTER_RAM_USB_mux0001(14)
    );
  COUNTER_RAM_USB_mux0001_13_1 : X_LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      ADR0 => N3,
      ADR1 => COUNTER_RAM_USB_add0000(5),
      ADR2 => COUNTER_RAM_USB_cmp_eq0000,
      O => COUNTER_RAM_USB_mux0001(13)
    );
  COUNTER_RAM_USB_mux0001_12_1 : X_LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      ADR0 => N3,
      ADR1 => COUNTER_RAM_USB_add0000(6),
      ADR2 => COUNTER_RAM_USB_cmp_eq0000,
      O => COUNTER_RAM_USB_mux0001(12)
    );
  COUNTER_RAM_USB_mux0001_11_1 : X_LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      ADR0 => N3,
      ADR1 => COUNTER_RAM_USB_add0000(7),
      ADR2 => COUNTER_RAM_USB_cmp_eq0000,
      O => COUNTER_RAM_USB_mux0001(11)
    );
  COUNTER_RAM_USB_mux0001_10_1 : X_LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      ADR0 => N3,
      ADR1 => COUNTER_RAM_USB_add0000(8),
      ADR2 => COUNTER_RAM_USB_cmp_eq0000,
      O => COUNTER_RAM_USB_mux0001(10)
    );
  COUNTER_RAM_USB_mux0001_0_11 : X_LUT4
    generic map(
      INIT => X"EFEE"
    )
    port map (
      ADR0 => WE_SIGNAL_mux00018,
      ADR1 => WE_SIGNAL_mux000174,
      ADR2 => USBDRIVER_ABORTEDSN(0),
      ADR3 => N143,
      O => N3
    );
  POSIM_cmp_eq0001 : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => IMPOS(17),
      ADR1 => IMPOS(16),
      ADR2 => IMPOS(18),
      ADR3 => N481,
      O => POSIM_cmp_eq0001_1519
    );
  COUNTER_RAM_USB_mux0001_8_1 : X_LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      ADR0 => N3,
      ADR1 => COUNTER_RAM_USB_add0000(10),
      ADR2 => COUNTER_RAM_USB_cmp_eq0000,
      O => COUNTER_RAM_USB_mux0001(8)
    );
  COUNTER_RAM_USB_mux0001_7_1 : X_LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      ADR0 => N3,
      ADR1 => COUNTER_RAM_USB_add0000(11),
      ADR2 => COUNTER_RAM_USB_cmp_eq0000,
      O => COUNTER_RAM_USB_mux0001(7)
    );
  COUNTER_RAM_USB_mux0001_6_1 : X_LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      ADR0 => N3,
      ADR1 => COUNTER_RAM_USB_add0000(12),
      ADR2 => COUNTER_RAM_USB_cmp_eq0000,
      O => COUNTER_RAM_USB_mux0001(6)
    );
  COUNTER_RAM_USB_mux0001_5_1 : X_LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      ADR0 => N3,
      ADR1 => COUNTER_RAM_USB_add0000(13),
      ADR2 => COUNTER_RAM_USB_cmp_eq0000,
      O => COUNTER_RAM_USB_mux0001(5)
    );
  SHOWINFO_0_not00022 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => N325,
      ADR1 => N296,
      ADR2 => INPRES_0_not0001,
      O => SHOWINFO_0_not0002
    );
  VGA_DRVR1_COUNTER_RAM_or000048 : X_LUT4
    generic map(
      INIT => X"0103"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_H(7),
      ADR1 => VGA_DRVR1_COUNTER_H(9),
      ADR2 => VGA_DRVR1_COUNTER_H(8),
      ADR3 => VGA_DRVR1_Msub_POS_X_cy(6),
      O => VGA_DRVR1_COUNTER_RAM_or000048_1828
    );
  COUNTER_RAM_USB_mux0001_4_1 : X_LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      ADR0 => N3,
      ADR1 => COUNTER_RAM_USB_add0000(14),
      ADR2 => COUNTER_RAM_USB_cmp_eq0000,
      O => COUNTER_RAM_USB_mux0001(4)
    );
  COUNTER_RAM_USB_mux0001_3_1 : X_LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      ADR0 => N3,
      ADR1 => COUNTER_RAM_USB_add0000(15),
      ADR2 => COUNTER_RAM_USB_cmp_eq0000,
      O => COUNTER_RAM_USB_mux0001(3)
    );
  COUNTER_RAM_USB_mux0001_2_1 : X_LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      ADR0 => N3,
      ADR1 => COUNTER_RAM_USB_add0000(16),
      ADR2 => COUNTER_RAM_USB_cmp_eq0000,
      O => COUNTER_RAM_USB_mux0001(2)
    );
  PRESENTATION_0_mux0000111 : X_LUT4
    generic map(
      INIT => X"FFDF"
    )
    port map (
      ADR0 => KBRD_DRIVER_KBRD_DATA(5),
      ADR1 => KBRD_DRIVER_KBRD_DATA(6),
      ADR2 => INPRES_0_and0000,
      ADR3 => KBRD_DRIVER_KBRD_DATA(2),
      O => N266
    );
  LOADFLASH_0_mux0000 : X_LUT4
    generic map(
      INIT => X"2232"
    )
    port map (
      ADR0 => IMPOS_19_or0003,
      ADR1 => LOADFLASH(0),
      ADR2 => INPRES_0_not0001,
      ADR3 => N541,
      O => LOADFLASH_0_mux0000_595
    );
  INPRES_0_mux00005 : X_LUT4
    generic map(
      INIT => X"CCC8"
    )
    port map (
      ADR0 => N266,
      ADR1 => INPRES(0),
      ADR2 => N174,
      ADR3 => KBRD_DRIVER_KBRD_DATA(3),
      O => INPRES_0_mux00005_527
    );
  INPRES_0_mux000010 : X_LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      ADR0 => KBRD_DRIVER_KBRD_DATA(3),
      ADR1 => KBRD_DRIVER_KBRD_DATA(2),
      ADR2 => PRESENTATION(0),
      O => INPRES_0_mux000010_525
    );
  PRESENTATION_0_mux000016 : X_LUT4
    generic map(
      INIT => X"FF2E"
    )
    port map (
      ADR0 => N174,
      ADR1 => KBRD_DRIVER_KBRD_DATA(3),
      ADR2 => INPRES(0),
      ADR3 => N266,
      O => PRESENTATION_0_mux000016_1611
    );
  PRESENTATION_0_mux000035 : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => KBRD_DRIVER_KBRD_DATA(5),
      ADR1 => N174,
      ADR2 => KBRD_DRIVER_KBRD_DATA(6),
      ADR3 => KBRD_DRIVER_KBRD_DATA(2),
      O => PRESENTATION_0_mux000035_1612
    );
  PRESENTATION_0_mux000041 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => INPRES(0),
      ADR1 => KBRD_DRIVER_KBRD_DATA(2),
      O => PRESENTATION_0_mux000041_1613
    );
  PRESENTATION_0_mux000051 : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => KBRD_DRIVER_KBRD_DATA(6),
      ADR1 => PRESENTATION(0),
      ADR2 => PRESENTATION_0_mux000041_1613,
      ADR3 => KBRD_DRIVER_KBRD_DATA(5),
      O => PRESENTATION_0_mux000051_1614
    );
  PRESENTATION_0_mux000070 : X_LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      ADR0 => PRESENTATION_0_mux000035_1612,
      ADR1 => KBRD_DRIVER_KBRD_DATA(3),
      ADR2 => INPRES_0_and0000,
      ADR3 => PRESENTATION_0_mux000051_1614,
      O => PRESENTATION_0_mux000070_1615
    );
  PRESENTATION_0_mux000084 : X_LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      ADR0 => PRESENTATION(0),
      ADR1 => PRESENTATION_0_mux000016_1611,
      ADR2 => PRESENTATION_0_mux000070_1615,
      O => PRESENTATION_0_mux0000
    );
  RESETCNTDPL_0_mux00008 : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => KBRD_DRIVER_KBRD_DATA(1),
      ADR1 => KBRD_DRIVER_KBRD_DATA(0),
      ADR2 => KBRD_DRIVER_KBRD_DATA(5),
      ADR3 => KBRD_DRIVER_KBRD_DATA(2),
      O => RESETCNTDPL_0_mux00008_1630
    );
  RESETCNTDPL_0_mux000067 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => N149,
      ADR1 => RESETCNTDPL_0_mux000055_1629,
      O => RESETCNTDPL_0_mux0000
    );
  COUNTER_RAM_USB_mux0001_1_1 : X_LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      ADR0 => N3,
      ADR1 => COUNTER_RAM_USB_add0000(17),
      ADR2 => COUNTER_RAM_USB_cmp_eq0000,
      O => COUNTER_RAM_USB_mux0001(1)
    );
  COUNTER_RAM_USB_mux0001_0_1 : X_LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      ADR0 => N3,
      ADR1 => COUNTER_RAM_USB_add0000(18),
      ADR2 => COUNTER_RAM_USB_cmp_eq0000,
      O => COUNTER_RAM_USB_mux0001(0)
    );
  CNTDPL_or00001 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => RESETCNTDPL(0),
      ADR1 => MNGDPL_cmp_eq0000,
      O => CNTDPL_or0000
    );
  DATAS_mux0000_5_1 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => PLUS_MEMORY(0),
      ADR1 => WORDDATA_TEMP(5),
      ADR2 => USBDRIVER_LOBYTE(5),
      O => DATA_5_IOBUF
    );
  DATAS_mux0000_4_1 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => PLUS_MEMORY(0),
      ADR1 => WORDDATA_TEMP(4),
      ADR2 => USBDRIVER_LOBYTE(4),
      O => DATA_4_IOBUF
    );
  DATAS_mux0000_1_1 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => PLUS_MEMORY(0),
      ADR1 => WORDDATA_TEMP(1),
      ADR2 => USBDRIVER_LOBYTE(1),
      O => DATA_1_IOBUF
    );
  DATAS_mux0000_11_1 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => PLUS_MEMORY(0),
      ADR1 => WORDDATA_TEMP(11),
      ADR2 => USBDRIVER_HIBYTE(3),
      O => DATA_11_IOBUF
    );
  DATAS_mux0000_10_1 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => PLUS_MEMORY(0),
      ADR1 => WORDDATA_TEMP(10),
      ADR2 => USBDRIVER_HIBYTE(2),
      O => DATA_10_IOBUF
    );
  DATAS_mux0000_0_1 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => PLUS_MEMORY(0),
      ADR1 => WORDDATA_TEMP(0),
      ADR2 => USBDRIVER_LOBYTE(0),
      O => DATA_0_IOBUF
    );
  DELAYFLASH_or000011 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => IMPOS_19_cmp_eq0006,
      ADR1 => N319,
      O => CNTPROCCES_not0001
    );
  IM_16_8_BITS_0_not00012 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => PRESENTATION(0),
      ADR1 => RESET_CNT_USB(0),
      O => IM_16_8_BITS_0_not00012_521
    );
  IM_16_8_BITS_0_not000115 : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => ERASEFLASH_SIGNAL(0),
      ADR1 => ERASEFLASH(0),
      ADR2 => ABORT(5),
      ADR3 => BTN_IBUF_178,
      O => IM_16_8_BITS_0_not000115_520
    );
  IM_16_8_BITS_0_not000138 : X_LUT4
    generic map(
      INIT => X"FF20"
    )
    port map (
      ADR0 => IM_16_8_BITS_0_not000115_520,
      ADR1 => N82,
      ADR2 => IM_16_8_BITS_0_not00012_521,
      ADR3 => INPRES_0_not0001,
      O => IM_16_8_BITS_0_not0001
    );
  USBDRIVER_STEPPNEXT_4_1 : X_LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      ADR0 => N658,
      ADR1 => ASTB_IBUF_172,
      ADR2 => DSTB_IBUF_399,
      O => USBDRIVER_STEPPNEXT_4_Q
    );
  CTRL_0_not0001_SW0 : X_LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      ADR0 => KBRD_DRIVER_KBRD_DATA(4),
      ADR1 => KBRD_DRIVER_KBRD_DATA(5),
      O => N56
    );
  CTRL_0_not0001 : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => KBRD_DRIVER_KBRD_DATA(3),
      ADR1 => N56,
      ADR2 => PLUSMINUSTAB_0_not0001,
      ADR3 => N144,
      O => CTRL_0_not0001_317
    );
  OE_SIGNAL_mux0000321 : X_LUT3
    generic map(
      INIT => X"72"
    )
    port map (
      ADR0 => NPASOS_SAVE(2),
      ADR1 => NPASOS_SAVE(1),
      ADR2 => NPASOS_SAVE(0),
      O => N341
    );
  Madd_IMPOS_22_16_add0000_xor_4_11 : X_LUT4
    generic map(
      INIT => X"3C6C"
    )
    port map (
      ADR0 => N673,
      ADR1 => IMPOS(20),
      ADR2 => IMPOS(19),
      ADR3 => IMPOS(18),
      O => IMPOS_22_16_add0000(4)
    );
  ABORT_5_mux0000 : X_LUT4
    generic map(
      INIT => X"FFDF"
    )
    port map (
      ADR0 => MNGDPL_cmp_eq0000,
      ADR1 => N149,
      ADR2 => ABORT(5),
      ADR3 => N62,
      O => ABORT_5_mux0000_119
    );
  VGA_DRVR1_COUNTER_H_CUR_0_1 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_H_CUR_addsub0000(0),
      ADR1 => VGA_DRVR1_COUNTER_H_CUR_cmp_eq0000_1797,
      O => VGA_DRVR1_COUNTER_H_CUR(0)
    );
  VGA_DRVR1_COUNTER_RAM_or0000410 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_H(9),
      ADR1 => VGA_DRVR1_COUNTER_H(8),
      ADR2 => VGA_DRVR1_COUNTER_H(4),
      O => VGA_DRVR1_N12
    );
  VGA_DRVR1_COUNTER_H_CUR_cmp_eq000011 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_H(0),
      ADR1 => VGA_DRVR1_COUNTER_H(1),
      ADR2 => VGA_DRVR1_COUNTER_H(2),
      O => VGA_DRVR1_N13
    );
  USBDRIVER_STEPPNEXT_cmp_eq00041 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => N285,
      ADR1 => USBDRIVER_STEPPCUR(6),
      ADR2 => N656,
      O => USBDRIVER_STEPPNEXT_cmp_eq0004
    );
  USBDRIVER_STEPPNEXT_cmp_eq000121 : X_LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      ADR0 => USBDRIVER_STEPPCUR(4),
      ADR1 => N655,
      ADR2 => USBDRIVER_STEPPCUR(7),
      O => N326
    );
  RESETCNTDPL_0_not00011 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => RESETCNTDPL(0),
      ADR1 => N149,
      ADR2 => INPRES_0_not0001,
      O => RESETCNTDPL_0_not0001
    );
  RESET_CNT_USB_0_not00011 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => KBRD_DRIVER_KBRD_DATA(2),
      ADR1 => PLUSMINUSTAB_0_not0001,
      ADR2 => N325,
      ADR3 => N179,
      O => RESET_CNT_USB_0_not0001
    );
  CNTPRSTEP_not000111 : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => KBRD_DRIVER_E0(0),
      ADR1 => BTN_IBUF_178,
      ADR2 => KBRD_DRIVER_KEY_DOWN(0),
      ADR3 => N696,
      O => INPRES_0_not0001
    );
  ALT_0_not00011 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => N301,
      ADR1 => PLUSMINUSTAB_0_not0001,
      ADR2 => N297,
      ADR3 => N179,
      O => ALT_0_not0001
    );
  ABORT_5_mux000011 : X_LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      ADR0 => KBRD_DRIVER_KEY_UP(0),
      ADR1 => ABORT_5_cmp_eq0000,
      ADR2 => N675,
      ADR3 => KBRD_DRIVER_KEY_DOWN(0),
      O => N149
    );
  ABORT_5_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      ADR0 => KBRD_DRIVER_KBRD_DATA(4),
      ADR1 => KBRD_DRIVER_KBRD_DATA(3),
      ADR2 => N659,
      ADR3 => KBRD_DRIVER_KBRD_DATA(5),
      O => ABORT_5_cmp_eq0000
    );
  ALT_0_not000121 : X_LUT4
    generic map(
      INIT => X"40E0"
    )
    port map (
      ADR0 => KBRD_DRIVER_KEY_DOWN(0),
      ADR1 => KBRD_DRIVER_KEY_UP(0),
      ADR2 => N318,
      ADR3 => KBRD_DRIVER_E0(0),
      O => PLUSMINUSTAB_0_not0001
    );
  USBDRIVER_STEPPNEXT_cmp_eq00031 : X_LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      ADR0 => USBDRIVER_STEPPCUR(5),
      ADR1 => USBDRIVER_STEPPCUR(4),
      ADR2 => USBDRIVER_STEPPCUR(1),
      ADR3 => N641,
      O => N277
    );
  USBDRIVER_STEPPNEXT_cmp_eq00021 : X_LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      ADR0 => USBDRIVER_STEPPCUR(5),
      ADR1 => USBDRIVER_STEPPCUR(4),
      ADR2 => USBDRIVER_STEPPCUR(1),
      ADR3 => N661,
      O => N278
    );
  ST_CE_SIGNAL_and0003 : X_LUT4
    generic map(
      INIT => X"1131"
    )
    port map (
      ADR0 => N708,
      ADR1 => LOADFLASH(0),
      ADR2 => IMPOS_19_or0003,
      ADR3 => IMPOS_19_cmp_eq0006,
      O => ST_CE_SIGNAL_and0003_1673
    );
  USBDRIVER_STEPPNEXT_0_230 : X_LUT4
    generic map(
      INIT => X"0280"
    )
    port map (
      ADR0 => N326,
      ADR1 => USBDRIVER_STEPPCUR(6),
      ADR2 => USBDRIVER_STEPPCUR(3),
      ADR3 => USBDRIVER_STEPPCUR(2),
      O => USBDRIVER_STEPPNEXT_0_230_1721
    );
  USBDRIVER_STEPPNEXT_7_SW0 : X_LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      ADR0 => N657,
      ADR1 => USBDRIVER_STEPPCUR(3),
      ADR2 => USBDRIVER_STEPPCUR(2),
      ADR3 => DSTB_IBUF_399,
      O => N72
    );
  USBDRIVER_STEPPNEXT_7_Q : X_LUT4
    generic map(
      INIT => X"EC20"
    )
    port map (
      ADR0 => USBDRIVER_STEPPCUR(7),
      ADR1 => USBDRIVER_STEPPCUR(6),
      ADR2 => N72,
      ADR3 => N277,
      O => USBDRIVER_STEPPNEXT_7_Q_1734
    );
  USBDRIVER_STEPPNEXT_5_SW0 : X_LUT4
    generic map(
      INIT => X"51F3"
    )
    port map (
      ADR0 => PWRITE_IBUF_1619,
      ADR1 => N278,
      ADR2 => USBDRIVER_STEPPCUR(6),
      ADR3 => USBDRIVER_STEPPNEXT_cmp_eq0000,
      O => N74
    );
  USBDRIVER_STEPPNEXT_5_SW1 : X_LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      ADR0 => PWRITE_IBUF_1619,
      ADR1 => USBDRIVER_STEPPNEXT_cmp_eq0000,
      ADR2 => DSTB_IBUF_399,
      O => N75
    );
  USBDRIVER_STEPPNEXT_5_Q : X_LUT4
    generic map(
      INIT => X"FF1B"
    )
    port map (
      ADR0 => ASTB_IBUF_172,
      ADR1 => N74,
      ADR2 => N75,
      ADR3 => N251,
      O => USBDRIVER_STEPPNEXT_5_Q_1729
    );
  USBDRIVER_STEPPNEXT_0_17 : X_LUT4
    generic map(
      INIT => X"2232"
    )
    port map (
      ADR0 => USBDRIVER_STEPPNEXT_cmp_eq0004,
      ADR1 => ASTB_IBUF_172,
      ADR2 => N278,
      ADR3 => USBDRIVER_STEPPCUR(6),
      O => USBDRIVER_STEPPNEXT_0_17_1720
    );
  USBDRIVER_STEPPNEXT_0_251 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => USBDRIVER_STEPPNEXT_0_5_1722,
      ADR1 => N699,
      ADR2 => USBDRIVER_STEPPNEXT_0_17_1720,
      O => USBDRIVER_STEPPNEXT_0_Q
    );
  ABORT_5_not000132 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => N149,
      ADR1 => ABORT_5_not000112_121,
      ADR2 => ABORT_5_not000120_122,
      O => ABORT_5_not0001
    );
  USBDRIVER_STEPPNEXT_1_6 : X_LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      ADR0 => PWRITE_IBUF_1619,
      ADR1 => ASTB_IBUF_172,
      ADR2 => DSTB_IBUF_399,
      O => USBDRIVER_STEPPNEXT_1_6_1725
    );
  USBDRIVER_STEPPNEXT_1_38 : X_LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      ADR0 => USBDRIVER_STEPPNEXT_7_Q_1734,
      ADR1 => USBDRIVER_STEPPNEXT_1_32_1724,
      ADR2 => USBDRIVER_STEPPNEXT_cmp_eq0000,
      ADR3 => USBDRIVER_STEPPNEXT_1_6_1725,
      O => USBDRIVER_STEPPNEXT_1_Q
    );
  USBDRIVER_STEPPNEXT_6_20 : X_LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      ADR0 => N326,
      ADR1 => USBDRIVER_STEPPCUR(6),
      ADR2 => USBDRIVER_STEPPCUR(3),
      ADR3 => USBDRIVER_STEPPCUR(2),
      O => USBDRIVER_STEPPNEXT_6_20_1732
    );
  USBDRIVER_STEPPNEXT_6_35 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => ASTB_IBUF_172,
      ADR1 => USBDRIVER_STEPPNEXT_cmp_eq0000,
      ADR2 => N278,
      ADR3 => USBDRIVER_STEPPCUR(6),
      O => USBDRIVER_STEPPNEXT_6_35_1733
    );
  USBDRIVER_STEPPNEXT_6_45 : X_LUT4
    generic map(
      INIT => X"EFEE"
    )
    port map (
      ADR0 => USBDRIVER_STEPPNEXT_6_10_1731,
      ADR1 => USBDRIVER_STEPPNEXT_6_20_1732,
      ADR2 => DSTB_IBUF_399,
      ADR3 => USBDRIVER_STEPPNEXT_6_35_1733,
      O => USBDRIVER_STEPPNEXT_6_Q
    );
  COUNTER_RAM_USB_not000145 : X_LUT4
    generic map(
      INIT => X"EFEE"
    )
    port map (
      ADR0 => COUNTER_RAM_USB_not00012_314,
      ADR1 => COUNTER_RAM_USB_not000123_315,
      ADR2 => N146,
      ADR3 => NPASOS_SAVE_not0001,
      O => COUNTER_RAM_USB_not0001
    );
  USBDRIVER_ABORTEDSN_0_and000010 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => USBDRIVER_HIBYTE(1),
      ADR1 => USBDRIVER_HIBYTE(0),
      ADR2 => USBDRIVER_STEPPCUR(1),
      ADR3 => PWRITE_IBUF_1619,
      O => USBDRIVER_ABORTEDSN_0_and000010_1691
    );
  VGA_DRVR1_COUNTER_H_CUR_4_1 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_H_CUR_addsub0000(4),
      ADR1 => VGA_DRVR1_COUNTER_H_CUR_cmp_eq0000_1797,
      O => VGA_DRVR1_COUNTER_H_CUR(4)
    );
  VGA_DRVR1_COUNTER_H_CUR_5_1 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_H_CUR_addsub0000(5),
      ADR1 => VGA_DRVR1_COUNTER_H_CUR_cmp_eq0000_1797,
      O => VGA_DRVR1_COUNTER_H_CUR(5)
    );
  Msub_IMPOS_22_16_sub0000_cy_3_11 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => IMPOS(19),
      ADR1 => IMPOS(18),
      O => Msub_IMPOS_22_16_sub0000_cy(3)
    );
  Madd_IMPOS_22_16_add0000_xor_6_11 : X_LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      ADR0 => IMPOS(22),
      ADR1 => Madd_IMPOS_22_16_add0000_cy_4_Q,
      ADR2 => IMPOS(21),
      O => IMPOS_22_16_add0000(6)
    );
  VGA_DRVR1_COUNTER_H_CUR_6_1 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_H_CUR_addsub0000(6),
      ADR1 => VGA_DRVR1_COUNTER_H_CUR_cmp_eq0000_1797,
      O => VGA_DRVR1_COUNTER_H_CUR(6)
    );
  CNTPRSTEP_not0001111 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => N139,
      ADR1 => IMPOS_19_and0018,
      ADR2 => CNTPRSTEP_not00019_241,
      O => CNTPRSTEP_not000111_236
    );
  CNTPRSTEP_not000135 : X_LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      ADR0 => PICTUREOK(0),
      ADR1 => ERASEFLASH_SIGNAL(0),
      ADR2 => ERASEFLASH(0),
      ADR3 => ABORT(5),
      O => CNTPRSTEP_not000135_237
    );
  CNTPRSTEP_not000143 : X_LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      ADR0 => BTN_IBUF_178,
      ADR1 => PRESENTATION(0),
      ADR2 => RESET_CNT_USB(0),
      O => CNTPRSTEP_not000143_238
    );
  CNTPRSTEP_not000156 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => N332,
      ADR1 => N306,
      ADR2 => CNTPRSTEP_not000135_237,
      ADR3 => CNTPRSTEP_not000143_238,
      O => CNTPRSTEP_not000156_239
    );
  CNTPRSTEP_not0001100 : X_LUT4
    generic map(
      INIT => X"FF20"
    )
    port map (
      ADR0 => N311,
      ADR1 => N146,
      ADR2 => NPASOS_SAVE_not0001,
      ADR3 => CNTPRSTEP_not000181_240,
      O => CNTPRSTEP_not0001
    );
  VGA_DRVR1_COUNTER_H_CUR_7_1 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_H_CUR_addsub0000(7),
      ADR1 => VGA_DRVR1_COUNTER_H_CUR_cmp_eq0000_1797,
      O => VGA_DRVR1_COUNTER_H_CUR(7)
    );
  DELAYFLASH_or00001 : X_LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      ADR0 => NPASOS_SAVE_not0001,
      ADR1 => CNTPROCCES_not0001,
      ADR2 => IMPOS_19_cmp_eq0003,
      ADR3 => WE_SIGNAL_mux00018,
      O => DELAYFLASH_or0000
    );
  VGA_DRVR1_COUNTER_H_CUR_8_1 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_H_CUR_addsub0000(8),
      ADR1 => VGA_DRVR1_COUNTER_H_CUR_cmp_eq0000_1797,
      O => VGA_DRVR1_COUNTER_H_CUR(8)
    );
  VGA_DRVR1_COUNTER_H_CUR_1_1 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_H_CUR_addsub0000(1),
      ADR1 => VGA_DRVR1_COUNTER_H_CUR_cmp_eq0000_1797,
      O => VGA_DRVR1_COUNTER_H_CUR(1)
    );
  VGA_DRVR1_COUNTER_H_CUR_9_1 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_H_CUR_addsub0000(9),
      ADR1 => VGA_DRVR1_COUNTER_H_CUR_cmp_eq0000_1797,
      O => VGA_DRVR1_COUNTER_H_CUR(9)
    );
  ST_CE_SIGNAL_not000112 : X_LUT4
    generic map(
      INIT => X"FF2F"
    )
    port map (
      ADR0 => ST_CE_SIGNAL_1672,
      ADR1 => OE_SIGNAL_1479,
      ADR2 => LOADFLASH(0),
      ADR3 => IMPOS_19_cmp_eq0004,
      O => ST_CE_SIGNAL_not000112_1681
    );
  ST_CE_SIGNAL_not000134 : X_LUT4
    generic map(
      INIT => X"2232"
    )
    port map (
      ADR0 => ERASE_RAM(0),
      ADR1 => N717,
      ADR2 => ST_CE_SIGNAL_not000112_1681,
      ADR3 => ST_CE_SIGNAL_and0003_1673,
      O => ST_CE_SIGNAL_not0001
    );
  OE_SIGNAL_not0001 : X_LUT4
    generic map(
      INIT => X"FF01"
    )
    port map (
      ADR0 => ERASE_RAM(0),
      ADR1 => N162,
      ADR2 => N771,
      ADR3 => N160,
      O => OE_SIGNAL_not0001_1484
    );
  ST_RP_SIGNAL_not000115 : X_LUT4
    generic map(
      INIT => X"5557"
    )
    port map (
      ADR0 => LOADFLASH(0),
      ADR1 => OE_SIGNAL_1479,
      ADR2 => ST_RP_SIGNAL_1683,
      ADR3 => ST_CE_SIGNAL_1672,
      O => ST_RP_SIGNAL_not000115_1688
    );
  WE_SIGNAL_not000115 : X_LUT4
    generic map(
      INIT => X"0F08"
    )
    port map (
      ADR0 => IMPOS_19_cmp_eq0006,
      ADR1 => IMPOS_19_or0003,
      ADR2 => LOADFLASH(0),
      ADR3 => WE_SIGNAL_not00015_2002,
      O => WE_SIGNAL_not000115_2000
    );
  WE_SIGNAL_not000145 : X_LUT4
    generic map(
      INIT => X"3332"
    )
    port map (
      ADR0 => WE_SIGNAL_not000115_2000,
      ADR1 => PICTUREOK_0_and0000,
      ADR2 => WE_SIGNAL_not000129_2001,
      ADR3 => ERASE_RAM(0),
      O => WE_SIGNAL_not0001
    );
  VGA_DRVR1_COUNTER_H_CUR_2_1 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_H_CUR_addsub0000(2),
      ADR1 => VGA_DRVR1_COUNTER_H_CUR_cmp_eq0000_1797,
      O => VGA_DRVR1_COUNTER_H_CUR(2)
    );
  MT_CE_SIGNAL_mux000015 : X_LUT4
    generic map(
      INIT => X"0F01"
    )
    port map (
      ADR0 => NPASOS_SAVE(0),
      ADR1 => NPASOS_SAVE(1),
      ADR2 => NPASOS_SAVE(2),
      ADR3 => MT_CE_SIGNAL_624,
      O => MT_CE_SIGNAL_mux000015_626
    );
  VGA_DRVR1_COUNTER_H_CUR_3_1 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_H_CUR_addsub0000(3),
      ADR1 => N710,
      O => VGA_DRVR1_COUNTER_H_CUR(3)
    );
  VGA_DRVR1_COUNTER_V_cmp_eq000039 : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_H_CUR(7),
      ADR1 => VGA_DRVR1_COUNTER_H_CUR(6),
      ADR2 => VGA_DRVR1_COUNTER_H_CUR(5),
      ADR3 => VGA_DRVR1_COUNTER_H_CUR(4),
      O => VGA_DRVR1_COUNTER_V_cmp_eq000039_1862
    );
  Madd_IMPOS_22_16_add0000_xor_5_11 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => IMPOS(21),
      ADR1 => N6611,
      O => IMPOS_22_16_add0000(5)
    );
  IM_16_8_BITS_0_and00041 : X_LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      ADR0 => KBRD_DRIVER_KBRD_DATA(2),
      ADR1 => N660,
      ADR2 => KBRD_DRIVER_KBRD_DATA(5),
      O => IM_16_8_BITS_0_and0004
    );
  ERASEFLASH_0_mux00001 : X_LUT3
    generic map(
      INIT => X"D5"
    )
    port map (
      ADR0 => N141,
      ADR1 => N17,
      ADR2 => ERASEFLASH(0),
      O => ERASEFLASH_0_mux0000
    );
  ST_CE_SIGNAL_mux000026 : X_LUT4
    generic map(
      INIT => X"F8D9"
    )
    port map (
      ADR0 => NPASOS_SAVE(0),
      ADR1 => NPASOS_SAVE(1),
      ADR2 => ST_CE_SIGNAL_1672,
      ADR3 => NPASOS_SAVE(2),
      O => ST_CE_SIGNAL_mux000026_1676
    );
  ST_CE_SIGNAL_mux000050 : X_LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      ADR0 => IMPOS_19_cmp_eq0004,
      ADR1 => LOADFLASH(0),
      ADR2 => ST_CE_SIGNAL_mux000026_1676,
      ADR3 => ERASE_RAM(0),
      O => ST_CE_SIGNAL_mux000050_1677
    );
  ST_CE_SIGNAL_mux000091 : X_LUT4
    generic map(
      INIT => X"FF32"
    )
    port map (
      ADR0 => ST_CE_SIGNAL_mux000070_1679,
      ADR1 => LOADFLASH(0),
      ADR2 => ST_CE_SIGNAL_mux000064_1678,
      ADR3 => ST_CE_SIGNAL_mux000050_1677,
      O => ST_CE_SIGNAL_mux0000
    );
  ERASE_RAM_0_not00012 : X_LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      ADR0 => ERASE_RAM_0_and0010,
      ADR1 => INPRES_0_not0001,
      ADR2 => N652,
      ADR3 => N160,
      O => ERASE_RAM_0_not0001
    );
  DATAS_or000111 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => PLUS_MEMORY(0),
      ADR1 => LOADFLASH(0),
      ADR2 => ERASE_RAM(0),
      O => N153
    );
  DATAS_or0001 : X_LUT4
    generic map(
      INIT => X"222F"
    )
    port map (
      ADR0 => WE_SIGNAL_1988,
      ADR1 => OE_SIGNAL_1479,
      ADR2 => ERASEFLASH(0),
      ADR3 => N79,
      O => DATAS_not0001_inv
    );
  NPASOS_SAVE_or00001 : X_LUT3
    generic map(
      INIT => X"AE"
    )
    port map (
      ADR0 => N714,
      ADR1 => NPASOS_SAVE_not0001,
      ADR2 => N146,
      O => NPASOS_SAVE_or0000
    );
  CNTPRSTEP_not000152 : X_LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      ADR0 => ERASE_RAM(0),
      ADR1 => LOADFLASH(0),
      O => N306
    );
  POSIM_cmp_eq00001 : X_LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      ADR0 => POSIM(3),
      ADR1 => POSIM(4),
      ADR2 => N665,
      O => POSIM_cmp_eq0000
    );
  IM_16_8_BITS_0_mux00001 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => CNTPRSTEP(1),
      ADR1 => PICTUREOK(0),
      O => IM_16_8_BITS_0_mux00001_508
    );
  IM_16_8_BITS_0_mux000014 : X_LUT4
    generic map(
      INIT => X"EC20"
    )
    port map (
      ADR0 => IM_16_8_BITS_0_mux00001_508,
      ADR1 => CNTPRSTEP(0),
      ADR2 => N136,
      ADR3 => IM_16_8_BITS(0),
      O => IM_16_8_BITS_0_mux000014_510
    );
  IM_16_8_BITS_0_mux000030 : X_LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      ADR0 => KBRD_DRIVER_KEY_DOWN(0),
      ADR1 => ENABLE_KB,
      ADR2 => KBRD_DRIVER_E0(0),
      O => IM_16_8_BITS_0_mux000030_514
    );
  IM_16_8_BITS_0_mux000038 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => CNTPRSTEP(0),
      ADR1 => CNTPRSTEP(1),
      ADR2 => IM_16_8_BITS(0),
      O => IM_16_8_BITS_0_mux000038_515
    );
  IM_16_8_BITS_0_mux0000132 : X_LUT4
    generic map(
      INIT => X"D080"
    )
    port map (
      ADR0 => PRESENTATION(0),
      ADR1 => IM_16_8_BITS_0_mux000064_517,
      ADR2 => IM_16_8_BITS(0),
      ADR3 => IM_16_8_BITS_0_mux000091_518,
      O => IM_16_8_BITS_0_mux0000132_509
    );
  IM_16_8_BITS_0_mux0000152 : X_LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      ADR0 => KBRD_DRIVER_KBRD_DATA(3),
      ADR1 => PRESENTATION(0),
      O => IM_16_8_BITS_0_mux0000152_511
    );
  IM_16_8_BITS_0_mux0000186 : X_LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      ADR0 => ENABLE_KB,
      ADR1 => KBRD_DRIVER_KEY_DOWN(0),
      ADR2 => KBRD_DRIVER_E0(0),
      O => IM_16_8_BITS_0_mux0000186_513
    );
  IM_16_8_BITS_0_mux0000202 : X_LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      ADR0 => IM_16_8_BITS_0_mux0000186_513,
      ADR1 => IM_16_8_BITS_0_mux0000132_509,
      ADR2 => IM_16_8_BITS_0_mux000049_516,
      ADR3 => IM_16_8_BITS_0_mux0000160_512,
      O => IM_16_8_BITS_0_mux0000
    );
  IMPOS_19_cmp_eq0014 : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => IMPOS(17),
      ADR1 => IMPOS(16),
      ADR2 => IMPOS(18),
      ADR3 => N871,
      O => IMPOS_19_cmp_eq0014_462
    );
  POSIM_mux0004_0_5_SW0 : X_LUT3
    generic map(
      INIT => X"BF"
    )
    port map (
      ADR0 => PLUSMINUSTAB(0),
      ADR1 => IMPOS_19_cmp_eq0014_462,
      ADR2 => IMPOS_19_cmp_eq0013,
      O => N89
    );
  POSIM_not0001 : X_LUT4
    generic map(
      INIT => X"F3F2"
    )
    port map (
      ADR0 => ERASE_RAM(0),
      ADR1 => IMPOS_19_and0000,
      ADR2 => INPRES_0_not0001,
      ADR3 => N911,
      O => POSIM_not0001_1554
    );
  IMPOS_19_not0001114 : X_LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      ADR0 => PICTUREOK(0),
      ADR1 => PLUS_MEMORY(0),
      ADR2 => RESET_CNT_USB(0),
      ADR3 => USBDRIVER_DATAOK(0),
      O => IMPOS_19_not0001114_467
    );
  IMPOS_19_not00011311 : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => BTN_IBUF_178,
      ADR1 => ABORT(5),
      ADR2 => PRESENTATION(0),
      ADR3 => IMPOS_19_not0001126_469,
      O => IMPOS_19_not00011311_470
    );
  IMPOS_19_cmp_eq00121 : X_LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      ADR0 => N292,
      ADR1 => KBRD_DRIVER_KBRD_DATA(1),
      ADR2 => KBRD_DRIVER_KBRD_DATA(0),
      O => IMPOS_19_cmp_eq0012
    );
  OE_SIGNAL_mux000022_SW0 : X_LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      ADR0 => CNTPROCCES(2),
      ADR1 => CNTPROCCES(0),
      O => N931
    );
  ST_RP_SIGNAL_mux000031 : X_LUT4
    generic map(
      INIT => X"A222"
    )
    port map (
      ADR0 => N319,
      ADR1 => N141,
      ADR2 => ST_RP_SIGNAL_1683,
      ADR3 => N670,
      O => ST_RP_SIGNAL_mux000031_1685
    );
  IMPOS_19_cmp_eq000610 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => DELAYFLASH(6),
      ADR1 => DELAYFLASH(7),
      ADR2 => DELAYFLASH(5),
      ADR3 => DELAYFLASH(4),
      O => IMPOS_19_cmp_eq000610_457
    );
  OE_SIGNAL_mux000088 : X_LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      ADR0 => N341,
      ADR1 => OE_SIGNAL_1479,
      ADR2 => NPASOS_SAVE_not0001,
      ADR3 => OE_SIGNAL_mux000082_1482,
      O => OE_SIGNAL_mux000088_1483
    );
  WE_SIGNAL_mux000112 : X_LUT4
    generic map(
      INIT => X"FF20"
    )
    port map (
      ADR0 => IMPOS_19_cmp_eq0008,
      ADR1 => LOADFLASH(0),
      ADR2 => N143,
      ADR3 => N666,
      O => WE_SIGNAL_mux000112_1990
    );
  WE_SIGNAL_mux000137 : X_LUT4
    generic map(
      INIT => X"02AB"
    )
    port map (
      ADR0 => WE_SIGNAL_1988,
      ADR1 => NPASOS_SAVE(1),
      ADR2 => NPASOS_SAVE(0),
      ADR3 => NPASOS_SAVE(2),
      O => WE_SIGNAL_mux000137_1994
    );
  WE_SIGNAL_mux000152 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => NPASOS_SAVE(0),
      ADR1 => NPASOS_SAVE(1),
      O => WE_SIGNAL_mux000152_1995
    );
  WE_SIGNAL_mux000155 : X_LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      ADR0 => WE_SIGNAL_1988,
      ADR1 => WE_SIGNAL_mux000152_1995,
      ADR2 => NPASOS_SAVE(2),
      ADR3 => N718,
      O => WE_SIGNAL_mux000155_1996
    );
  WE_SIGNAL_mux0001133 : X_LUT4
    generic map(
      INIT => X"E9EB"
    )
    port map (
      ADR0 => CNTPROCCES(2),
      ADR1 => CNTPROCCES(3),
      ADR2 => CNTPROCCES(1),
      ADR3 => CNTPROCCES(0),
      O => WE_SIGNAL_mux0001133_1991
    );
  WE_SIGNAL_mux0001195 : X_LUT4
    generic map(
      INIT => X"0029"
    )
    port map (
      ADR0 => CNTPROCCES(0),
      ADR1 => CNTPROCCES(1),
      ADR2 => CNTPROCCES(3),
      ADR3 => CNTPROCCES(2),
      O => WE_SIGNAL_mux0001195_1992
    );
  WE_SIGNAL_mux00012111 : X_LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      ADR0 => N671,
      ADR1 => WE_SIGNAL_mux0001195_1992,
      ADR2 => WE_SIGNAL_1988,
      ADR3 => WE_SIGNAL_mux0001133_1991,
      O => WE_SIGNAL_mux0001211_1993
    );
  VGA_DRVR1_Mcount_CNT200M_xor_1_11 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => VGA_DRVR1_CNT200M(1),
      ADR1 => VGA_DRVR1_CNT200M(0),
      O => VGA_DRVR1_Result_1_1
    );
  VGA_DRVR1_Mcount_CNT200M_xor_2_11 : X_LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      ADR0 => VGA_DRVR1_CNT200M(1),
      ADR1 => VGA_DRVR1_CNT200M(0),
      ADR2 => VGA_DRVR1_CNT200M_21,
      O => VGA_DRVR1_Result_2_1
    );
  LOADFLASH_0_not000121 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => IMPOS_19_or0003,
      ADR1 => ST_CE_SIGNAL_and0005,
      ADR2 => CNTPROCCES(2),
      ADR3 => CNTPROCCES(3),
      O => LOADFLASH_0_not000121_598
    );
  LOADFLASH_0_not000138 : X_LUT4
    generic map(
      INIT => X"ECCC"
    )
    port map (
      ADR0 => IMPOS_19_cmp_eq0006,
      ADR1 => LOADFLASH_0_not000135_599,
      ADR2 => LOADFLASH_0_not000121_598,
      ADR3 => N707,
      O => LOADFLASH_0_not000138_600
    );
  LOADFLASH_0_not000176 : X_LUT4
    generic map(
      INIT => X"5510"
    )
    port map (
      ADR0 => LOADFLASH(0),
      ADR1 => ERASE_RAM(0),
      ADR2 => LOADFLASH_0_not000138_600,
      ADR3 => LOADFLASH_0_not000115_597,
      O => LOADFLASH_0_not000176_601
    );
  Madd_IMPOS_19_add0000_cy_4_11 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => IMPOS_BLOCKERASE(4),
      ADR1 => IMPOS_BLOCKERASE(3),
      ADR2 => IMPOS_BLOCKERASE(2),
      O => Madd_IMPOS_19_add0000_cy(4)
    );
  IMPOS_19_and00171 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => KBRD_DRIVER_KEY_DOWN(0),
      ADR1 => KBRD_DRIVER_E0(0),
      O => IMPOS_19_and0017
    );
  IMPOS_19_cmp_eq00081 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => DELAY_PLUS_MEMORY(2),
      ADR1 => DELAY_PLUS_MEMORY(1),
      ADR2 => DELAY_PLUS_MEMORY(0),
      O => IMPOS_19_cmp_eq0008
    );
  POSIM_mux0004_0_113 : X_LUT4
    generic map(
      INIT => X"FFAE"
    )
    port map (
      ADR0 => USBDRIVER_ABORTEDSN(0),
      ADR1 => PLUS_MEMORY(0),
      ADR2 => IMPOS_19_cmp_eq0008,
      ADR3 => IMPOS_19_or0003,
      O => POSIM_mux0004_0_113_1521
    );
  POSIM_mux0004_0_168 : X_LUT4
    generic map(
      INIT => X"22F2"
    )
    port map (
      ADR0 => WE_SIGNAL_mux00018,
      ADR1 => N680,
      ADR2 => POSIM_mux0004_0_156,
      ADR3 => COUNTER_RAM_USB_cmp_eq0000,
      O => POSIM_mux0004_0_168_1526
    );
  RESETCNTDPL_0_mux0000121 : X_LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      ADR0 => KBRD_DRIVER_KBRD_DATA(1),
      ADR1 => KBRD_DRIVER_KBRD_DATA(2),
      ADR2 => N681,
      O => IMPOS_19_cmp_eq0002
    );
  IMPOS_19_cmp_eq00131 : X_LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      ADR0 => KBRD_DRIVER_KBRD_DATA(0),
      ADR1 => KBRD_DRIVER_KBRD_DATA(6),
      ADR2 => KBRD_DRIVER_KBRD_DATA(3),
      ADR3 => N679,
      O => IMPOS_19_cmp_eq0013
    );
  IMPOS_16_mux000421 : X_LUT4
    generic map(
      INIT => X"F8F0"
    )
    port map (
      ADR0 => COUNTER_RAM_USB_cmp_eq0000,
      ADR1 => N88,
      ADR2 => N118,
      ADR3 => N702,
      O => N66
    );
  POSIM_mux0004_0_411 : X_LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      ADR0 => N153,
      ADR1 => N124,
      ADR2 => N698,
      O => N117
    );
  IMPOS_19_mux0004111 : X_LUT4
    generic map(
      INIT => X"5450"
    )
    port map (
      ADR0 => BTN_IBUF_178,
      ADR1 => N281,
      ADR2 => N689,
      ADR3 => N0,
      O => N312
    );
  POSIM_mux0004_0_11_SW0 : X_LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      ADR0 => PRESENTATION(0),
      ADR1 => CNTPRSTEP(0),
      ADR2 => CNTPRSTEP(1),
      ADR3 => N685,
      O => N97
    );
  POSIM_mux0004_4_16 : X_LUT4
    generic map(
      INIT => X"7350"
    )
    port map (
      ADR0 => IMPOS_19_cmp_eq0014_462,
      ADR1 => POSIM_cmp_eq0000,
      ADR2 => N132,
      ADR3 => N683,
      O => POSIM_mux0004_4_16_1552
    );
  IMPOS_16_mux0004636 : X_LUT4
    generic map(
      INIT => X"0060"
    )
    port map (
      ADR0 => KBRD_DRIVER_KBRD_DATA(0),
      ADR1 => KBRD_DRIVER_KBRD_DATA(1),
      ADR2 => N292,
      ADR3 => N676,
      O => IMPOS_16_mux0004636_427
    );
  IMPOS_16_mux0004647 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => N124,
      ADR1 => BTN_IBUF_178,
      ADR2 => IMPOS_16_mux0004636_427,
      O => IMPOS_16_mux0004647_428
    );
  IMPOS_16_mux0004670 : X_LUT4
    generic map(
      INIT => X"8880"
    )
    port map (
      ADR0 => N319,
      ADR1 => IMPOS_19_cmp_eq0001,
      ADR2 => IMPOS_16_mux0004647_428,
      ADR3 => N48,
      O => IMPOS_16_mux0004670_429
    );
  POSIM_mux0004_3_28 : X_LUT4
    generic map(
      INIT => X"0900"
    )
    port map (
      ADR0 => POSIM(0),
      ADR1 => POSIM(1),
      ADR2 => IMPOS_19_cmp_eq0014_462,
      ADR3 => N132,
      O => POSIM_mux0004_3_28_1548
    );
  POSIM_mux0004_3_59 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => POSIM(0),
      ADR1 => POSIM(1),
      O => POSIM_mux0004_3_59_1550
    );
  IMPOS_17_mux000475 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => IMPOS(16),
      ADR1 => IMPOS(17),
      O => IMPOS_17_mux000475_433
    );
  IMPOS_17_mux000479 : X_LUT4
    generic map(
      INIT => X"AA20"
    )
    port map (
      ADR0 => IMPOS_17_mux000475_433,
      ADR1 => POSIM_cmp_eq0001_1519,
      ADR2 => N335,
      ADR3 => IMPOS_17_mux000450_432,
      O => IMPOS_17_mux000479_434
    );
  POSIM_mux0004_2_1112 : X_LUT4
    generic map(
      INIT => X"A088"
    )
    port map (
      ADR0 => KBRD_DRIVER_KBRD_DATA(1),
      ADR1 => KBRD_DRIVER_KBRD_DATA(0),
      ADR2 => KBRD_DRIVER_KBRD_DATA(2),
      ADR3 => KBRD_DRIVER_KBRD_DATA(3),
      O => POSIM_mux0004_2_1112_1537
    );
  POSIM_mux0004_2_1140 : X_LUT4
    generic map(
      INIT => X"0377"
    )
    port map (
      ADR0 => KBRD_DRIVER_KBRD_DATA(0),
      ADR1 => KBRD_DRIVER_KBRD_DATA(6),
      ADR2 => KBRD_DRIVER_KBRD_DATA(3),
      ADR3 => KBRD_DRIVER_KBRD_DATA(2),
      O => POSIM_mux0004_2_1140_1538
    );
  POSIM_mux0004_2_1143 : X_LUT3
    generic map(
      INIT => X"EF"
    )
    port map (
      ADR0 => POSIM_mux0004_2_1140_1538,
      ADR1 => POSIM_mux0004_2_1112_1537,
      ADR2 => N678,
      O => POSIM_mux0004_2_1143_1539
    );
  POSIM_mux0004_2_23 : X_LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      ADR0 => POSIM_mux0004_2_13_1542,
      ADR1 => IMPOS_19_cmp_eq0014_462,
      ADR2 => N132,
      O => POSIM_mux0004_2_23_1543
    );
  POSIM_mux0004_2_58 : X_LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      ADR0 => POSIM(2),
      ADR1 => POSIM(0),
      ADR2 => POSIM(1),
      O => POSIM_mux0004_2_58_1545
    );
  POSIM_mux0004_0_8 : X_LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      ADR0 => POSIM(3),
      ADR1 => POSIM(4),
      ADR2 => Msub_POSIM_addsub0000_cy(2),
      O => POSIM_mux0004_0_8_1531
    );
  POSIM_mux0004_0_60 : X_LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      ADR0 => POSIM(4),
      ADR1 => Madd_POSIM_add0000_cy(2),
      ADR2 => POSIM(3),
      O => POSIM_mux0004_0_60_1528
    );
  IMPOS_21_mux000413 : X_LUT3
    generic map(
      INIT => X"90"
    )
    port map (
      ADR0 => IMPOS(21),
      ADR1 => Msub_IMPOS_22_16_sub0001_cy_4_Q,
      ADR2 => N695,
      O => IMPOS_21_mux000413_481
    );
  IMPOS_20_mux000422 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => IMPOS_22_16_add0000(4),
      ADR1 => POSIM_cmp_eq0001_1519,
      O => IMPOS_20_mux000422_477
    );
  IMPOS_19_mux0004221 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => N709,
      ADR1 => POSIM_cmp_eq0001_1519,
      O => IMPOS_19_mux000422_465
    );
  IMPOS_22_mux000444 : X_LUT4
    generic map(
      INIT => X"FFEC"
    )
    port map (
      ADR0 => IMPOS_22_mux000438_494,
      ADR1 => N113,
      ADR2 => N312,
      ADR3 => IMPOS_22_mux000426_493,
      O => IMPOS_22_mux000444_495
    );
  IMPOS_22_mux0004112 : X_LUT4
    generic map(
      INIT => X"EAC0"
    )
    port map (
      ADR0 => IMPOS_22_mux000473_496,
      ADR1 => IMPOS_22_mux0004101_491,
      ADR2 => N188,
      ADR3 => N703,
      O => IMPOS_22_mux0004112_492
    );
  VGA_DRVR1_Msub_POS_X_xor_8_11 : X_LUT3
    generic map(
      INIT => X"93"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_H(7),
      ADR1 => VGA_DRVR1_COUNTER_H(8),
      ADR2 => VGA_DRVR1_Msub_POS_X_cy(6),
      O => POS_H_MEMORY(8)
    );
  POS_V_MEMORY_1_130 : X_LUT4
    generic map(
      INIT => X"7A77"
    )
    port map (
      ADR0 => Q_varindex0000(2),
      ADR1 => Q_varindex0000(0),
      ADR2 => Q_varindex0000(4),
      ADR3 => Q_varindex0000(3),
      O => POS_V_MEMORY_1_130_1565
    );
  POS_V_MEMORY_1_1102 : X_LUT4
    generic map(
      INIT => X"010B"
    )
    port map (
      ADR0 => Q_varindex0000(1),
      ADR1 => N20,
      ADR2 => N64,
      ADR3 => N138,
      O => POS_V_MEMORY_1_1102_1564
    );
  POS_V_MEMORY_1_23 : X_LUT4
    generic map(
      INIT => X"7A72"
    )
    port map (
      ADR0 => Q_varindex0000(2),
      ADR1 => Q_varindex0000(0),
      ADR2 => Q_varindex0000(4),
      ADR3 => Q_varindex0000(3),
      O => POS_V_MEMORY_1_23_1574
    );
  POS_V_MEMORY_1_39 : X_LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      ADR0 => POS_V_MEMORY(0),
      ADR1 => POS_V_MEMORY_1_23_1574,
      ADR2 => N94,
      O => POS_V_MEMORY_1_39_1581
    );
  POS_V_MEMORY_1_129 : X_LUT4
    generic map(
      INIT => X"FFD5"
    )
    port map (
      ADR0 => POS_V_MEMORY(1),
      ADR1 => POS_V_MEMORY_1_92,
      ADR2 => POS_V_MEMORY_1_109_1563,
      ADR3 => POS_V_MEMORY_1_39_1581,
      O => POS_V_MEMORY_1_1
    );
  VGA_DRVR1_RED_2_1 : X_LUT4
    generic map(
      INIT => X"4105"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_RAM_or0000,
      ADR1 => VGA_DRVR1_N1,
      ADR2 => NORM_NEGA(0),
      ADR3 => COLOR_RED(5),
      O => RED_2_OBUF_1625
    );
  VGA_DRVR1_GRN_2_1 : X_LUT4
    generic map(
      INIT => X"4105"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_RAM_or0000,
      ADR1 => VGA_DRVR1_N1,
      ADR2 => NORM_NEGA(0),
      ADR3 => COLOR_GREEN(5),
      O => GRN_2_OBUF_417
    );
  VGA_DRVR1_BLUE_1_1 : X_LUT4
    generic map(
      INIT => X"4105"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_RAM_or0000,
      ADR1 => VGA_DRVR1_N1,
      ADR2 => NORM_NEGA(0),
      ADR3 => COLOR_BLUE(3),
      O => BLUE_1_OBUF_176
    );
  Mrom_varindex0000_rom000052_SW0 : X_LUT4
    generic map(
      INIT => X"88F8"
    )
    port map (
      ADR0 => N138,
      ADR1 => N9,
      ADR2 => N135,
      ADR3 => N42,
      O => N103
    );
  Mrom_varindex0000_rom000052 : X_LUT4
    generic map(
      INIT => X"FF20"
    )
    port map (
      ADR0 => N165,
      ADR1 => N43,
      ADR2 => Q_varindex0000(4),
      ADR3 => N103,
      O => Mrom_varindex0000_rom000052_957
    );
  Mrom_varindex0000_rom00001553 : X_LUT4
    generic map(
      INIT => X"4890"
    )
    port map (
      ADR0 => Q_varindex0000(1),
      ADR1 => Q_varindex0000(3),
      ADR2 => Q_varindex0000(2),
      ADR3 => Q_varindex0000(4),
      O => Mrom_varindex0000_rom00001553_904
    );
  Mrom_varindex0000_rom000023_SW0 : X_LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      ADR0 => N138,
      ADR1 => Q_varindex0000(1),
      ADR2 => Q_varindex0000(3),
      O => N1081
    );
  Mrom_varindex0000_rom000021162 : X_LUT4
    generic map(
      INIT => X"0155"
    )
    port map (
      ADR0 => POS_V_MEMORY_1_691_1598,
      ADR1 => Q_varindex0000(1),
      ADR2 => Q_varindex0000(0),
      ADR3 => Q_varindex0000(3),
      O => N267
    );
  Mrom_varindex0000_rom00006311 : X_LUT3
    generic map(
      INIT => X"72"
    )
    port map (
      ADR0 => Q_varindex0000(4),
      ADR1 => Q_varindex0000(3),
      ADR2 => Q_varindex0000(0),
      O => N22
    );
  POS_V_MEMORY_1_249 : X_LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      ADR0 => POS_V_MEMORY(0),
      ADR1 => POS_V_MEMORY_1_226,
      ADR2 => N108,
      O => POS_V_MEMORY_1_249_1575
    );
  POS_V_MEMORY_1_2124 : X_LUT4
    generic map(
      INIT => X"0103"
    )
    port map (
      ADR0 => Q_varindex0000(3),
      ADR1 => Mrom_varindex0000_rom0000150_902,
      ADR2 => POS_V_MEMORY(0),
      ADR3 => N98,
      O => POS_V_MEMORY_1_2124_1570
    );
  POS_V_MEMORY_1_2145 : X_LUT4
    generic map(
      INIT => X"FFD5"
    )
    port map (
      ADR0 => POS_V_MEMORY(1),
      ADR1 => POS_V_MEMORY_1_2103,
      ADR2 => POS_V_MEMORY_1_2124_1570,
      ADR3 => POS_V_MEMORY_1_249_1575,
      O => POS_V_MEMORY_1_3
    );
  POS_V_MEMORY_1_3111 : X_LUT4
    generic map(
      INIT => X"51F3"
    )
    port map (
      ADR0 => N42,
      ADR1 => N161,
      ADR2 => Q_varindex0000(3),
      ADR3 => N135,
      O => POS_V_MEMORY_1_3111_1578
    );
  POS_V_MEMORY_1_347 : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => N112,
      ADR1 => N92,
      ADR2 => POS_V_MEMORY_1_3111_1578,
      ADR3 => POS_V_MEMORY_1_325_1579,
      O => POS_V_MEMORY_1_347_1580
    );
  POS_V_MEMORY_1_3120 : X_LUT4
    generic map(
      INIT => X"FFD5"
    )
    port map (
      ADR0 => POS_V_MEMORY(1),
      ADR1 => POS_V_MEMORY_1_393_1582,
      ADR2 => POS_V_MEMORY_1_3104_1577,
      ADR3 => POS_V_MEMORY_1_347_1580,
      O => POS_V_MEMORY_1_4
    );
  Mrom_varindex0000_rom00001516 : X_LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      ADR0 => Q_varindex0000(1),
      ADR1 => Q_varindex0000(3),
      O => N9
    );
  Mrom_varindex0000_rom00007_SW0 : X_LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      ADR0 => N161,
      ADR1 => Q_varindex0000(3),
      ADR2 => N165,
      ADR3 => Q_varindex0000(4),
      O => N1161
    );
  Mrom_varindex0000_rom00005_SW0 : X_LUT4
    generic map(
      INIT => X"9BDF"
    )
    port map (
      ADR0 => Q_varindex0000(4),
      ADR1 => Q_varindex0000(2),
      ADR2 => N180,
      ADR3 => N42,
      O => N1181
    );
  Mrom_varindex0000_rom000038110 : X_LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      ADR0 => Q_varindex0000(1),
      ADR1 => Q_varindex0000(0),
      ADR2 => Q_varindex0000(4),
      O => N106
    );
  Mrom_varindex0000_rom000054 : X_LUT4
    generic map(
      INIT => X"FFAB"
    )
    port map (
      ADR0 => N1241,
      ADR1 => N25,
      ADR2 => Q_varindex0000(4),
      ADR3 => N95,
      O => Mrom_varindex0000_rom000054_958
    );
  Mrom_varindex0000_rom00004576 : X_LUT4
    generic map(
      INIT => X"0702"
    )
    port map (
      ADR0 => Q_varindex0000(4),
      ADR1 => Q_varindex0000(2),
      ADR2 => N177,
      ADR3 => Q_varindex0000(3),
      O => Mrom_varindex0000_rom00004576_947
    );
  Mrom_varindex0000_rom00005572 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => N340,
      ADR1 => N71,
      ADR2 => Mrom_varindex0000_rom00005528_960,
      ADR3 => Mrom_varindex0000_rom00005549_961,
      O => Mrom_varindex0000_rom000055
    );
  Mrom_varindex0000_rom00001355 : X_LUT4
    generic map(
      INIT => X"1131"
    )
    port map (
      ADR0 => N151,
      ADR1 => Q_varindex0000(4),
      ADR2 => Q_varindex0000(1),
      ADR3 => N23,
      O => Mrom_varindex0000_rom00001355_899
    );
  POS_V_MEMORY_1_4115 : X_LUT4
    generic map(
      INIT => X"040C"
    )
    port map (
      ADR0 => N22,
      ADR1 => POS_V_MEMORY(0),
      ADR2 => N330,
      ADR3 => Q_varindex0000(1),
      O => POS_V_MEMORY_1_4115_1585
    );
  POS_V_MEMORY_1_4128 : X_LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      ADR0 => POS_V_MEMORY_1_4115_1585,
      ADR1 => POS_V_MEMORY_1_490_1589,
      ADR2 => POS_V_MEMORY_1_4103_1584,
      ADR3 => N59,
      O => POS_V_MEMORY_1_4128_1586
    );
  POS_V_MEMORY_1_4145 : X_LUT4
    generic map(
      INIT => X"FFD5"
    )
    port map (
      ADR0 => POS_V_MEMORY(1),
      ADR1 => POS_V_MEMORY_1_442_1588,
      ADR2 => POS_V_MEMORY_1_423_1587,
      ADR3 => POS_V_MEMORY_1_4128_1586,
      O => POS_V_MEMORY_1_5
    );
  Mrom_varindex0000_rom000043_SW0 : X_LUT4
    generic map(
      INIT => X"FF01"
    )
    port map (
      ADR0 => Q_varindex0000(4),
      ADR1 => Q_varindex0000(2),
      ADR2 => N9,
      ADR3 => N106,
      O => N1311
    );
  Mrom_varindex0000_rom000043 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => N71,
      ADR1 => N92,
      ADR2 => N44,
      ADR3 => N1311,
      O => Mrom_varindex0000_rom000043_945
    );
  Mrom_varindex0000_rom00002730 : X_LUT4
    generic map(
      INIT => X"EC20"
    )
    port map (
      ADR0 => N23,
      ADR1 => Q_varindex0000(4),
      ADR2 => N165,
      ADR3 => N157,
      O => Mrom_varindex0000_rom00002730_918
    );
  Mrom_varindex0000_rom00006621 : X_LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      ADR0 => Q_varindex0000(1),
      ADR1 => Q_varindex0000(3),
      O => N183
    );
  Mrom_varindex0000_rom00003110 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => N106,
      ADR1 => N121,
      ADR2 => N44,
      O => Mrom_varindex0000_rom000031
    );
  Mrom_varindex0000_rom0000391_SW1 : X_LUT4
    generic map(
      INIT => X"8D01"
    )
    port map (
      ADR0 => Q_varindex0000(3),
      ADR1 => Q_varindex0000(4),
      ADR2 => N157,
      ADR3 => Q_varindex0000(2),
      O => N1381
    );
  VGA_DRVR1_COLOR_6_22 : X_LUT4
    generic map(
      INIT => X"0666"
    )
    port map (
      ADR0 => CHARBIT_ACT,
      ADR1 => N1641,
      ADR2 => VGA_DRVR1_CNT200M_21,
      ADR3 => IM_16_8_BITS(0),
      O => VGA_DRVR1_COLOR_6_22_1765
    );
  VGA_DRVR1_COLOR_6_41 : X_LUT4
    generic map(
      INIT => X"6000"
    )
    port map (
      ADR0 => CHARBIT_ACT,
      ADR1 => N1661,
      ADR2 => VGA_DRVR1_F_8_TO_9,
      ADR3 => IM_16_8_BITS(0),
      O => VGA_DRVR1_COLOR_6_41_1766
    );
  VGA_DRVR1_COLOR_3_22 : X_LUT4
    generic map(
      INIT => X"0666"
    )
    port map (
      ADR0 => CHARBIT_ACT,
      ADR1 => N170,
      ADR2 => VGA_DRVR1_CNT200M_21,
      ADR3 => IM_16_8_BITS(0),
      O => VGA_DRVR1_COLOR_3_22_1759
    );
  VGA_DRVR1_COLOR_3_41 : X_LUT4
    generic map(
      INIT => X"6000"
    )
    port map (
      ADR0 => CHARBIT_ACT,
      ADR1 => N1721,
      ADR2 => VGA_DRVR1_F_8_TO_9,
      ADR3 => IM_16_8_BITS(0),
      O => VGA_DRVR1_COLOR_3_41_1760
    );
  Mrom_varindex0000_rom000030111 : X_LUT4
    generic map(
      INIT => X"FF32"
    )
    port map (
      ADR0 => Q_varindex0000(4),
      ADR1 => N54,
      ADR2 => Q_varindex0000(2),
      ADR3 => N70,
      O => Mrom_varindex0000_rom000030111_927
    );
  Mrom_varindex0000_rom00003019 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => N64,
      ADR1 => Mrom_varindex0000_rom0000300_926,
      ADR2 => N119,
      ADR3 => Mrom_varindex0000_rom000030111_927,
      O => Mrom_varindex0000_rom000030
    );
  Mrom_varindex0000_rom000011101 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => Q_varindex0000(4),
      ADR1 => N169,
      O => Mrom_varindex0000_rom000011101_893
    );
  Mrom_varindex0000_rom000015210 : X_LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      ADR0 => Q_varindex0000(0),
      ADR1 => Q_varindex0000(1),
      O => N42
    );
  Mrom_varindex0000_rom000036104 : X_LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      ADR0 => Mrom_varindex0000_rom00003641_938,
      ADR1 => Mrom_varindex0000_rom000036101_937,
      ADR2 => Q_varindex0000(4),
      ADR3 => Mrom_varindex0000_rom00003664_939,
      O => Mrom_varindex0000_rom000036
    );
  Mrom_varindex0000_rom00001921 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => N138,
      ADR1 => Q_varindex0000(3),
      O => N70
    );
  Mrom_varindex0000_rom00001914 : X_LUT4
    generic map(
      INIT => X"1131"
    )
    port map (
      ADR0 => N23,
      ADR1 => Q_varindex0000(1),
      ADR2 => Q_varindex0000(4),
      ADR3 => N54,
      O => Mrom_varindex0000_rom00001914_905
    );
  Mrom_varindex0000_rom00001942 : X_LUT4
    generic map(
      INIT => X"0F08"
    )
    port map (
      ADR0 => N165,
      ADR1 => N43,
      ADR2 => Q_varindex0000(4),
      ADR3 => N137,
      O => Mrom_varindex0000_rom00001942_907
    );
  POS_V_MEMORY_1_5107 : X_LUT4
    generic map(
      INIT => X"3F2F"
    )
    port map (
      ADR0 => POS_V_MEMORY_1_518_1591,
      ADR1 => N169,
      ADR2 => POS_V_MEMORY(1),
      ADR3 => POS_V_MEMORY_1_559_1593,
      O => POS_V_MEMORY_1_6
    );
  POS_H_MEMORY_4_2_SW0 : X_LUT4
    generic map(
      INIT => X"AE75"
    )
    port map (
      ADR0 => POSIM(2),
      ADR1 => POSIM(1),
      ADR2 => POSIM(3),
      ADR3 => POSIM(4),
      O => N1451
    );
  Mrom_varindex0000_rom00001316 : X_LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      ADR0 => Q_varindex0000(3),
      ADR1 => Q_varindex0000(2),
      O => N23
    );
  Mrom_varindex0000_rom00002611 : X_LUT4
    generic map(
      INIT => X"88F8"
    )
    port map (
      ADR0 => N150,
      ADR1 => Q_varindex0000(4),
      ADR2 => N183,
      ADR3 => Q_varindex0000(0),
      O => N84
    );
  Mmux_varindex000032233 : X_LUT4
    generic map(
      INIT => X"0301"
    )
    port map (
      ADR0 => POS_H_MEMORY(6),
      ADR1 => POS_H_MEMORY(7),
      ADR2 => Mmux_varindex000032,
      ADR3 => Mmux_varindex000032180_883,
      O => Mmux_varindex000032233_884
    );
  Mmux_varindex000032265 : X_LUT4
    generic map(
      INIT => X"0F08"
    )
    port map (
      ADR0 => POS_H_MEMORY(7),
      ADR1 => Mmux_varindex000032100_882,
      ADR2 => POS_H_MEMORY(8),
      ADR3 => Mmux_varindex000032233_884,
      O => Q_varindex0000(3)
    );
  Mrom_varindex0000_rom0000211412 : X_LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      ADR0 => Q_varindex0000(1),
      ADR1 => Q_varindex0000(0),
      O => N177
    );
  Mrom_varindex0000_rom000041_SW0 : X_LUT4
    generic map(
      INIT => X"88F8"
    )
    port map (
      ADR0 => Q_varindex0000(4),
      ADR1 => N248,
      ADR2 => N135,
      ADR3 => Q_varindex0000(0),
      O => N1501
    );
  Mrom_varindex0000_rom000041 : X_LUT4
    generic map(
      INIT => X"FFB8"
    )
    port map (
      ADR0 => N1511,
      ADR1 => Q_varindex0000(1),
      ADR2 => N1501,
      ADR3 => N47,
      O => Mrom_varindex0000_rom000041_943
    );
  Mrom_varindex0000_rom00005562 : X_LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      ADR0 => Q_varindex0000(3),
      ADR1 => Q_varindex0000(1),
      O => N180
    );
  Mrom_varindex0000_rom00005411 : X_LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      ADR0 => Q_varindex0000(2),
      ADR1 => Q_varindex0000(4),
      O => N78
    );
  VGA_DRVR1_Msub_POS_X_cy_6_11 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_H(5),
      ADR1 => VGA_DRVR1_COUNTER_H(4),
      ADR2 => VGA_DRVR1_COUNTER_H(6),
      O => VGA_DRVR1_Msub_POS_X_cy(6)
    );
  Mrom_varindex0000_rom00004715 : X_LUT4
    generic map(
      INIT => X"FF20"
    )
    port map (
      ADR0 => Mrom_varindex0000_rom0000472,
      ADR1 => Q_varindex0000(0),
      ADR2 => Q_varindex0000(1),
      ADR3 => N340,
      O => Mrom_varindex0000_rom00004715_949
    );
  Mrom_varindex0000_rom00004736 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => N328,
      ADR1 => Mrom_varindex0000_rom00004715_949,
      ADR2 => Mrom_varindex0000_rom00004734_951,
      O => Mrom_varindex0000_rom000047
    );
  VGA_DRVR1_Msub_POS_X_xor_5_11 : X_LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_H(4),
      ADR1 => VGA_DRVR1_COUNTER_H(5),
      O => POS_H_MEMORY(5)
    );
  Mmux_varindex00002372 : X_LUT4
    generic map(
      INIT => X"0490"
    )
    port map (
      ADR0 => POSIM(1),
      ADR1 => POSIM(3),
      ADR2 => POSIM(4),
      ADR3 => POSIM(2),
      O => Mmux_varindex00002372_880
    );
  Mmux_varindex000023106 : X_LUT4
    generic map(
      INIT => X"AF8F"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_H(4),
      ADR1 => Mmux_varindex00002372_880,
      ADR2 => VGA_DRVR1_COUNTER_H(3),
      ADR3 => Mmux_varindex00002324_875,
      O => Mmux_varindex000023106_871
    );
  Mmux_varindex000023172 : X_LUT4
    generic map(
      INIT => X"A222"
    )
    port map (
      ADR0 => Mmux_varindex00002310_870,
      ADR1 => POS_H_MEMORY(6),
      ADR2 => Mmux_varindex000023134_872,
      ADR3 => Mmux_varindex000023106_871,
      O => Mmux_varindex000023172_873
    );
  Mmux_varindex000023276 : X_LUT4
    generic map(
      INIT => X"AF8F"
    )
    port map (
      ADR0 => Mmux_varindex000023253,
      ADR1 => Mmux_varindex000023221_874,
      ADR2 => POS_H_MEMORY(7),
      ADR3 => POS_H_MEMORY(6),
      O => Mmux_varindex000023276_879
    );
  POS_V_MEMORY_1_625 : X_LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      ADR0 => Q_varindex0000(0),
      ADR1 => Q_varindex0000(3),
      O => N54
    );
  Mrom_varindex0000_rom00003532 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => Q_varindex0000(4),
      ADR1 => Q_varindex0000(0),
      O => N175
    );
  Mrom_varindex0000_rom0000511 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => N106,
      ADR1 => Mrom_varindex0000_rom0000150_902,
      ADR2 => N328,
      ADR3 => N92,
      O => Mrom_varindex0000_rom000051
    );
  Mrom_varindex0000_rom00004722 : X_LUT4
    generic map(
      INIT => X"FFAB"
    )
    port map (
      ADR0 => N44,
      ADR1 => Q_varindex0000(1),
      ADR2 => N23,
      ADR3 => N71,
      O => N328
    );
  Mrom_varindex0000_rom0000211310 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => Q_varindex0000(0),
      ADR1 => Q_varindex0000(1),
      O => N165
    );
  VGA_DRVR1_RED_0_1 : X_LUT3
    generic map(
      INIT => X"09"
    )
    port map (
      ADR0 => NORM_NEGA(0),
      ADR1 => VGA_DRVR1_COLOR_5_Q,
      ADR2 => VGA_DRVR1_COUNTER_RAM_or0000,
      O => RED_0_OBUF_1623
    );
  VGA_DRVR1_GRN_0_1 : X_LUT3
    generic map(
      INIT => X"09"
    )
    port map (
      ADR0 => NORM_NEGA(0),
      ADR1 => VGA_DRVR1_COLOR_2_Q,
      ADR2 => VGA_DRVR1_COUNTER_RAM_or0000,
      O => GRN_0_OBUF_415
    );
  VGA_DRVR1_BLUE_0_1 : X_LUT3
    generic map(
      INIT => X"09"
    )
    port map (
      ADR0 => NORM_NEGA(0),
      ADR1 => VGA_DRVR1_COLOR_0_Q,
      ADR2 => VGA_DRVR1_COUNTER_RAM_or0000,
      O => BLUE_0_OBUF_175
    );
  Mrom_varindex0000_rom0000492 : X_LUT4
    generic map(
      INIT => X"EFEE"
    )
    port map (
      ADR0 => N47,
      ADR1 => N95,
      ADR2 => Q_varindex0000(3),
      ADR3 => N157,
      O => Mrom_varindex0000_rom000049
    );
  VGA_DRVR1_COLOR_5_80 : X_LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      ADR0 => IM_16_8_BITS(0),
      ADR1 => VGA_DRVR1_COLOR_5_16_1762,
      ADR2 => VGA_DRVR1_COLOR_5_77_1764,
      ADR3 => VGA_DRVR1_COLOR_5_33_1763,
      O => VGA_DRVR1_COLOR_5_Q
    );
  VGA_DRVR1_COLOR_2_80 : X_LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      ADR0 => IM_16_8_BITS(0),
      ADR1 => VGA_DRVR1_COLOR_2_16_1756,
      ADR2 => VGA_DRVR1_COLOR_2_77_1758,
      ADR3 => VGA_DRVR1_COLOR_2_33_1757,
      O => VGA_DRVR1_COLOR_2_Q
    );
  Mmux_varindex000013151 : X_LUT4
    generic map(
      INIT => X"8A58"
    )
    port map (
      ADR0 => POSIM(3),
      ADR1 => POSIM(1),
      ADR2 => POSIM(4),
      ADR3 => POSIM(2),
      O => Mmux_varindex000013151_862
    );
  Mmux_varindex000013239 : X_LUT4
    generic map(
      INIT => X"FF8A"
    )
    port map (
      ADR0 => POS_H_MEMORY(6),
      ADR1 => Mmux_varindex000013186_863,
      ADR2 => VGA_DRVR1_COUNTER_H(4),
      ADR3 => Mmux_varindex000013235,
      O => Mmux_varindex000013239_867
    );
  Mmux_varindex000013269 : X_LUT4
    generic map(
      INIT => X"EFEE"
    )
    port map (
      ADR0 => POS_H_MEMORY(8),
      ADR1 => Mmux_varindex00001385_869,
      ADR2 => POS_H_MEMORY(7),
      ADR3 => Mmux_varindex000013239_867,
      O => Q_varindex0000(0)
    );
  CLK50M_IBUFG : X_CKBUF
    port map (
      I => CLK50M,
      O => CLK50M_IBUFG1
    );
  BTN_IBUF : X_BUF
    port map (
      I => BTN,
      O => BTN_IBUF_178
    );
  PWRITE_IBUF : X_BUF
    port map (
      I => PWRITE,
      O => PWRITE_IBUF_1619
    );
  DSTB_IBUF : X_BUF
    port map (
      I => DSTB,
      O => DSTB_IBUF_399
    );
  ASTB_IBUF : X_BUF
    port map (
      I => ASTB,
      O => ASTB_IBUF_172
    );
  KBRD_CLK_PIN_IBUF : X_BUF
    port map (
      I => NlwRenamedSig_IO_KBRD_CLK_PIN,
      O => KBRD_CLK_PIN_IBUF_530
    );
  KBRD_DATA_PIN_IBUF : X_BUF
    port map (
      I => NlwRenamedSig_IO_KBRD_DATA_PIN,
      O => KBRD_DATA_PIN_IBUF_532
    );
  USBDRIVER_STEPPCUR_3 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      I => USBDRIVER_STEPPNEXT_3_1,
      SRST => PWRITE_IBUF_1619,
      O => USBDRIVER_STEPPCUR(3),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  USBDRIVER_STEPPNEXT_3_11 : X_LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      ADR0 => USBDRIVER_STEPPNEXT_cmp_eq0000,
      ADR1 => ASTB_IBUF_172,
      ADR2 => DSTB_IBUF_399,
      O => USBDRIVER_STEPPNEXT_3_1
    );
  USBDRIVER_STEPPCUR_2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK50M_IBUFG_193,
      I => USBDRIVER_STEPPNEXT_2_1,
      SRST => PWRITE_IBUF_1619,
      O => USBDRIVER_STEPPCUR(2),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  USBDRIVER_STEPPNEXT_2_11 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => USBDRIVER_STEPPNEXT_cmp_eq0000,
      ADR1 => ASTB_IBUF_172,
      O => USBDRIVER_STEPPNEXT_2_1
    );
  VGA_DRVR1_CNT200M_0 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => VGA_DRVR1_BUFGCLK200M,
      I => DPL_SEG_0_OBUF_396,
      SRST => VGA_DRVR1_CNT200M(0),
      O => VGA_DRVR1_CNT200M(0),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Madd_POS_MEMORY_NAT_cy_19_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => IMPOS(19),
      O => Madd_POS_MEMORY_NAT_cy_19_rt_699,
      ADR1 => GND
    );
  Madd_POS_MEMORY_NAT_cy_20_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => IMPOS(20),
      O => Madd_POS_MEMORY_NAT_cy_20_rt_701,
      ADR1 => GND
    );
  Madd_POS_MEMORY_NAT_cy_21_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => IMPOS(21),
      O => Madd_POS_MEMORY_NAT_cy_21_rt_703,
      ADR1 => GND
    );
  Madd_DELAYFLASH_add0000_cy_1_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => DELAYFLASH(1),
      O => Madd_DELAYFLASH_add0000_cy_1_rt_671,
      ADR1 => GND
    );
  Madd_DELAYFLASH_add0000_cy_2_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => DELAYFLASH(2),
      O => Madd_DELAYFLASH_add0000_cy_2_rt_673,
      ADR1 => GND
    );
  Madd_DELAYFLASH_add0000_cy_3_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => DELAYFLASH(3),
      O => Madd_DELAYFLASH_add0000_cy_3_rt_675,
      ADR1 => GND
    );
  Madd_DELAYFLASH_add0000_cy_4_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => DELAYFLASH(4),
      O => Madd_DELAYFLASH_add0000_cy_4_rt_677,
      ADR1 => GND
    );
  Madd_DELAYFLASH_add0000_cy_5_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => DELAYFLASH(5),
      O => Madd_DELAYFLASH_add0000_cy_5_rt_679,
      ADR1 => GND
    );
  Madd_DELAYFLASH_add0000_cy_6_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => DELAYFLASH(6),
      O => Madd_DELAYFLASH_add0000_cy_6_rt_681,
      ADR1 => GND
    );
  Madd_DELAYFLASH_add0000_cy_7_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => DELAYFLASH(7),
      O => Madd_DELAYFLASH_add0000_cy_7_rt_683,
      ADR1 => GND
    );
  Madd_DELAYFLASH_add0000_cy_8_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => DELAYFLASH(8),
      O => Madd_DELAYFLASH_add0000_cy_8_rt_685,
      ADR1 => GND
    );
  Madd_COUNTER_RAM_USB_add0000_cy_1_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => COUNTER_RAM_USB(1),
      O => Madd_COUNTER_RAM_USB_add0000_cy_1_rt_650,
      ADR1 => GND
    );
  Madd_COUNTER_RAM_USB_add0000_cy_2_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => COUNTER_RAM_USB(2),
      O => Madd_COUNTER_RAM_USB_add0000_cy_2_rt_652,
      ADR1 => GND
    );
  Madd_COUNTER_RAM_USB_add0000_cy_3_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => COUNTER_RAM_USB(3),
      O => Madd_COUNTER_RAM_USB_add0000_cy_3_rt_654,
      ADR1 => GND
    );
  Madd_COUNTER_RAM_USB_add0000_cy_4_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => COUNTER_RAM_USB(4),
      O => Madd_COUNTER_RAM_USB_add0000_cy_4_rt_656,
      ADR1 => GND
    );
  Madd_COUNTER_RAM_USB_add0000_cy_5_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => COUNTER_RAM_USB(5),
      O => Madd_COUNTER_RAM_USB_add0000_cy_5_rt_658,
      ADR1 => GND
    );
  Madd_COUNTER_RAM_USB_add0000_cy_6_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => COUNTER_RAM_USB(6),
      O => Madd_COUNTER_RAM_USB_add0000_cy_6_rt_660,
      ADR1 => GND
    );
  Madd_COUNTER_RAM_USB_add0000_cy_7_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => COUNTER_RAM_USB(7),
      O => Madd_COUNTER_RAM_USB_add0000_cy_7_rt_662,
      ADR1 => GND
    );
  Madd_COUNTER_RAM_USB_add0000_cy_8_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => COUNTER_RAM_USB(8),
      O => Madd_COUNTER_RAM_USB_add0000_cy_8_rt_664,
      ADR1 => GND
    );
  Madd_COUNTER_RAM_USB_add0000_cy_9_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => COUNTER_RAM_USB(9),
      O => Madd_COUNTER_RAM_USB_add0000_cy_9_rt_666,
      ADR1 => GND
    );
  Madd_COUNTER_RAM_USB_add0000_cy_10_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => COUNTER_RAM_USB(10),
      O => Madd_COUNTER_RAM_USB_add0000_cy_10_rt_634,
      ADR1 => GND
    );
  Madd_COUNTER_RAM_USB_add0000_cy_11_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => COUNTER_RAM_USB(11),
      O => Madd_COUNTER_RAM_USB_add0000_cy_11_rt_636,
      ADR1 => GND
    );
  Madd_COUNTER_RAM_USB_add0000_cy_12_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => COUNTER_RAM_USB(12),
      O => Madd_COUNTER_RAM_USB_add0000_cy_12_rt_638,
      ADR1 => GND
    );
  Madd_COUNTER_RAM_USB_add0000_cy_13_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => COUNTER_RAM_USB(13),
      O => Madd_COUNTER_RAM_USB_add0000_cy_13_rt_640,
      ADR1 => GND
    );
  Madd_COUNTER_RAM_USB_add0000_cy_14_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => COUNTER_RAM_USB(14),
      O => Madd_COUNTER_RAM_USB_add0000_cy_14_rt_642,
      ADR1 => GND
    );
  Madd_COUNTER_RAM_USB_add0000_cy_15_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => COUNTER_RAM_USB(15),
      O => Madd_COUNTER_RAM_USB_add0000_cy_15_rt_644,
      ADR1 => GND
    );
  Madd_COUNTER_RAM_USB_add0000_cy_16_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => COUNTER_RAM_USB(16),
      O => Madd_COUNTER_RAM_USB_add0000_cy_16_rt_646,
      ADR1 => GND
    );
  Madd_COUNTER_RAM_USB_add0000_cy_17_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => COUNTER_RAM_USB(17),
      O => Madd_COUNTER_RAM_USB_add0000_cy_17_rt_648,
      ADR1 => GND
    );
  Mcount_CNTDPL_cy_1_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CNTDPL(1),
      O => Mcount_CNTDPL_cy_1_rt_730,
      ADR1 => GND
    );
  Mcount_CNTDPL_cy_2_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CNTDPL(2),
      O => Mcount_CNTDPL_cy_2_rt_742,
      ADR1 => GND
    );
  Mcount_CNTDPL_cy_3_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CNTDPL(3),
      O => Mcount_CNTDPL_cy_3_rt_744,
      ADR1 => GND
    );
  Mcount_CNTDPL_cy_4_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CNTDPL(4),
      O => Mcount_CNTDPL_cy_4_rt_746,
      ADR1 => GND
    );
  Mcount_CNTDPL_cy_5_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CNTDPL(5),
      O => Mcount_CNTDPL_cy_5_rt_748,
      ADR1 => GND
    );
  Mcount_CNTDPL_cy_6_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CNTDPL(6),
      O => Mcount_CNTDPL_cy_6_rt_750,
      ADR1 => GND
    );
  Mcount_CNTDPL_cy_7_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CNTDPL(7),
      O => Mcount_CNTDPL_cy_7_rt_752,
      ADR1 => GND
    );
  Mcount_CNTDPL_cy_8_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CNTDPL(8),
      O => Mcount_CNTDPL_cy_8_rt_754,
      ADR1 => GND
    );
  Mcount_CNTDPL_cy_9_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CNTDPL(9),
      O => Mcount_CNTDPL_cy_9_rt_756,
      ADR1 => GND
    );
  Mcount_CNTDPL_cy_10_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CNTDPL(10),
      O => Mcount_CNTDPL_cy_10_rt_710,
      ADR1 => GND
    );
  Mcount_CNTDPL_cy_11_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CNTDPL(11),
      O => Mcount_CNTDPL_cy_11_rt_712,
      ADR1 => GND
    );
  Mcount_CNTDPL_cy_12_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CNTDPL(12),
      O => Mcount_CNTDPL_cy_12_rt_714,
      ADR1 => GND
    );
  Mcount_CNTDPL_cy_13_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CNTDPL(13),
      O => Mcount_CNTDPL_cy_13_rt_716,
      ADR1 => GND
    );
  Mcount_CNTDPL_cy_14_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CNTDPL(14),
      O => Mcount_CNTDPL_cy_14_rt_718,
      ADR1 => GND
    );
  Mcount_CNTDPL_cy_15_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CNTDPL(15),
      O => Mcount_CNTDPL_cy_15_rt_720,
      ADR1 => GND
    );
  Mcount_CNTDPL_cy_16_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CNTDPL(16),
      O => Mcount_CNTDPL_cy_16_rt_722,
      ADR1 => GND
    );
  Mcount_CNTDPL_cy_17_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CNTDPL(17),
      O => Mcount_CNTDPL_cy_17_rt_724,
      ADR1 => GND
    );
  Mcount_CNTDPL_cy_18_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CNTDPL(18),
      O => Mcount_CNTDPL_cy_18_rt_726,
      ADR1 => GND
    );
  Mcount_CNTDPL_cy_19_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CNTDPL(19),
      O => Mcount_CNTDPL_cy_19_rt_728,
      ADR1 => GND
    );
  Mcount_CNTDPL_cy_20_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CNTDPL(20),
      O => Mcount_CNTDPL_cy_20_rt_732,
      ADR1 => GND
    );
  Mcount_CNTDPL_cy_21_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CNTDPL(21),
      O => Mcount_CNTDPL_cy_21_rt_734,
      ADR1 => GND
    );
  Mcount_CNTDPL_cy_22_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CNTDPL(22),
      O => Mcount_CNTDPL_cy_22_rt_736,
      ADR1 => GND
    );
  Mcount_CNTDPL_cy_23_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CNTDPL(23),
      O => Mcount_CNTDPL_cy_23_rt_738,
      ADR1 => GND
    );
  Mcount_CNTDPL_cy_24_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CNTDPL(24),
      O => Mcount_CNTDPL_cy_24_rt_740,
      ADR1 => GND
    );
  VGA_DRVR1_Mcount_COUNTER_RAM_cy_17_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_RAM(17),
      O => VGA_DRVR1_Mcount_COUNTER_RAM_cy_17_rt_1921,
      ADR1 => GND
    );
  VGA_DRVR1_Mcount_COUNTER_RAM_cy_16_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_RAM(16),
      O => VGA_DRVR1_Mcount_COUNTER_RAM_cy_16_rt_1919,
      ADR1 => GND
    );
  VGA_DRVR1_Mcount_COUNTER_RAM_cy_15_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_RAM(15),
      O => VGA_DRVR1_Mcount_COUNTER_RAM_cy_15_rt_1917,
      ADR1 => GND
    );
  VGA_DRVR1_Mcount_COUNTER_RAM_cy_14_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_RAM(14),
      O => VGA_DRVR1_Mcount_COUNTER_RAM_cy_14_rt_1915,
      ADR1 => GND
    );
  VGA_DRVR1_Mcount_COUNTER_RAM_cy_13_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_RAM(13),
      O => VGA_DRVR1_Mcount_COUNTER_RAM_cy_13_rt_1913,
      ADR1 => GND
    );
  VGA_DRVR1_Mcount_COUNTER_RAM_cy_12_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_RAM(12),
      O => VGA_DRVR1_Mcount_COUNTER_RAM_cy_12_rt_1911,
      ADR1 => GND
    );
  VGA_DRVR1_Mcount_COUNTER_RAM_cy_11_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_RAM(11),
      O => VGA_DRVR1_Mcount_COUNTER_RAM_cy_11_rt_1909,
      ADR1 => GND
    );
  VGA_DRVR1_Mcount_COUNTER_RAM_cy_10_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_RAM(10),
      O => VGA_DRVR1_Mcount_COUNTER_RAM_cy_10_rt_1907,
      ADR1 => GND
    );
  VGA_DRVR1_Mcount_COUNTER_RAM_cy_9_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_RAM(9),
      O => VGA_DRVR1_Mcount_COUNTER_RAM_cy_9_rt_1939,
      ADR1 => GND
    );
  VGA_DRVR1_Mcount_COUNTER_RAM_cy_8_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_RAM(8),
      O => VGA_DRVR1_Mcount_COUNTER_RAM_cy_8_rt_1937,
      ADR1 => GND
    );
  VGA_DRVR1_Mcount_COUNTER_RAM_cy_7_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_RAM(7),
      O => VGA_DRVR1_Mcount_COUNTER_RAM_cy_7_rt_1935,
      ADR1 => GND
    );
  VGA_DRVR1_Mcount_COUNTER_RAM_cy_6_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_RAM(6),
      O => VGA_DRVR1_Mcount_COUNTER_RAM_cy_6_rt_1933,
      ADR1 => GND
    );
  VGA_DRVR1_Mcount_COUNTER_RAM_cy_5_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_RAM(5),
      O => VGA_DRVR1_Mcount_COUNTER_RAM_cy_5_rt_1931,
      ADR1 => GND
    );
  VGA_DRVR1_Mcount_COUNTER_RAM_cy_4_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_RAM(4),
      O => VGA_DRVR1_Mcount_COUNTER_RAM_cy_4_rt_1929,
      ADR1 => GND
    );
  VGA_DRVR1_Mcount_COUNTER_RAM_cy_3_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_RAM(3),
      O => VGA_DRVR1_Mcount_COUNTER_RAM_cy_3_rt_1927,
      ADR1 => GND
    );
  VGA_DRVR1_Mcount_COUNTER_RAM_cy_2_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_RAM(2),
      O => VGA_DRVR1_Mcount_COUNTER_RAM_cy_2_rt_1925,
      ADR1 => GND
    );
  VGA_DRVR1_Mcount_COUNTER_RAM_cy_1_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_RAM(1),
      O => VGA_DRVR1_Mcount_COUNTER_RAM_cy_1_rt_1923,
      ADR1 => GND
    );
  VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy_8_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_V(8),
      O => VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy_8_rt_1902,
      ADR1 => GND
    );
  VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy_7_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_V(7),
      O => VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy_7_rt_1900,
      ADR1 => GND
    );
  VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy_6_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_V(6),
      O => VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy_6_rt_1898,
      ADR1 => GND
    );
  VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy_5_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_V(5),
      O => VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy_5_rt_1896,
      ADR1 => GND
    );
  VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy_4_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_V(4),
      O => VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy_4_rt_1894,
      ADR1 => GND
    );
  VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy_3_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_V(3),
      O => VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy_3_rt_1892,
      ADR1 => GND
    );
  VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy_2_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_V(2),
      O => VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy_2_rt_1890,
      ADR1 => GND
    );
  VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy_1_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_V(1),
      O => VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_cy_1_rt_1888,
      ADR1 => GND
    );
  VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy_8_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_H(8),
      O => VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy_8_rt_1883,
      ADR1 => GND
    );
  VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy_7_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_H(7),
      O => VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy_7_rt_1881,
      ADR1 => GND
    );
  VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy_6_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_H(6),
      O => VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy_6_rt_1879,
      ADR1 => GND
    );
  VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy_5_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_H(5),
      O => VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy_5_rt_1877,
      ADR1 => GND
    );
  VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy_4_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_H(4),
      O => VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy_4_rt_1875,
      ADR1 => GND
    );
  VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy_3_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_H(3),
      O => VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy_3_rt_1873,
      ADR1 => GND
    );
  VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy_2_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_H(2),
      O => VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy_2_rt_1871,
      ADR1 => GND
    );
  VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy_1_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_H(1),
      O => VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_cy_1_rt_1869,
      ADR1 => GND
    );
  VGA_DRVR1_Msub_POS_Y_cy_4_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_V(4),
      O => VGA_DRVR1_Msub_POS_Y_cy_4_rt_1952,
      ADR1 => GND
    );
  VGA_DRVR1_Msub_POS_Y_cy_3_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_V(3),
      O => VGA_DRVR1_Msub_POS_Y_cy_3_rt_1950,
      ADR1 => GND
    );
  VGA_DRVR1_Msub_POS_Y_cy_2_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_V(2),
      O => VGA_DRVR1_Msub_POS_Y_cy_2_rt_1948,
      ADR1 => GND
    );
  VGA_DRVR1_Msub_POS_Y_cy_1_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_V(1),
      O => VGA_DRVR1_Msub_POS_Y_cy_1_rt_1946,
      ADR1 => GND
    );
  VGA_DRVR1_Msub_POS_Y_cy_0_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_V(0),
      O => VGA_DRVR1_Msub_POS_Y_cy_0_rt_1944,
      ADR1 => GND
    );
  Madd_POS_MEMORY_NAT_xor_22_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => IMPOS(22),
      O => Madd_POS_MEMORY_NAT_xor_22_rt_707,
      ADR1 => GND
    );
  Madd_DELAYFLASH_add0000_xor_9_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => DELAYFLASH(9),
      O => Madd_DELAYFLASH_add0000_xor_9_rt_687,
      ADR1 => GND
    );
  Madd_COUNTER_RAM_USB_add0000_xor_18_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => COUNTER_RAM_USB(18),
      O => Madd_COUNTER_RAM_USB_add0000_xor_18_rt_668,
      ADR1 => GND
    );
  Mcount_CNTDPL_xor_25_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CNTDPL(25),
      O => Mcount_CNTDPL_xor_25_rt_758,
      ADR1 => GND
    );
  VGA_DRVR1_Mcount_COUNTER_RAM_xor_18_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_RAM(18),
      O => VGA_DRVR1_Mcount_COUNTER_RAM_xor_18_rt_1941,
      ADR1 => GND
    );
  VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_xor_9_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_V(9),
      O => VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_xor_9_rt_1904,
      ADR1 => GND
    );
  VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_xor_9_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_H(9),
      O => VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_xor_9_rt_1885,
      ADR1 => GND
    );
  IMPOS_18_mux0004121 : X_LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      ADR0 => IMPOS_18_mux000469_440,
      ADR1 => IMPOS_18_mux000489_441,
      ADR2 => IMPOS_22_16_add0000(2),
      ADR3 => IMPOS_18_mux0004113_437,
      O => IMPOS_18_mux0004
    );
  IMPOS_18_mux000469 : X_LUT4
    generic map(
      INIT => X"EAC0"
    )
    port map (
      ADR0 => IMPOS_18_mux000456_439,
      ADR1 => IMPOS_18_mux000417_438,
      ADR2 => N114,
      ADR3 => N132,
      O => IMPOS_18_mux000469_440
    );
  IMPOS_16_mux0004132 : X_LUT4
    generic map(
      INIT => X"C4CC"
    )
    port map (
      ADR0 => COUNTER_RAM_USB_cmp_eq0000,
      ADR1 => LOADFLASH(0),
      ADR2 => N146,
      ADR3 => N713,
      O => IMPOS_16_mux0004131_425
    );
  POSIM_mux0004_0_15 : X_LUT4
    generic map(
      INIT => X"C4CC"
    )
    port map (
      ADR0 => DELAYFLASH(0),
      ADR1 => WE_SIGNAL_mux000174,
      ADR2 => N663,
      ADR3 => N145,
      O => POSIM_mux0004_0_15_1523
    );
  IMPOS_19_mux000422 : X_LUT4
    generic map(
      INIT => X"F8F0"
    )
    port map (
      ADR0 => COUNTER_RAM_USB_cmp_eq0000,
      ADR1 => N88,
      ADR2 => N118,
      ADR3 => N0,
      O => N65
    );
  IMPOS_16_mux0004610_SW0 : X_LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      ADR0 => BTN_IBUF_178,
      ADR1 => N124,
      O => N205
    );
  IMPOS_17_mux000491 : X_LUT4
    generic map(
      INIT => X"FFEC"
    )
    port map (
      ADR0 => IMPOS(17),
      ADR1 => N207,
      ADR2 => N705,
      ADR3 => IMPOS_17_mux000479_434,
      O => IMPOS_17_mux0004
    );
  POSIM_mux0004_4_33_SW0 : X_LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      ADR0 => POSIM_cmp_eq0001_1519,
      ADR1 => N687,
      O => N211
    );
  POSIM_mux0004_4_39 : X_LUT4
    generic map(
      INIT => X"F4F5"
    )
    port map (
      ADR0 => POSIM(0),
      ADR1 => POSIM_mux0004_4_16_1552,
      ADR2 => POSIM_mux0004_4_5_1553,
      ADR3 => N211,
      O => POSIM_mux0004(4)
    );
  IMPOS_16_mux0004122 : X_LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      ADR0 => N172,
      ADR1 => IMPOS_19_or0003,
      ADR2 => N306,
      ADR3 => N694,
      O => IMPOS_16_mux0004121_422
    );
  POSIM_mux0004_2_84 : X_LUT4
    generic map(
      INIT => X"FEFC"
    )
    port map (
      ADR0 => POSIM_mux0004_2_58_1545,
      ADR1 => POSIM_mux0004_2_23_1543,
      ADR2 => POSIM_mux0004_2_5_1544,
      ADR3 => N692,
      O => POSIM_mux0004(2)
    );
  POSIM_mux0004_3_71 : X_LUT4
    generic map(
      INIT => X"FEFC"
    )
    port map (
      ADR0 => POSIM_mux0004_3_59_1550,
      ADR1 => POSIM_mux0004_3_28_1548,
      ADR2 => POSIM_mux0004_3_5_1549,
      ADR3 => POSIM_mux0004_2_69,
      O => POSIM_mux0004(3)
    );
  IMPOS_16_mux000462_SW0 : X_LUT4
    generic map(
      INIT => X"8CAF"
    )
    port map (
      ADR0 => POSIM_cmp_eq0001_1519,
      ADR1 => POSIM_cmp_eq0000,
      ADR2 => N688,
      ADR3 => N66,
      O => N223
    );
  IMPOS_16_mux000462 : X_LUT4
    generic map(
      INIT => X"EF45"
    )
    port map (
      ADR0 => IMPOS(16),
      ADR1 => IMPOS_16_mux000413_424,
      ADR2 => N223,
      ADR3 => N125,
      O => IMPOS_16_mux0004
    );
  POSIM_mux0004_0_41_SW0 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => POSIM_cmp_eq0001_1519,
      ADR1 => BTN_IBUF_178,
      O => N225
    );
  POSIM_mux0004_1_31 : X_LUT4
    generic map(
      INIT => X"3230"
    )
    port map (
      ADR0 => N700,
      ADR1 => N225,
      ADR2 => N117,
      ADR3 => N0,
      O => POSIM_mux0004_0_67
    );
  POSIM_mux0004_2_1194 : X_LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      ADR0 => ALT(0),
      ADR1 => CTRL(0),
      ADR2 => LOADFLASH(0),
      O => POSIM_mux0004_2_1194_1541
    );
  POSIM_mux0004_0_61_SW0 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => KBRD_DRIVER_COUNTER_KB(1),
      ADR1 => KBRD_DRIVER_COUNTER_KB(2),
      ADR2 => KBRD_DRIVER_E0(0),
      O => N231
    );
  POSIM_mux0004_0_61 : X_LUT4
    generic map(
      INIT => X"F7FF"
    )
    port map (
      ADR0 => KBRD_DRIVER_WT_KB(0),
      ADR1 => KBRD_DRIVER_KEY_DOWN(0),
      ADR2 => N231,
      ADR3 => N686,
      O => N124
    );
  IMPOS_19_mux000481_SW0 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => IMPOS(22),
      ADR1 => INPRES_0_not0001,
      ADR2 => N0,
      O => N235
    );
  IM_16_8_BITS_0_mux00003_SW0 : X_LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      ADR0 => LOADFLASH(0),
      ADR1 => N664,
      ADR2 => ERASE_RAM(0),
      O => N831
    );
  IMPOS_16_mux0004192 : X_LUT4
    generic map(
      INIT => X"FFB8"
    )
    port map (
      ADR0 => N701,
      ADR1 => IMPOS_16_mux00041211_423,
      ADR2 => N239,
      ADR3 => IMPOS_16_mux0004121_422,
      O => N39
    );
  USBDRIVER_ABORTEDSN_0_and000068 : X_LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      ADR0 => USBDRIVER_STEPPNEXT_0_Q,
      ADR1 => USBDRIVER_STEPPNEXT_5_Q_1729,
      ADR2 => USBDRIVER_STEPPNEXT_6_Q,
      ADR3 => N242,
      O => USBDRIVER_ABORTEDSN_0_and0000
    );
  IMPOS_19_cmp_eq0001726 : X_LUT4
    generic map(
      INIT => X"0861"
    )
    port map (
      ADR0 => Madd_IMPOS_19_add0000_cy(4),
      ADR1 => IMPOS_BLOCKERASE(5),
      ADR2 => IMPOS(21),
      ADR3 => N244,
      O => IMPOS_19_cmp_eq0001726_449
    );
  IMPOS_19_not00011611 : X_LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      ADR0 => MNGDPL_cmp_eq0000,
      ADR1 => IMPOS_19_not0001114_467,
      ADR2 => IMPOS_19_not00011311_470,
      ADR3 => IMPOS_19_not0001121_468,
      O => N19
    );
  IMPOS_19_cmp_eq000617 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => N672,
      ADR1 => DELAYFLASH(0),
      ADR2 => DELAYFLASH(1),
      ADR3 => IMPOS_19_cmp_eq000610_457,
      O => IMPOS_19_cmp_eq0006
    );
  IMPOS_19_cmp_eq0003132_SW0 : X_LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      ADR0 => DELAYFLASH(2),
      ADR1 => DELAYFLASH(1),
      ADR2 => DELAYFLASH(7),
      O => N246
    );
  IMPOS_19_cmp_eq0003132 : X_LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      ADR0 => DELAYFLASH(4),
      ADR1 => DELAYFLASH(5),
      ADR2 => N691,
      ADR3 => N246,
      O => N145
    );
  IMPOS_19_cmp_eq0001753 : X_LUT4
    generic map(
      INIT => X"0861"
    )
    port map (
      ADR0 => IMPOS_BLOCKERASE(3),
      ADR1 => IMPOS_BLOCKERASE(2),
      ADR2 => IMPOS(19),
      ADR3 => N2481,
      O => IMPOS_19_cmp_eq0001753_450
    );
  USBDRIVER_STEPPNEXT_0_5 : X_LUT4
    generic map(
      INIT => X"FF20"
    )
    port map (
      ADR0 => USBDRIVER_STEPPCUR(7),
      ADR1 => USBDRIVER_STEPPCUR(6),
      ADR2 => N72,
      ADR3 => N277,
      O => USBDRIVER_STEPPNEXT_0_5_1722
    );
  IMPOS_16_mux00043 : X_LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      ADR0 => N319,
      ADR1 => IMPOS_19_cmp_eq0001726_449,
      ADR2 => IMPOS_19_cmp_eq00017108_448,
      O => IMPOS_16_mux00043_426
    );
  IMPOS_16_mux000441111_SW0 : X_LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      ADR0 => PLUSMINUSTAB(0),
      ADR1 => KBRD_DRIVER_KBRD_DATA(5),
      ADR2 => KBRD_DRIVER_KBRD_DATA(4),
      ADR3 => KBRD_DRIVER_KBRD_DATA(7),
      O => N233
    );
  POSIM_mux0004_1_36 : X_LUT4
    generic map(
      INIT => X"5150"
    )
    port map (
      ADR0 => POSIM_cmp_eq0000,
      ADR1 => N2501,
      ADR2 => N250,
      ADR3 => N0,
      O => POSIM_mux0004_0_72
    );
  POSIM_mux0004_0_323_SW0 : X_LUT4
    generic map(
      INIT => X"7250"
    )
    port map (
      ADR0 => DELAYFLASH(0),
      ADR1 => N146,
      ADR2 => WE_SIGNAL_mux00018,
      ADR3 => N667,
      O => N252
    );
  POSIM_mux0004_0_323 : X_LUT3
    generic map(
      INIT => X"EC"
    )
    port map (
      ADR0 => N145,
      ADR1 => N690,
      ADR2 => N252,
      O => N88
    );
  IMPOS_19_not000160_SW0 : X_LUT4
    generic map(
      INIT => X"2232"
    )
    port map (
      ADR0 => ERASE_RAM(0),
      ADR1 => IMPOS_19_and0000,
      ADR2 => LOADFLASH(0),
      ADR3 => N109,
      O => N256
    );
  IMPOS_19_not000160_SW1 : X_LUT4
    generic map(
      INIT => X"3313"
    )
    port map (
      ADR0 => N682,
      ADR1 => IMPOS_19_and0000,
      ADR2 => LOADFLASH(0),
      ADR3 => ERASE_RAM(0),
      O => N257
    );
  IMPOS_19_not000190 : X_LUT4
    generic map(
      INIT => X"FAEE"
    )
    port map (
      ADR0 => INPRES_0_not0001,
      ADR1 => N256,
      ADR2 => N257,
      ADR3 => IMPOS_19_not000119_471,
      O => IMPOS_19_not0001
    );
  IMPOS_16_mux0004147_SW1_SW1 : X_LUT4
    generic map(
      INIT => X"DFCE"
    )
    port map (
      ADR0 => LOADFLASH(0),
      ADR1 => ERASE_RAM(0),
      ADR2 => N146,
      ADR3 => N674,
      O => N260
    );
  IMPOS_19_mux000411 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => N264,
      ADR1 => POSIM_mux0004_2_1174_1540,
      ADR2 => POSIM_mux0004_2_1143_1539,
      ADR3 => N693,
      O => N0
    );
  IMPOS_19_mux000431_SW0 : X_LUT3
    generic map(
      INIT => X"37"
    )
    port map (
      ADR0 => BTN_IBUF_178,
      ADR1 => N319,
      ADR2 => N124,
      O => N2661
    );
  IMPOS_19_mux0004101 : X_LUT4
    generic map(
      INIT => X"1105"
    )
    port map (
      ADR0 => IMPOS_19_cmp_eq0001,
      ADR1 => N2671,
      ADR2 => N2661,
      ADR3 => N0,
      O => N188
    );
  POSIM_mux0004_0_81 : X_LUT4
    generic map(
      INIT => X"FE00"
    )
    port map (
      ADR0 => POSIM_mux0004_0_15_1523,
      ADR1 => POSIM_mux0004_0_168_1526,
      ADR2 => POSIM_mux0004_0_127_1522,
      ADR3 => N272,
      O => N305
    );
  POSIM_mux0004_2_1164_SW1 : X_LUT4
    generic map(
      INIT => X"2A00"
    )
    port map (
      ADR0 => KBRD_DRIVER_KBRD_DATA(0),
      ADR1 => KBRD_DRIVER_KBRD_DATA(6),
      ADR2 => KBRD_DRIVER_KBRD_DATA(3),
      ADR3 => KBRD_DRIVER_KBRD_DATA(2),
      O => N275
    );
  POSIM_mux0004_2_1174 : X_LUT4
    generic map(
      INIT => X"1015"
    )
    port map (
      ADR0 => KBRD_DRIVER_KBRD_DATA(1),
      ADR1 => N275,
      ADR2 => N684,
      ADR3 => N274,
      O => POSIM_mux0004_2_1174_1540
    );
  IMPOS_20_mux000458_SW0 : X_LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      ADR0 => IMPOS_20_mux000422_477,
      ADR1 => N312,
      ADR2 => N2791,
      ADR3 => IMPOS_20_mux000413_476,
      O => N219
    );
  IMPOS_19_mux000458_SW0 : X_LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      ADR0 => IMPOS_19_mux000422_465,
      ADR1 => N312,
      ADR2 => N2811,
      ADR3 => IMPOS_19_mux000413_464,
      O => N2211
    );
  POSIM_mux0004_2_11106_SW1 : X_LUT4
    generic map(
      INIT => X"2060"
    )
    port map (
      ADR0 => KBRD_DRIVER_KBRD_DATA(1),
      ADR1 => KBRD_DRIVER_KBRD_DATA(0),
      ADR2 => N669,
      ADR3 => IMPOS_19_and0022,
      O => N264
    );
  IMPOS_19_not000113_SW0 : X_LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      ADR0 => ERASEFLASH_SIGNAL(0),
      ADR1 => ERASEFLASH(0),
      O => N2861
    );
  POSIM_mux0004_1_17_SW0 : X_LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      ADR0 => POSIM_mux0004_1_54_1534,
      ADR1 => POSIM_mux0004_0_72,
      ADR2 => POSIM_mux0004_0_67,
      ADR3 => POSIM_mux0004_1_10_1533,
      O => N288
    );
  POSIM_mux0004_1_70 : X_LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      ADR0 => POSIM(3),
      ADR1 => N209,
      ADR2 => N305,
      ADR3 => N288,
      O => POSIM_mux0004(1)
    );
  POSIM_mux0004_0_315_SW0 : X_LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      ADR0 => POSIM_mux0004_0_60_1528,
      ADR1 => POSIM_mux0004_0_72,
      ADR2 => POSIM_mux0004_0_67,
      ADR3 => POSIM_mux0004_0_1510_1524,
      O => N290
    );
  POSIM_mux0004_0_97 : X_LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      ADR0 => POSIM(4),
      ADR1 => N213,
      ADR2 => N305,
      ADR3 => N290,
      O => POSIM_mux0004(0)
    );
  POSIM_mux0004_0_11_SW1 : X_LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      ADR0 => IMPOS_19_cmp_eq0008,
      ADR1 => PLUS_MEMORY(0),
      ADR2 => USBDRIVER_ABORTEDSN(0),
      O => N2921
    );
  IMPOS_16_mux00041211 : X_LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      ADR0 => N2921,
      ADR1 => N97,
      ADR2 => MNGDPL_cmp_eq0000,
      ADR3 => N293,
      O => IMPOS_16_mux00041211_423
    );
  IMPOS_19_mux0004105 : X_LUT4
    generic map(
      INIT => X"FEDC"
    )
    port map (
      ADR0 => N706,
      ADR1 => N2211,
      ADR2 => N295,
      ADR3 => N2961,
      O => IMPOS_19_mux0004
    );
  IMPOS_20_mux0004104 : X_LUT4
    generic map(
      INIT => X"FEDC"
    )
    port map (
      ADR0 => N184,
      ADR1 => N219,
      ADR2 => N298,
      ADR3 => N299,
      O => IMPOS_20_mux0004
    );
  IMPOS_21_mux0004104 : X_LUT4
    generic map(
      INIT => X"FDEC"
    )
    port map (
      ADR0 => N184,
      ADR1 => N217,
      ADR2 => N302,
      ADR3 => N3011,
      O => IMPOS_21_mux0004
    );
  LOADFLASH_0_not000187 : X_LUT4
    generic map(
      INIT => X"FF20"
    )
    port map (
      ADR0 => N311,
      ADR1 => N146,
      ADR2 => NPASOS_SAVE_not0001,
      ADR3 => LOADFLASH_0_not000176_601,
      O => LOADFLASH_0_not0001
    );
  IMPOS_19_cmp_eq00017108 : X_LUT4
    generic map(
      INIT => X"9000"
    )
    port map (
      ADR0 => IMPOS_BLOCKERASE(0),
      ADR1 => IMPOS(16),
      ADR2 => IMPOS_19_cmp_eq0001792_451,
      ADR3 => IMPOS_19_cmp_eq0001753_450,
      O => IMPOS_19_cmp_eq00017108_448
    );
  IMPOS_22_mux0004101 : X_LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      ADR0 => IMPOS(22),
      ADR1 => IMPOS(21),
      ADR2 => IMPOS(20),
      ADR3 => Madd_IMPOS_22_16_add0001_cy(3),
      O => IMPOS_22_mux0004101_491
    );
  IMPOS_19_cmp_eq000617_SW0 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => DELAYFLASH(1),
      ADR1 => DELAYFLASH(0),
      ADR2 => CNTPROCCES(2),
      ADR3 => CNTPROCCES(3),
      O => N308
    );
  IMPOS_16_mux0004141 : X_LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      ADR0 => IMPOS_19_cmp_eq000610_457,
      ADR1 => IMPOS_19_cmp_eq00064_458,
      ADR2 => N308,
      ADR3 => N662,
      O => N172
    );
  IMPOS_16_mux00042220 : X_LUT4
    generic map(
      INIT => X"FAEE"
    )
    port map (
      ADR0 => N237,
      ADR1 => N310,
      ADR2 => N3111,
      ADR3 => N124,
      O => N118
    );
  POSIM_mux0004_0_174_SW1 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => POSIM(0),
      ADR1 => INPRES_0_not0001,
      ADR2 => N1,
      O => N3131
    );
  POSIM_mux0004_0_174_SW2 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => POSIM(1),
      ADR1 => INPRES_0_not0001,
      ADR2 => N1,
      O => N315
    );
  POSIM_mux0004_2_5 : X_LUT4
    generic map(
      INIT => X"FE00"
    )
    port map (
      ADR0 => POSIM_mux0004_0_15_1523,
      ADR1 => POSIM_mux0004_0_168_1526,
      ADR2 => POSIM_mux0004_0_127_1522,
      ADR3 => N317,
      O => POSIM_mux0004_2_5_1544
    );
  POSIM_mux0004_0_127 : X_LUT4
    generic map(
      INIT => X"F2D0"
    )
    port map (
      ADR0 => MNGDPL_cmp_eq0000,
      ADR1 => N97,
      ADR2 => N3191_1151,
      ADR3 => N320,
      O => POSIM_mux0004_0_127_1522
    );
  IMPOS_16_mux000451 : X_LUT4
    generic map(
      INIT => X"ABA8"
    )
    port map (
      ADR0 => N3231,
      ADR1 => POSIM_mux0004_2_11103_1536,
      ADR2 => POSIM_mux0004_2_1174_1540,
      ADR3 => N322,
      O => N114
    );
  IMPOS_18_mux000489 : X_LUT4
    generic map(
      INIT => X"C840"
    )
    port map (
      ADR0 => N239,
      ADR1 => N1,
      ADR2 => N3251,
      ADR3 => N3261,
      O => IMPOS_18_mux000489_441
    );
  IMPOS_19_mux000481_SW1 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => IMPOS_16_mux00041211_423,
      ADR1 => N240,
      ADR2 => N711,
      O => N331
    );
  IMPOS_19_cmp_eq00017108_SW0 : X_LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      ADR0 => IMPOS_BLOCKERASE(0),
      ADR1 => IMPOS(16),
      O => N333
    );
  IMPOS_19_cmp_eq00017108_SW1 : X_LUT3
    generic map(
      INIT => X"90"
    )
    port map (
      ADR0 => IMPOS_BLOCKERASE(0),
      ADR1 => IMPOS(16),
      ADR2 => N704,
      O => N3351
    );
  IMPOS_19_mux000431_SW3 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => IMPOS_19_cmp_eq0001753_450,
      ADR1 => IMPOS_19_cmp_eq0001726_449,
      ADR2 => N677,
      ADR3 => N3351,
      O => N270
    );
  IMPOS_21_mux000428_SW0 : X_LUT4
    generic map(
      INIT => X"FEBA"
    )
    port map (
      ADR0 => N113,
      ADR1 => N0,
      ADR2 => N3371,
      ADR3 => N338,
      O => N2771
    );
  IMPOS_19_mux000422_SW2 : X_LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      ADR0 => IMPOS_22_16_add0000(4),
      ADR1 => POSIM_cmp_eq0000,
      ADR2 => N118,
      O => N3401
    );
  IMPOS_20_mux000428_SW0 : X_LUT4
    generic map(
      INIT => X"FEBA"
    )
    port map (
      ADR0 => N712,
      ADR1 => N0,
      ADR2 => N3401,
      ADR3 => N3411,
      O => N2791
    );
  IMPOS_19_mux000428_SW0 : X_LUT4
    generic map(
      INIT => X"FEBA"
    )
    port map (
      ADR0 => N113,
      ADR1 => N0,
      ADR2 => N343,
      ADR3 => N344,
      O => N2811
    );
  IMPOS_22_mux0004147 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => N346,
      ADR1 => IMPOS_22_mux0004112_492,
      ADR2 => IMPOS_22_mux000444_495,
      O => IMPOS_22_mux0004
    );
  IMPOS_16_mux00042212_SW0 : X_LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      ADR0 => BTN_IBUF_178,
      ADR1 => ERASE_RAM(0),
      ADR2 => ERASEFLASH_SIGNAL(0),
      ADR3 => ERASEFLASH(0),
      O => N237
    );
  VGA_DRVR1_COUNTER_V_cmp_eq000041 : X_LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_H_CUR(8),
      ADR1 => VGA_DRVR1_COUNTER_H_CUR(9),
      ADR2 => N348,
      ADR3 => VGA_DRVR1_COUNTER_V_cmp_eq000039_1862,
      O => VGA_DRVR1_COUNTER_V_not0001_inv
    );
  IMPOS_16_mux00042219_SW0 : X_LUT4
    generic map(
      INIT => X"40E0"
    )
    port map (
      ADR0 => ERASE_RAM(0),
      ADR1 => LOADFLASH(0),
      ADR2 => BTN_IBUF_178,
      ADR3 => PICTUREOK(0),
      O => N310
    );
  IMPOS_16_mux0004147_SW1_SW0 : X_LUT4
    generic map(
      INIT => X"FF32"
    )
    port map (
      ADR0 => ERASEFLASH_SIGNAL(0),
      ADR1 => LOADFLASH(0),
      ADR2 => ERASEFLASH(0),
      ADR3 => ERASE_RAM(0),
      O => N259
    );
  USBDRIVER_ABORTEDSN_0_and000068_SW0 : X_LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      ADR0 => USBDRIVER_STEPPNEXT_7_Q_1734,
      ADR1 => USBDRIVER_ABORTEDSN_0_and000017_1692,
      ADR2 => USBDRIVER_STEPPNEXT_4_Q,
      O => N242
    );
  OE_SIGNAL_mux000091 : X_LUT4
    generic map(
      INIT => X"FF04"
    )
    port map (
      ADR0 => ERASE_RAM(0),
      ADR1 => OE_SIGNAL_mux000055_1481,
      ADR2 => LOADFLASH(0),
      ADR3 => OE_SIGNAL_mux000088_1483,
      O => OE_SIGNAL_mux0000
    );
  IMPOS_16_mux0004147_SW0_SW0 : X_LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      ADR0 => ERASEFLASH_SIGNAL(0),
      ADR1 => PLUS_MEMORY(0),
      ADR2 => ERASEFLASH(0),
      O => N354
    );
  IMPOS_16_mux000441111_SW1 : X_LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      ADR0 => IMPOS_19_and0018,
      ADR1 => IMPOS_19_and0022,
      ADR2 => BTN_IBUF_178,
      O => N356
    );
  IMPOS_19_cmp_eq00041_SW0 : X_LUT4
    generic map(
      INIT => X"EFFF"
    )
    port map (
      ADR0 => DELAYFLASH(5),
      ADR1 => DELAYFLASH(4),
      ADR2 => DELAYFLASH(1),
      ADR3 => DELAYFLASH(0),
      O => N358
    );
  USBDRIVER_STEPPNEXT_1_32 : X_LUT4
    generic map(
      INIT => X"44E4"
    )
    port map (
      ADR0 => USBDRIVER_STEPPCUR(6),
      ADR1 => N277,
      ADR2 => N285,
      ADR3 => N360,
      O => USBDRIVER_STEPPNEXT_1_32_1724
    );
  WE_SIGNAL_mux0001234 : X_LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      ADR0 => WE_SIGNAL_mux000112_1990,
      ADR1 => N362,
      ADR2 => WE_SIGNAL_mux0001211_1993,
      ADR3 => N319,
      O => WE_SIGNAL_mux0001
    );
  IMPOS_19_mux000431_SW2 : X_MUX2
    port map (
      IA => DPL_SEG_3_OBUF_397,
      IB => N365,
      SEL => IMPOS_19_cmp_eq00017108_448,
      O => N269
    );
  IMPOS_19_mux000431_SW2_G : X_LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      ADR0 => BTN_IBUF_178,
      ADR1 => N319,
      ADR2 => IMPOS_19_cmp_eq0001726_449,
      ADR3 => N124,
      O => N365
    );
  POSIM_mux0004_2_1164_SW0 : X_MUX2
    port map (
      IA => DPL_SEG_3_OBUF_397,
      IB => N367,
      SEL => KBRD_DRIVER_KBRD_DATA(2),
      O => N274
    );
  POSIM_mux0004_2_1164_SW0_G : X_LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      ADR0 => KBRD_DRIVER_KBRD_DATA(0),
      ADR1 => KBRD_DRIVER_KBRD_DATA(6),
      ADR2 => KBRD_DRIVER_KBRD_DATA(3),
      ADR3 => PRESENTATION(0),
      O => N367
    );
  POSIM_mux0004_0_11_SW2 : X_MUX2
    port map (
      IA => N368,
      IB => N369,
      SEL => IMPOS_19_cmp_eq0008,
      O => N293
    );
  POSIM_mux0004_0_11_SW2_F : X_LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      ADR0 => PICTUREOK(0),
      ADR1 => PLUS_MEMORY(0),
      ADR2 => USBDRIVER_DATAOK(0),
      ADR3 => USBDRIVER_ABORTEDSN(0),
      O => N368
    );
  POSIM_mux0004_0_11_SW2_G : X_LUT4
    generic map(
      INIT => X"FF23"
    )
    port map (
      ADR0 => USBDRIVER_DATAOK(0),
      ADR1 => PLUS_MEMORY(0),
      ADR2 => PICTUREOK(0),
      ADR3 => USBDRIVER_ABORTEDSN(0),
      O => N369
    );
  IMPOS_19_mux0004103_SW0 : X_MUX2
    port map (
      IA => N370,
      IB => N371,
      SEL => N188,
      O => N295
    );
  IMPOS_19_mux0004103_SW1 : X_MUX2
    port map (
      IA => N372,
      IB => N373,
      SEL => N188,
      O => N2961
    );
  IMPOS_20_mux0004102_SW0 : X_MUX2
    port map (
      IA => N374,
      IB => N375,
      SEL => N188,
      O => N298
    );
  IMPOS_20_mux0004102_SW0_G : X_LUT4
    generic map(
      INIT => X"F666"
    )
    port map (
      ADR0 => Madd_IMPOS_22_16_add0001_cy(3),
      ADR1 => IMPOS(20),
      ADR2 => IMPOS_20_mux000444_478,
      ADR3 => N186,
      O => N375
    );
  IMPOS_20_mux0004102_SW1 : X_MUX2
    port map (
      IA => N376,
      IB => N377,
      SEL => N188,
      O => N299
    );
  IMPOS_20_mux0004102_SW1_G : X_LUT4
    generic map(
      INIT => X"FEFA"
    )
    port map (
      ADR0 => IMPOS(20),
      ADR1 => IMPOS_20_mux000444_478,
      ADR2 => Madd_IMPOS_22_16_add0001_cy(3),
      ADR3 => N186,
      O => N377
    );
  IMPOS_21_mux0004102_SW0 : X_MUX2
    port map (
      IA => N378,
      IB => N379,
      SEL => N188,
      O => N3011
    );
  IMPOS_21_mux0004102_SW0_F : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => IMPOS_21_mux000444_483,
      ADR1 => N186,
      O => N378
    );
  IMPOS_21_mux0004102_SW0_G : X_LUT4
    generic map(
      INIT => X"F666"
    )
    port map (
      ADR0 => Madd_IMPOS_22_16_add0001_cy(4),
      ADR1 => IMPOS(21),
      ADR2 => IMPOS_21_mux000444_483,
      ADR3 => N186,
      O => N379
    );
  IMPOS_21_mux0004102_SW1 : X_MUX2
    port map (
      IA => N380,
      IB => N3811,
      SEL => N188,
      O => N302
    );
  IMPOS_21_mux0004102_SW1_F : X_LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      ADR0 => IMPOS(21),
      ADR1 => IMPOS_21_mux000444_483,
      ADR2 => N186,
      O => N380
    );
  IMPOS_21_mux0004102_SW1_G : X_LUT4
    generic map(
      INIT => X"FEFA"
    )
    port map (
      ADR0 => IMPOS(21),
      ADR1 => IMPOS_21_mux000444_483,
      ADR2 => Madd_IMPOS_22_16_add0001_cy(4),
      ADR3 => N186,
      O => N3811
    );
  POSIM_mux0004_0_11_SW4 : X_MUX2
    port map (
      IA => N382,
      IB => N306,
      SEL => POSIM_mux0004_0_113_1521,
      O => N320
    );
  POSIM_mux0004_0_11_SW4_F : X_LUT4
    generic map(
      INIT => X"080A"
    )
    port map (
      ADR0 => N306,
      ADR1 => USBDRIVER_DATAOK(0),
      ADR2 => PLUS_MEMORY(0),
      ADR3 => PICTUREOK(0),
      O => N382
    );
  POSIM_mux0004_2_12_SW0 : X_MUX2
    port map (
      IA => N384,
      IB => N385,
      SEL => N172,
      O => N322
    );
  POSIM_mux0004_2_12_SW0_F : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => BTN_IBUF_178,
      ADR1 => IMPOS_16_mux0004636_427,
      ADR2 => POSIM_mux0004_2_1143_1539,
      ADR3 => N124,
      O => N384
    );
  POSIM_mux0004_2_12_SW0_G : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => BTN_IBUF_178,
      ADR1 => N124,
      O => N385
    );
  IMPOS_16_mux0004192_SW2 : X_MUX2
    port map (
      IA => N386,
      IB => N387,
      SEL => IMPOS_16_mux0004121_422,
      O => N3251
    );
  IMPOS_16_mux0004192_SW2_F : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => IMPOS(18),
      ADR1 => IMPOS_16_mux00041211_423,
      ADR2 => N240,
      ADR3 => INPRES_0_not0001,
      O => N386
    );
  IMPOS_16_mux0004192_SW2_G : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => IMPOS(18),
      ADR1 => INPRES_0_not0001,
      O => N387
    );
  IMPOS_16_mux0004192_SW3 : X_MUX2
    port map (
      IA => N388,
      IB => N389,
      SEL => IMPOS_16_mux0004121_422,
      O => N3261
    );
  IMPOS_16_mux0004192_SW3_F : X_LUT4
    generic map(
      INIT => X"A200"
    )
    port map (
      ADR0 => IMPOS(18),
      ADR1 => IMPOS_16_mux00041211_423,
      ADR2 => N240,
      ADR3 => INPRES_0_not0001,
      O => N388
    );
  IMPOS_16_mux0004192_SW3_G : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => IMPOS(18),
      ADR1 => INPRES_0_not0001,
      O => N389
    );
  IMPOS_16_mux0004192_SW4 : X_MUX2
    port map (
      IA => N390,
      IB => N391,
      SEL => IMPOS_16_mux0004121_422,
      O => N3281
    );
  IMPOS_16_mux0004192_SW4_F : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => IMPOS_16_mux00041211_423,
      ADR1 => N240,
      ADR2 => N205,
      ADR3 => N1,
      O => N390
    );
  IMPOS_16_mux0004192_SW5 : X_MUX2
    port map (
      IA => N392,
      IB => N393,
      SEL => IMPOS_16_mux0004121_422,
      O => N3291
    );
  IMPOS_16_mux0004192_SW5_F : X_LUT4
    generic map(
      INIT => X"D000"
    )
    port map (
      ADR0 => IMPOS_16_mux00041211_423,
      ADR1 => N240,
      ADR2 => N205,
      ADR3 => N1,
      O => N392
    );
  IMPOS_19_mux000422_SW1 : X_MUX2
    port map (
      IA => DPL_SEG_3_OBUF_397,
      IB => N395,
      SEL => IMPOS_22_16_add0000(5),
      O => N338
    );
  IMPOS_19_mux000422_SW1_G : X_LUT4
    generic map(
      INIT => X"3230"
    )
    port map (
      ADR0 => COUNTER_RAM_USB_cmp_eq0000,
      ADR1 => POSIM_cmp_eq0000,
      ADR2 => N118,
      ADR3 => N88,
      O => N395
    );
  IMPOS_22_mux0004143_SW0_SW0 : X_MUX2
    port map (
      IA => N400,
      IB => N4011,
      SEL => N39,
      O => N346
    );
  IMPOS_22_mux0004143_SW0_SW0_F : X_LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      ADR0 => POSIM_cmp_eq0000,
      ADR1 => IMPOS_22_16_add0000(6),
      ADR2 => N65,
      O => N400
    );
  IMPOS_22_mux0004143_SW0_SW0_G : X_LUT4
    generic map(
      INIT => X"FF20"
    )
    port map (
      ADR0 => IMPOS_22_16_add0000(6),
      ADR1 => POSIM_cmp_eq0000,
      ADR2 => N65,
      ADR3 => N235,
      O => N4011
    );
  Mrom_varindex0000_rom000015112 : X_LUT4
    generic map(
      INIT => X"0627"
    )
    port map (
      ADR0 => Q_varindex0000(3),
      ADR1 => Q_varindex0000(1),
      ADR2 => Q_varindex0000(4),
      ADR3 => Q_varindex0000(2),
      O => Mrom_varindex0000_rom000015112_903
    );
  WORDDATA_TEMP_not000136 : X_LUT4
    generic map(
      INIT => X"AB01"
    )
    port map (
      ADR0 => ERASE_RAM(0),
      ADR1 => N162,
      ADR2 => N402,
      ADR3 => PICTUREOK(0),
      O => WORDDATA_TEMP_not0001
    );
  Mmux_varindex0000_81 : X_LUT4
    generic map(
      INIT => X"F777"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_H(4),
      ADR1 => VGA_DRVR1_COUNTER_H(3),
      ADR2 => VGA_DRVR1_COUNTER_H(5),
      ADR3 => N1451,
      O => Mmux_varindex0000_81_891
    );
  VGA_DRVR1_COUNTER_RAM_and000046 : X_LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_RAM_and000015_1818,
      ADR1 => VGA_DRVR1_COUNTER_RAM_and00008_1823,
      ADR2 => VGA_DRVR1_COUNTER_RAM_and000034_1822,
      ADR3 => VGA_DRVR1_COUNTER_RAM_and000022_1821,
      O => VGA_DRVR1_COUNTER_RAM_and0000
    );
  CNTPRSTEP_mux0000_1_37_SW0 : X_LUT4
    generic map(
      INIT => X"F7FF"
    )
    port map (
      ADR0 => IMPOS_19_and0018,
      ADR1 => N139,
      ADR2 => N174,
      ADR3 => N321,
      O => N404
    );
  CNTPRSTEP_mux0000_1_37 : X_LUT4
    generic map(
      INIT => X"FF20"
    )
    port map (
      ADR0 => ENABLE_KB,
      ADR1 => N404,
      ADR2 => CNTPRSTEP_mux0000_1_19_233,
      ADR3 => CNTPRSTEP_mux0000_1_4_234,
      O => CNTPRSTEP_mux0000(1)
    );
  CNTPRSTEP_mux0000_0_58 : X_LUT4
    generic map(
      INIT => X"AA8A"
    )
    port map (
      ADR0 => CNTPRSTEP_mux0000_0_56_230,
      ADR1 => CNTPRSTEP_mux0000_0_7_231,
      ADR2 => ENABLE_KB,
      ADR3 => N404,
      O => CNTPRSTEP_mux0000(0)
    );
  VGA_DRVR1_COUNTER_RAM_or000061 : X_LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_RAM_or000014_1825,
      ADR1 => VGA_DRVR1_COUNTER_RAM_or000048_1828,
      ADR2 => VGA_DRVR1_N2,
      ADR3 => VGA_DRVR1_COUNTER_RAM_or000028,
      O => VGA_DRVR1_COUNTER_RAM_or0000
    );
  ST_RP_SIGNAL_mux000032 : X_LUT4
    generic map(
      INIT => X"FF8A"
    )
    port map (
      ADR0 => WE_SIGNAL_mux000174,
      ADR1 => ST_RP_SIGNAL_mux00008_1686,
      ADR2 => IMPOS_19_cmp_eq0004,
      ADR3 => ST_RP_SIGNAL_mux000031_1685,
      O => ST_RP_SIGNAL_mux0000
    );
  INPRES_0_mux000036 : X_LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      ADR0 => INPRES_0_and0000,
      ADR1 => INPRES_0_mux000010_525,
      ADR2 => INPRES_0_mux000018_526,
      ADR3 => INPRES_0_mux00005_527,
      O => INPRES_0_mux0000
    );
  USBDRIVER_ABORTEDSN_0_and000017_SW0 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => USBDRIVER_HIBYTE(4),
      ADR1 => USBDRIVER_HIBYTE(5),
      ADR2 => USBDRIVER_HIBYTE(6),
      ADR3 => USBDRIVER_HIBYTE(7),
      O => N408
    );
  USBDRIVER_ABORTEDSN_0_and000017 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => USBDRIVER_ABORTEDSN_0_and000010_1691,
      ADR1 => USBDRIVER_HIBYTE(2),
      ADR2 => USBDRIVER_HIBYTE(3),
      ADR3 => N408,
      O => USBDRIVER_ABORTEDSN_0_and000017_1692
    );
  WORDDATA_TEMP_mux0000_10_27_SW0 : X_LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      ADR0 => N41,
      ADR1 => WORDDATA_TEMP_mux0000_10_10_2021,
      ADR2 => N134,
      ADR3 => WORDDATA_TEMP(5),
      O => N410
    );
  WORDDATA_TEMP_mux0000_10_27 : X_LUT4
    generic map(
      INIT => X"FF20"
    )
    port map (
      ADR0 => LOADFLASH(0),
      ADR1 => ERASE_RAM(0),
      ADR2 => N1731,
      ADR3 => N410,
      O => WORDDATA_TEMP_mux0000(10)
    );
  OE_SIGNAL_mux000055_SW0 : X_LUT4
    generic map(
      INIT => X"F160"
    )
    port map (
      ADR0 => CNTPROCCES(1),
      ADR1 => CNTPROCCES(3),
      ADR2 => OE_SIGNAL_1479,
      ADR3 => CNTPROCCES(0),
      O => N412
    );
  IMPOS_17_mux000430_SW0 : X_LUT4
    generic map(
      INIT => X"0900"
    )
    port map (
      ADR0 => IMPOS(17),
      ADR1 => IMPOS(16),
      ADR2 => IMPOS_19_cmp_eq0014_462,
      ADR3 => N132,
      O => N207
    );
  Mmux_varindex000032180_SW0 : X_LUT4
    generic map(
      INIT => X"0490"
    )
    port map (
      ADR0 => POSIM(2),
      ADR1 => POSIM(4),
      ADR2 => POSIM(3),
      ADR3 => POSIM(1),
      O => N414
    );
  Mmux_varindex000032180 : X_LUT4
    generic map(
      INIT => X"8AA8"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_H(3),
      ADR1 => N414,
      ADR2 => VGA_DRVR1_COUNTER_H(4),
      ADR3 => VGA_DRVR1_COUNTER_H(5),
      O => Mmux_varindex000032180_883
    );
  CHARBIT_ACT142 : X_LUT4
    generic map(
      INIT => X"0603"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_H(8),
      ADR1 => VGA_DRVR1_COUNTER_H(9),
      ADR2 => POS_V_MEMORY(5),
      ADR3 => N416,
      O => CHARBIT_ACT142_181
    );
  Mrom_varindex0000_rom00001724_SW0 : X_LUT4
    generic map(
      INIT => X"BB20"
    )
    port map (
      ADR0 => Q_varindex0000(0),
      ADR1 => Q_varindex0000(2),
      ADR2 => Q_varindex0000(4),
      ADR3 => Q_varindex0000(3),
      O => N418
    );
  Mmux_varindex0000_8 : X_LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_H(3),
      ADR1 => VGA_DRVR1_COUNTER_H(4),
      ADR2 => NORM_NEGA(0),
      O => Mmux_varindex0000_8_890
    );
  CHARBIT_ACT55 : X_LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_H(2),
      ADR1 => Mmux_CHARBIT_5_f7_850,
      ADR2 => N420,
      O => CHARBIT_ACT55_188
    );
  Mmux_varindex0000_7 : X_LUT3
    generic map(
      INIT => X"56"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_H(5),
      ADR1 => VGA_DRVR1_COUNTER_H(4),
      ADR2 => VGA_DRVR1_COUNTER_H(3),
      O => Mmux_varindex0000_7_888
    );
  Mmux_CHARBIT_18 : X_LUT4
    generic map(
      INIT => X"010B"
    )
    port map (
      ADR0 => POS_V_MEMORY(0),
      ADR1 => Mrom_varindex0000_rom00005017_955,
      ADR2 => N60,
      ADR3 => N422,
      O => Mmux_CHARBIT_18_842
    );
  Mmux_CHARBIT_12 : X_LUT4
    generic map(
      INIT => X"3313"
    )
    port map (
      ADR0 => POS_V_MEMORY(0),
      ADR1 => Mrom_varindex0000_rom000020_908,
      ADR2 => Q_varindex0000(3),
      ADR3 => N151,
      O => Mmux_CHARBIT_12_803
    );
  Mmux_varindex00003991 : X_LUT4
    generic map(
      INIT => X"FFB8"
    )
    port map (
      ADR0 => Mmux_varindex00003945_885,
      ADR1 => POS_H_MEMORY(7),
      ADR2 => Mmux_varindex000032,
      ADR3 => POS_H_MEMORY(8),
      O => Q_varindex0000(4)
    );
  Mrom_varindex0000_rom000041228 : X_LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      ADR0 => Mrom_varindex0000_rom00004126_944,
      ADR1 => Q_varindex0000(3),
      ADR2 => N432,
      O => N47
    );
  Mmux_varindex000013186 : X_LUT4
    generic map(
      INIT => X"D080"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_H(3),
      ADR1 => POSIM(0),
      ADR2 => POS_H_MEMORY(5),
      ADR3 => Mmux_varindex000013151_862,
      O => Mmux_varindex000013186_863
    );
  Madd_POS_MEMORY_NAT_lut_16_Q : X_LUT4
    generic map(
      INIT => X"569A"
    )
    port map (
      ADR0 => IMPOS(16),
      ADR1 => POS_MEMORY_NAT_or0000,
      ADR2 => VGA_DRVR1_COUNTER_RAM(16),
      ADR3 => COUNTER_RAM_USB(16),
      O => Madd_POS_MEMORY_NAT_lut(16)
    );
  Madd_POS_MEMORY_NAT_lut_17_Q : X_LUT4
    generic map(
      INIT => X"569A"
    )
    port map (
      ADR0 => IMPOS(17),
      ADR1 => POS_MEMORY_NAT_or0000,
      ADR2 => VGA_DRVR1_COUNTER_RAM(17),
      ADR3 => COUNTER_RAM_USB(17),
      O => Madd_POS_MEMORY_NAT_lut(17)
    );
  Madd_POS_MEMORY_NAT_lut_18_Q : X_LUT4
    generic map(
      INIT => X"569A"
    )
    port map (
      ADR0 => IMPOS(18),
      ADR1 => POS_MEMORY_NAT_or0000,
      ADR2 => VGA_DRVR1_COUNTER_RAM(18),
      ADR3 => COUNTER_RAM_USB(18),
      O => Madd_POS_MEMORY_NAT_lut(18)
    );
  Mmux_CHARBIT_163 : X_LUT4
    generic map(
      INIT => X"FF01"
    )
    port map (
      ADR0 => N52,
      ADR1 => N84,
      ADR2 => Mrom_varindex0000_rom000021171_911,
      ADR3 => POS_V_MEMORY(0),
      O => Mmux_CHARBIT_163_833
    );
  POS_V_MEMORY_1_423 : X_LUT4
    generic map(
      INIT => X"0301"
    )
    port map (
      ADR0 => Q_varindex0000(1),
      ADR1 => N267,
      ADR2 => POS_V_MEMORY(0),
      ADR3 => N436,
      O => POS_V_MEMORY_1_423_1587
    );
  VGA_DRVR1_RED_1_1 : X_LUT4
    generic map(
      INIT => X"0A09"
    )
    port map (
      ADR0 => NORM_NEGA(0),
      ADR1 => VGA_DRVR1_COLOR_6_41_1766,
      ADR2 => VGA_DRVR1_COUNTER_RAM_or0000,
      ADR3 => VGA_DRVR1_COLOR_6_22_1765,
      O => RED_1_OBUF_1624
    );
  VGA_DRVR1_GRN_1_1 : X_LUT4
    generic map(
      INIT => X"0A09"
    )
    port map (
      ADR0 => NORM_NEGA(0),
      ADR1 => VGA_DRVR1_COLOR_3_41_1760,
      ADR2 => VGA_DRVR1_COUNTER_RAM_or0000,
      ADR3 => VGA_DRVR1_COLOR_3_22_1759,
      O => GRN_1_OBUF_416
    );
  POS_V_MEMORY_1_518_SW0 : X_LUT4
    generic map(
      INIT => X"FF1F"
    )
    port map (
      ADR0 => Q_varindex0000(2),
      ADR1 => N54,
      ADR2 => POS_V_MEMORY(0),
      ADR3 => N71,
      O => N438
    );
  POS_V_MEMORY_1_518 : X_LUT4
    generic map(
      INIT => X"0301"
    )
    port map (
      ADR0 => N138,
      ADR1 => Mrom_varindex0000_rom0000150_902,
      ADR2 => N438,
      ADR3 => Q_varindex0000(1),
      O => POS_V_MEMORY_1_518_1591
    );
  POS_V_MEMORY_1_559_SW0 : X_LUT4
    generic map(
      INIT => X"FF2F"
    )
    port map (
      ADR0 => N151,
      ADR1 => Q_varindex0000(3),
      ADR2 => POS_V_MEMORY_1_550_1592,
      ADR3 => POS_V_MEMORY(0),
      O => N440
    );
  POS_V_MEMORY_1_559 : X_LUT4
    generic map(
      INIT => X"0B09"
    )
    port map (
      ADR0 => Q_varindex0000(0),
      ADR1 => Q_varindex0000(4),
      ADR2 => N440,
      ADR3 => N23,
      O => POS_V_MEMORY_1_559_1593
    );
  Mmux_varindex000023312 : X_LUT4
    generic map(
      INIT => X"2220"
    )
    port map (
      ADR0 => Mmux_varindex000023276_879,
      ADR1 => POS_H_MEMORY(8),
      ADR2 => POS_H_MEMORY(7),
      ADR3 => Mmux_varindex000023172_873,
      O => Q_varindex0000(1)
    );
  CHARBIT_ACT246_SW0 : X_LUT4
    generic map(
      INIT => X"CCC8"
    )
    port map (
      ADR0 => CHARBIT_ACT76_191,
      ADR1 => CHARBIT_ACT210,
      ADR2 => Q_varindex0000(1),
      ADR3 => Q_varindex0000(3),
      O => N446
    );
  CHARBIT_ACT246 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => CHARBIT_ACT106_180,
      ADR1 => CHARBIT_ACT142_181,
      ADR2 => CHARBIT_ACT183,
      ADR3 => N446,
      O => CHARBIT_ACT246_187
    );
  RESETCNTDPL_0_mux000055_SW0 : X_LUT4
    generic map(
      INIT => X"1333"
    )
    port map (
      ADR0 => N179,
      ADR1 => RESETCNTDPL_0_mux000033_1628,
      ADR2 => ERASE_RAM_0_and0010,
      ADR3 => RESETCNTDPL_0_mux00008_1630,
      O => N448
    );
  IMPOS_18_mux000456 : X_LUT3
    generic map(
      INIT => X"56"
    )
    port map (
      ADR0 => IMPOS(18),
      ADR1 => IMPOS(16),
      ADR2 => IMPOS(17),
      O => IMPOS_18_mux000456_439
    );
  Madd_IMPOS_22_16_add0001_cy_4_11 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => IMPOS(20),
      ADR1 => IMPOS(19),
      ADR2 => IMPOS(18),
      ADR3 => Madd_IMPOS_22_16_add0000_cy_1_Q,
      O => Madd_IMPOS_22_16_add0001_cy(4)
    );
  IMPOS_22_mux000473 : X_LUT4
    generic map(
      INIT => X"AAA9"
    )
    port map (
      ADR0 => IMPOS(22),
      ADR1 => IMPOS(21),
      ADR2 => IMPOS(20),
      ADR3 => Msub_IMPOS_22_16_sub0000_cy(3),
      O => IMPOS_22_mux000473_496
    );
  Msub_IMPOS_22_16_sub0001_cy_4_11 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => IMPOS(20),
      ADR1 => IMPOS(19),
      ADR2 => N668,
      O => Msub_IMPOS_22_16_sub0001_cy_4_Q
    );
  IMPOS_22_mux000438 : X_LUT4
    generic map(
      INIT => X"060A"
    )
    port map (
      ADR0 => IMPOS(22),
      ADR1 => IMPOS(21),
      ADR2 => POSIM_cmp_eq0001_1519,
      ADR3 => Madd_IMPOS_22_16_add0000_cy_4_Q,
      O => IMPOS_22_mux000438_494
    );
  WORDDATA_TEMP_mux0000_9_SW0 : X_LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      ADR0 => CNTPROCCES(3),
      ADR1 => WORDDATA_TEMP(6),
      ADR2 => N306,
      ADR3 => N441,
      O => N30
    );
  WORDDATA_TEMP_mux0000_8_SW0 : X_LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      ADR0 => CNTPROCCES(3),
      ADR1 => WORDDATA_TEMP(7),
      ADR2 => N306,
      ADR3 => N441,
      O => N32
    );
  WORDDATA_TEMP_mux0000_15_SW0 : X_LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      ADR0 => CNTPROCCES(3),
      ADR1 => WORDDATA_TEMP(0),
      ADR2 => N306,
      ADR3 => N441,
      O => N34
    );
  WORDDATA_TEMP_mux0000_14_SW0 : X_LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      ADR0 => CNTPROCCES(3),
      ADR1 => WORDDATA_TEMP(1),
      ADR2 => N306,
      ADR3 => N441,
      O => N36
    );
  WORDDATA_TEMP_mux0000_13_SW0 : X_LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      ADR0 => CNTPROCCES(3),
      ADR1 => WORDDATA_TEMP(2),
      ADR2 => N306,
      ADR3 => N441,
      O => N381
    );
  WORDDATA_TEMP_mux0000_12_SW0 : X_LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      ADR0 => CNTPROCCES(3),
      ADR1 => WORDDATA_TEMP(3),
      ADR2 => N306,
      ADR3 => N441,
      O => N401
    );
  WORDDATA_TEMP_mux0000_11_SW0 : X_LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      ADR0 => CNTPROCCES(3),
      ADR1 => WORDDATA_TEMP(4),
      ADR2 => N306,
      ADR3 => N441,
      O => N421
    );
  IMPOS_21_mux000422 : X_LUT3
    generic map(
      INIT => X"06"
    )
    port map (
      ADR0 => IMPOS(21),
      ADR1 => Madd_IMPOS_22_16_add0000_cy_4_Q,
      ADR2 => POSIM_cmp_eq0001_1519,
      O => IMPOS_21_mux000422_482
    );
  POSIM_mux0004_0_729 : X_LUT4
    generic map(
      INIT => X"5F4E"
    )
    port map (
      ADR0 => ERASE_RAM(0),
      ADR1 => LOADFLASH(0),
      ADR2 => PICTUREOK(0),
      ADR3 => PLUS_MEMORY(0),
      O => POSIM_mux0004_0_156
    );
  PICTUREOK_0_mux00009 : X_LUT4
    generic map(
      INIT => X"CCC8"
    )
    port map (
      ADR0 => NPASOS_SAVE(0),
      ADR1 => PICTUREOK(0),
      ADR2 => NPASOS_SAVE(1),
      ADR3 => NPASOS_SAVE(2),
      O => PICTUREOK_0_mux00009_1500
    );
  IMPOS_19_mux00045_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => KBRD_DRIVER_KBRD_DATA(5),
      ADR1 => KBRD_DRIVER_KBRD_DATA(4),
      ADR2 => KBRD_DRIVER_KBRD_DATA(7),
      ADR3 => PLUSMINUSTAB(0),
      O => N215
    );
  INPRES_0_and00001 : X_LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      ADR0 => KBRD_DRIVER_KBRD_DATA(0),
      ADR1 => KBRD_DRIVER_KBRD_DATA(7),
      ADR2 => KBRD_DRIVER_KBRD_DATA(1),
      ADR3 => KBRD_DRIVER_KBRD_DATA(4),
      O => INPRES_0_and0000
    );
  Madd_IMPOS_22_16_add0000_xor_2_11 : X_LUT3
    generic map(
      INIT => X"93"
    )
    port map (
      ADR0 => IMPOS(17),
      ADR1 => IMPOS(18),
      ADR2 => IMPOS(16),
      O => IMPOS_22_16_add0000(2)
    );
  Madd_IMPOS_22_16_add0001_cy_2_11 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => IMPOS(18),
      ADR1 => IMPOS(17),
      ADR2 => IMPOS(16),
      O => Madd_IMPOS_22_16_add0001_cy(2)
    );
  IMPOS_20_mux000444 : X_LUT3
    generic map(
      INIT => X"A9"
    )
    port map (
      ADR0 => IMPOS(20),
      ADR1 => IMPOS(19),
      ADR2 => IMPOS(18),
      O => IMPOS_20_mux000444_478
    );
  WORDDATA_TEMP_not00016 : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => NPASOS_SAVE(0),
      ADR1 => NPASOS_SAVE(2),
      ADR2 => LOADFLASH(0),
      ADR3 => NPASOS_SAVE(1),
      O => WORDDATA_TEMP_not00016_2037
    );
  POSIM_mux0004_2_13 : X_LUT3
    generic map(
      INIT => X"A9"
    )
    port map (
      ADR0 => POSIM(2),
      ADR1 => POSIM(1),
      ADR2 => POSIM(0),
      O => POSIM_mux0004_2_13_1542
    );
  ST_RP_SIGNAL_mux00008 : X_LUT4
    generic map(
      INIT => X"4DCD"
    )
    port map (
      ADR0 => NPASOS_SAVE(1),
      ADR1 => ST_RP_SIGNAL_1683,
      ADR2 => NPASOS_SAVE(2),
      ADR3 => NPASOS_SAVE(0),
      O => ST_RP_SIGNAL_mux00008_1686
    );
  ST_CE_SIGNAL_mux000021 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => CNTPROCCES(3),
      ADR1 => CNTPROCCES(0),
      ADR2 => CNTPROCCES(1),
      ADR3 => CNTPROCCES(2),
      O => N141
    );
  INPRES_0_mux000018 : X_LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      ADR0 => CTRL(0),
      ADR1 => KBRD_DRIVER_KBRD_DATA(6),
      ADR2 => ALT(0),
      ADR3 => KBRD_DRIVER_KBRD_DATA(5),
      O => INPRES_0_mux000018_526
    );
  POSIM_mux0004_1_54 : X_LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      ADR0 => POSIM(3),
      ADR1 => POSIM(0),
      ADR2 => POSIM(1),
      ADR3 => POSIM(2),
      O => POSIM_mux0004_1_54_1534
    );
  USBDRIVER_STEPPNEXT_1_21_SW0 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => USBDRIVER_STEPPCUR(7),
      ADR1 => USBDRIVER_STEPPCUR(2),
      ADR2 => USBDRIVER_STEPPCUR(3),
      ADR3 => ASTB_IBUF_172,
      O => N360
    );
  KBRD_DRIVER_PAR_OK_mux00001 : X_LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      ADR0 => KBRD_DRIVER_KEY_DOWN_0_and0000,
      ADR1 => KBRD_DRIVER_COUNTER_KB(3),
      ADR2 => KBRD_DRIVER_COUNTER_KB(0),
      ADR3 => KBRD_DRIVER_PAR_OK_590,
      O => KBRD_DRIVER_PAR_OK_mux0000
    );
  IMPOS_19_mux0004103_SW0_G : X_LUT4
    generic map(
      INIT => X"E766"
    )
    port map (
      ADR0 => Madd_IMPOS_22_16_add0001_cy(2),
      ADR1 => IMPOS(19),
      ADR2 => IMPOS(18),
      ADR3 => N186,
      O => N371
    );
  IMPOS_19_mux0004103_SW1_G : X_LUT4
    generic map(
      INIT => X"EFEE"
    )
    port map (
      ADR0 => Madd_IMPOS_22_16_add0001_cy(2),
      ADR1 => IMPOS(19),
      ADR2 => IMPOS(18),
      ADR3 => N186,
      O => N373
    );
  COUNTER_RAM_USB_not000123 : X_LUT4
    generic map(
      INIT => X"CCC8"
    )
    port map (
      ADR0 => USBDRIVER_ABORTEDSN(0),
      ADR1 => N306,
      ADR2 => IMPOS_19_or0003,
      ADR3 => COUNTER_RAM_USB_not000115_313,
      O => COUNTER_RAM_USB_not000123_315
    );
  ST_CE_SIGNAL_mux000064 : X_LUT4
    generic map(
      INIT => X"F111"
    )
    port map (
      ADR0 => ERASEFLASH(0),
      ADR1 => ERASEFLASH_SIGNAL(0),
      ADR2 => ST_CE_SIGNAL_1672,
      ADR3 => N141,
      O => ST_CE_SIGNAL_mux000064_1678
    );
  PLUSMINUSTAB_0_mux0000_SW0 : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => KBRD_DRIVER_KBRD_DATA(5),
      ADR1 => KBRD_DRIVER_KBRD_DATA(2),
      ADR2 => KBRD_DRIVER_KBRD_DATA(4),
      ADR3 => PLUSMINUSTAB_0_or0001,
      O => N24
    );
  KBRD_DRIVER_KBRD_DATA_S_0_and00002 : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => KBRD_DRIVER_COUNTER_KB(3),
      ADR1 => RESET(0),
      ADR2 => KBRD_DRIVER_COUNTER_KB(0),
      ADR3 => KBRD_DRIVER_KEY_DOWN_0_and0000,
      O => KBRD_DRIVER_KBRD_DATA_S_0_and0000
    );
  LOADFLASH_0_not000135 : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => ERASEFLASH(0),
      ADR1 => ERASEFLASH_SIGNAL(0),
      ADR2 => N653,
      ADR3 => N332,
      O => LOADFLASH_0_not000135_599
    );
  IMPOS_19_mux0004103_SW1_F : X_LUT3
    generic map(
      INIT => X"BA"
    )
    port map (
      ADR0 => IMPOS(19),
      ADR1 => IMPOS(18),
      ADR2 => N186,
      O => N372
    );
  IMPOS_16_mux0004192_SW4_G : X_LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      ADR0 => BTN_IBUF_178,
      ADR1 => N124,
      ADR2 => N1,
      O => N391
    );
  IMPOS_16_mux0004192_SW5_G : X_LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      ADR0 => BTN_IBUF_178,
      ADR1 => N124,
      ADR2 => N1,
      O => N393
    );
  PICTUREOK_0_mux000082 : X_LUT4
    generic map(
      INIT => X"5F4E"
    )
    port map (
      ADR0 => ERASE_RAM(0),
      ADR1 => PICTUREOK_0_mux000023_1496,
      ADR2 => PICTUREOK(0),
      ADR3 => PICTUREOK_0_mux000043,
      O => PICTUREOK_0_mux0000
    );
  IMPOS_16_mux00042219_SW1 : X_LUT4
    generic map(
      INIT => X"FF2E"
    )
    port map (
      ADR0 => LOADFLASH(0),
      ADR1 => ERASE_RAM(0),
      ADR2 => PICTUREOK(0),
      ADR3 => N697,
      O => N3111
    );
  PICTUREOK_0_not000111_SW0 : X_LUT4
    generic map(
      INIT => X"010B"
    )
    port map (
      ADR0 => PLUS_MEMORY(0),
      ADR1 => N654,
      ADR2 => USBDRIVER_ABORTEDSN(0),
      ADR3 => IMPOS_19_cmp_eq0008,
      O => N452
    );
  PICTUREOK_0_not000111 : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => ERASEFLASH(0),
      ADR1 => ERASEFLASH_SIGNAL(0),
      ADR2 => LOADFLASH(0),
      ADR3 => N452,
      O => PICTUREOK_0_not000111_1502
    );
  IM_16_8_BITS_0_mux0000160_SW0 : X_LUT4
    generic map(
      INIT => X"FFDF"
    )
    port map (
      ADR0 => KBRD_DRIVER_KBRD_DATA(4),
      ADR1 => KBRD_DRIVER_KBRD_DATA(6),
      ADR2 => N301,
      ADR3 => KBRD_DRIVER_KBRD_DATA(5),
      O => N454
    );
  IM_16_8_BITS_0_mux0000160 : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => IM_16_8_BITS(0),
      ADR1 => N454,
      ADR2 => KBRD_DRIVER_KBRD_DATA(2),
      ADR3 => IM_16_8_BITS_0_mux0000152_511,
      O => IM_16_8_BITS_0_mux0000160_512
    );
  IM_16_8_BITS_0_mux00003_SW1 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => CNTPRSTEP(0),
      ADR1 => CNTPRSTEP(1),
      ADR2 => ERASEFLASH(0),
      ADR3 => N456,
      O => N254
    );
  IM_16_8_BITS_0_or00001 : X_LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      ADR0 => MNGDPL_cmp_eq0000,
      ADR1 => LOADFLASH(0),
      ADR2 => ERASE_RAM(0),
      ADR3 => N458,
      O => N82
    );
  WORDDATA_TEMP_mux0000_10_2_SW1 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => CNTPROCCES(3),
      ADR1 => ERASE_RAM(0),
      ADR2 => LOADFLASH(0),
      O => N460
    );
  WORDDATA_TEMP_mux0000_10_2 : X_LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      ADR0 => CNTPROCCES(0),
      ADR1 => CNTPROCCES(1),
      ADR2 => CNTPROCCES(2),
      ADR3 => N460,
      O => N41
    );
  ERASEFLASH_SIGNAL_0_not00011 : X_LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      ADR0 => N462,
      ADR1 => ALT(0),
      ADR2 => CTRL(0),
      ADR3 => BTN_IBUF_178,
      O => IMPOS_BLOCKERASE_not0001
    );
  ABORT_5_not000112_SW0 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => ERASEFLASH(0),
      ADR1 => ERASE_RAM(0),
      ADR2 => LOADFLASH(0),
      O => N464
    );
  ABORT_5_not000112 : X_LUT4
    generic map(
      INIT => X"FF20"
    )
    port map (
      ADR0 => MNGDPL_cmp_eq0000,
      ADR1 => RESETCNTDPL(0),
      ADR2 => ABORT(5),
      ADR3 => N464,
      O => ABORT_5_not000112_121
    );
  WORDDATA_TEMP_mux0000_11_1_SW1 : X_LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      ADR0 => CNTPROCCES(2),
      ADR1 => CNTPROCCES(3),
      ADR2 => ERASE_RAM(0),
      ADR3 => LOADFLASH(0),
      O => N466
    );
  WORDDATA_TEMP_mux0000_11_1 : X_LUT4
    generic map(
      INIT => X"FF04"
    )
    port map (
      ADR0 => CNTPROCCES(0),
      ADR1 => N466,
      ADR2 => CNTPROCCES(1),
      ADR3 => N41,
      O => N77
    );
  MT_CE_SIGNAL_mux000035_SW0 : X_LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      ADR0 => MT_CE_SIGNAL_624,
      ADR1 => N13,
      ADR2 => NPASOS_SAVE(1),
      ADR3 => MT_CE_SIGNAL_mux000015_626,
      O => N468
    );
  MT_CE_SIGNAL_mux000035 : X_LUT4
    generic map(
      INIT => X"FF20"
    )
    port map (
      ADR0 => LOADFLASH(0),
      ADR1 => ERASE_RAM(0),
      ADR2 => N468,
      ADR3 => N319,
      O => MT_CE_SIGNAL_mux0000
    );
  ERASEFLASH_SIGNAL_0_not0001_SW1 : X_LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      ADR0 => KBRD_DRIVER_KEY_UP(0),
      ADR1 => ERASEFLASH_SIGNAL_0_and0002,
      ADR2 => KBRD_DRIVER_KEY_DOWN(0),
      O => N470
    );
  ERASEFLASH_SIGNAL_0_not0001 : X_LUT4
    generic map(
      INIT => X"FF20"
    )
    port map (
      ADR0 => ENABLE_KB,
      ADR1 => BTN_IBUF_178,
      ADR2 => N470,
      ADR3 => IMPOS_BLOCKERASE_not0001,
      O => ERASEFLASH_SIGNAL_0_not0001_405
    );
  IMPOS_19_mux0004103_SW0_F : X_LUT3
    generic map(
      INIT => X"90"
    )
    port map (
      ADR0 => IMPOS(19),
      ADR1 => IMPOS(18),
      ADR2 => N186,
      O => N370
    );
  POSIM_mux0004_0_331 : X_LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      ADR0 => N145,
      ADR1 => LOADFLASH(0),
      ADR2 => DELAYFLASH(0),
      ADR3 => ERASE_RAM(0),
      O => NPASOS_SAVE_not0001
    );
  LOADFLASH_0_mux0000_SW0 : X_LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      ADR0 => IMPOS_19_cmp_eq0002,
      ADR1 => IMPOS_19_and0018,
      ADR2 => ALT(0),
      ADR3 => CTRL(0),
      O => N541
    );
  Mrom_varindex0000_rom00004545_SW0 : X_LUT4
    generic map(
      INIT => X"E861"
    )
    port map (
      ADR0 => Q_varindex0000(3),
      ADR1 => Q_varindex0000(4),
      ADR2 => Q_varindex0000(2),
      ADR3 => Q_varindex0000(1),
      O => N472
    );
  Mmux_varindex00001318_SW0 : X_LUT4
    generic map(
      INIT => X"E2F6"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_H(4),
      ADR1 => VGA_DRVR1_COUNTER_H(5),
      ADR2 => VGA_DRVR1_COUNTER_H(3),
      ADR3 => IM_16_8_BITS(0),
      O => N474
    );
  Mrom_varindex0000_rom00006111 : X_LUT4
    generic map(
      INIT => X"6160"
    )
    port map (
      ADR0 => Q_varindex0000(3),
      ADR1 => Q_varindex0000(4),
      ADR2 => Q_varindex0000(2),
      ADR3 => Q_varindex0000(0),
      O => N20
    );
  Mrom_varindex0000_rom000021145 : X_LUT4
    generic map(
      INIT => X"002C"
    )
    port map (
      ADR0 => Q_varindex0000(2),
      ADR1 => Q_varindex0000(1),
      ADR2 => Q_varindex0000(0),
      ADR3 => Q_varindex0000(4),
      O => Mrom_varindex0000_rom000021145_910
    );
  VGA_DRVR1_Msub_POS_X_xor_6_11 : X_LUT3
    generic map(
      INIT => X"A9"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_H(6),
      ADR1 => VGA_DRVR1_COUNTER_H(4),
      ADR2 => VGA_DRVR1_COUNTER_H(5),
      O => POS_H_MEMORY(6)
    );
  DATAS_or0001_SW0 : X_LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      ADR0 => ERASE_RAM(0),
      ADR1 => PLUS_MEMORY(0),
      ADR2 => LOADFLASH(0),
      ADR3 => LOAD_DATA(0),
      O => N79
    );
  Mrom_varindex0000_rom00001314_SW0 : X_LUT4
    generic map(
      INIT => X"FF9B"
    )
    port map (
      ADR0 => Q_varindex0000(0),
      ADR1 => Q_varindex0000(1),
      ADR2 => POS_V_MEMORY_1_691_1598,
      ADR3 => POS_H_MEMORY(8),
      O => N480
    );
  Mrom_varindex0000_rom00001314 : X_LUT4
    generic map(
      INIT => X"0F08"
    )
    port map (
      ADR0 => POS_H_MEMORY(7),
      ADR1 => Mmux_varindex000032100_882,
      ADR2 => N480,
      ADR3 => Mmux_varindex000032233_884,
      O => Mrom_varindex0000_rom00001314_896
    );
  POS_V_MEMORY_1_490 : X_LUT4
    generic map(
      INIT => X"BFEE"
    )
    port map (
      ADR0 => Q_varindex0000(3),
      ADR1 => Q_varindex0000(2),
      ADR2 => Q_varindex0000(4),
      ADR3 => Q_varindex0000(0),
      O => POS_V_MEMORY_1_490_1589
    );
  Mrom_varindex0000_rom0000558 : X_LUT4
    generic map(
      INIT => X"0819"
    )
    port map (
      ADR0 => Q_varindex0000(0),
      ADR1 => Q_varindex0000(1),
      ADR2 => N482,
      ADR3 => Q_varindex0000(2),
      O => N340
    );
  Mrom_varindex0000_rom00003548 : X_LUT4
    generic map(
      INIT => X"4140"
    )
    port map (
      ADR0 => Q_varindex0000(1),
      ADR1 => Q_varindex0000(2),
      ADR2 => Q_varindex0000(4),
      ADR3 => Q_varindex0000(3),
      O => Mrom_varindex0000_rom00003548_934
    );
  Mmux_varindex000023134_SW0 : X_LUT3
    generic map(
      INIT => X"C8"
    )
    port map (
      ADR0 => POSIM(2),
      ADR1 => POSIM(4),
      ADR2 => POSIM(3),
      O => N484
    );
  Mmux_varindex000023134 : X_LUT4
    generic map(
      INIT => X"FDAA"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_H(4),
      ADR1 => VGA_DRVR1_COUNTER_H(3),
      ADR2 => N484,
      ADR3 => VGA_DRVR1_COUNTER_H(5),
      O => Mmux_varindex000023134_872
    );
  Mrom_varindex0000_rom000064_SW0 : X_LUT4
    generic map(
      INIT => X"7A77"
    )
    port map (
      ADR0 => Q_varindex0000(2),
      ADR1 => Q_varindex0000(4),
      ADR2 => Q_varindex0000(0),
      ADR3 => Q_varindex0000(3),
      O => N1011
    );
  Mrom_varindex0000_rom000021118_SW0 : X_LUT4
    generic map(
      INIT => X"C040"
    )
    port map (
      ADR0 => Q_varindex0000(3),
      ADR1 => Q_varindex0000(0),
      ADR2 => Q_varindex0000(2),
      ADR3 => Q_varindex0000(4),
      O => N492
    );
  Mrom_varindex0000_rom000021118 : X_LUT4
    generic map(
      INIT => X"FFB8"
    )
    port map (
      ADR0 => N492,
      ADR1 => Q_varindex0000(1),
      ADR2 => N135,
      ADR3 => N267,
      O => Mrom_varindex0000_rom000021118_909
    );
  Mrom_varindex0000_rom000025 : X_LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      ADR0 => N80,
      ADR1 => N51,
      ADR2 => Q_varindex0000(1),
      ADR3 => N498,
      O => Mrom_varindex0000_rom000025_914
    );
  Mrom_varindex0000_rom00002929_SW0 : X_LUT4
    generic map(
      INIT => X"8DAE"
    )
    port map (
      ADR0 => Q_varindex0000(1),
      ADR1 => Q_varindex0000(0),
      ADR2 => N43,
      ADR3 => Q_varindex0000(3),
      O => N500
    );
  Mrom_varindex0000_rom0000251 : X_LUT4
    generic map(
      INIT => X"AE04"
    )
    port map (
      ADR0 => Q_varindex0000(3),
      ADR1 => N126,
      ADR2 => Q_varindex0000(1),
      ADR3 => N161,
      O => N51
    );
  Mrom_varindex0000_rom00001340 : X_LUT4
    generic map(
      INIT => X"2220"
    )
    port map (
      ADR0 => Q_varindex0000(2),
      ADR1 => Q_varindex0000(3),
      ADR2 => Q_varindex0000(4),
      ADR3 => N165,
      O => Mrom_varindex0000_rom00001340_898
    );
  POS_V_MEMORY_1_442 : X_LUT4
    generic map(
      INIT => X"010B"
    )
    port map (
      ADR0 => Q_varindex0000(0),
      ADR1 => N183,
      ADR2 => N137,
      ADR3 => N330,
      O => POS_V_MEMORY_1_442_1588
    );
  Mrom_varindex0000_rom00005811 : X_LUT4
    generic map(
      INIT => X"88C8"
    )
    port map (
      ADR0 => N175,
      ADR1 => Q_varindex0000(3),
      ADR2 => N78,
      ADR3 => Q_varindex0000(1),
      O => N59
    );
  Mrom_varindex0000_rom00003664 : X_LUT4
    generic map(
      INIT => X"3098"
    )
    port map (
      ADR0 => Q_varindex0000(0),
      ADR1 => Q_varindex0000(2),
      ADR2 => Q_varindex0000(3),
      ADR3 => Q_varindex0000(1),
      O => Mrom_varindex0000_rom00003664_939
    );
  Mrom_varindex0000_rom000036101 : X_LUT4
    generic map(
      INIT => X"0B01"
    )
    port map (
      ADR0 => Q_varindex0000(4),
      ADR1 => N42,
      ADR2 => Q_varindex0000(3),
      ADR3 => Q_varindex0000(2),
      O => Mrom_varindex0000_rom000036101_937
    );
  Mrom_varindex0000_rom00001934 : X_LUT4
    generic map(
      INIT => X"444E"
    )
    port map (
      ADR0 => Q_varindex0000(3),
      ADR1 => N138,
      ADR2 => POS_V_MEMORY_1_691_1598,
      ADR3 => N177,
      O => Mrom_varindex0000_rom00001934_906
    );
  Mrom_varindex0000_rom000041_SW1 : X_LUT4
    generic map(
      INIT => X"080A"
    )
    port map (
      ADR0 => Q_varindex0000(4),
      ADR1 => Q_varindex0000(3),
      ADR2 => Q_varindex0000(2),
      ADR3 => N177,
      O => N1511
    );
  Mrom_varindex0000_rom00003435_SW0 : X_LUT4
    generic map(
      INIT => X"EC20"
    )
    port map (
      ADR0 => Q_varindex0000(4),
      ADR1 => Q_varindex0000(0),
      ADR2 => Q_varindex0000(1),
      ADR3 => Q_varindex0000(3),
      O => N510
    );
  KBRD_DRIVER_WT_KB_0_mux000021 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => KBRD_DRIVER_COUNTER_KB(3),
      ADR1 => KBRD_DRIVER_COUNTER_KB(2),
      ADR2 => KBRD_DRIVER_COUNTER_KB(1),
      ADR3 => KBRD_DRIVER_COUNTER_KB(0),
      O => KBRD_DRIVER_N4
    );
  KBRD_DRIVER_KEY_DOWN_0_mux000016_SW0 : X_LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      ADR0 => KBRD_DRIVER_COUNTER_KB(0),
      ADR1 => KBRD_DRIVER_KBRD_DATA_S(4),
      ADR2 => KBRD_DRIVER_KEY_DOWN_0_or0000,
      O => N514
    );
  POS_MEMORY_NAT_mux0000_9_1 : X_LUT4
    generic map(
      INIT => X"ABA8"
    )
    port map (
      ADR0 => COUNTER_RAM_USB(9),
      ADR1 => ERASEFLASH(0),
      ADR2 => N153,
      ADR3 => VGA_DRVR1_COUNTER_RAM(9),
      O => ADDR_9_OBUF_168
    );
  POS_MEMORY_NAT_mux0000_8_1 : X_LUT4
    generic map(
      INIT => X"ABA8"
    )
    port map (
      ADR0 => COUNTER_RAM_USB(8),
      ADR1 => ERASEFLASH(0),
      ADR2 => N153,
      ADR3 => VGA_DRVR1_COUNTER_RAM(8),
      O => ADDR_8_OBUF_167
    );
  POS_MEMORY_NAT_mux0000_7_1 : X_LUT4
    generic map(
      INIT => X"ABA8"
    )
    port map (
      ADR0 => COUNTER_RAM_USB(7),
      ADR1 => ERASEFLASH(0),
      ADR2 => N153,
      ADR3 => VGA_DRVR1_COUNTER_RAM(7),
      O => ADDR_7_OBUF_166
    );
  POS_MEMORY_NAT_mux0000_6_1 : X_LUT4
    generic map(
      INIT => X"ABA8"
    )
    port map (
      ADR0 => COUNTER_RAM_USB(6),
      ADR1 => ERASEFLASH(0),
      ADR2 => N153,
      ADR3 => VGA_DRVR1_COUNTER_RAM(6),
      O => ADDR_6_OBUF_165
    );
  POS_MEMORY_NAT_mux0000_5_1 : X_LUT4
    generic map(
      INIT => X"ABA8"
    )
    port map (
      ADR0 => COUNTER_RAM_USB(5),
      ADR1 => ERASEFLASH(0),
      ADR2 => N153,
      ADR3 => VGA_DRVR1_COUNTER_RAM(5),
      O => ADDR_5_OBUF_164
    );
  POS_MEMORY_NAT_mux0000_4_1 : X_LUT4
    generic map(
      INIT => X"ABA8"
    )
    port map (
      ADR0 => COUNTER_RAM_USB(4),
      ADR1 => ERASEFLASH(0),
      ADR2 => N153,
      ADR3 => VGA_DRVR1_COUNTER_RAM(4),
      O => ADDR_4_OBUF_163
    );
  POS_MEMORY_NAT_mux0000_3_1 : X_LUT4
    generic map(
      INIT => X"ABA8"
    )
    port map (
      ADR0 => COUNTER_RAM_USB(3),
      ADR1 => ERASEFLASH(0),
      ADR2 => N153,
      ADR3 => VGA_DRVR1_COUNTER_RAM(3),
      O => ADDR_3_OBUF_162
    );
  POS_MEMORY_NAT_mux0000_2_1 : X_LUT4
    generic map(
      INIT => X"ABA8"
    )
    port map (
      ADR0 => COUNTER_RAM_USB(2),
      ADR1 => ERASEFLASH(0),
      ADR2 => N153,
      ADR3 => VGA_DRVR1_COUNTER_RAM(2),
      O => ADDR_2_OBUF_161
    );
  POS_MEMORY_NAT_mux0000_1_1 : X_LUT4
    generic map(
      INIT => X"ABA8"
    )
    port map (
      ADR0 => COUNTER_RAM_USB(1),
      ADR1 => ERASEFLASH(0),
      ADR2 => N153,
      ADR3 => VGA_DRVR1_COUNTER_RAM(1),
      O => ADDR_1_OBUF_157
    );
  POS_MEMORY_NAT_mux0000_15_1 : X_LUT4
    generic map(
      INIT => X"ABA8"
    )
    port map (
      ADR0 => COUNTER_RAM_USB(15),
      ADR1 => ERASEFLASH(0),
      ADR2 => N153,
      ADR3 => VGA_DRVR1_COUNTER_RAM(15),
      O => ADDR_15_OBUF_152
    );
  POS_MEMORY_NAT_mux0000_14_1 : X_LUT4
    generic map(
      INIT => X"ABA8"
    )
    port map (
      ADR0 => COUNTER_RAM_USB(14),
      ADR1 => ERASEFLASH(0),
      ADR2 => N153,
      ADR3 => VGA_DRVR1_COUNTER_RAM(14),
      O => ADDR_14_OBUF_151
    );
  POS_MEMORY_NAT_mux0000_13_1 : X_LUT4
    generic map(
      INIT => X"ABA8"
    )
    port map (
      ADR0 => COUNTER_RAM_USB(13),
      ADR1 => ERASEFLASH(0),
      ADR2 => N153,
      ADR3 => VGA_DRVR1_COUNTER_RAM(13),
      O => ADDR_13_OBUF_150
    );
  POS_MEMORY_NAT_mux0000_12_1 : X_LUT4
    generic map(
      INIT => X"ABA8"
    )
    port map (
      ADR0 => COUNTER_RAM_USB(12),
      ADR1 => ERASEFLASH(0),
      ADR2 => N153,
      ADR3 => VGA_DRVR1_COUNTER_RAM(12),
      O => ADDR_12_OBUF_149
    );
  POS_MEMORY_NAT_mux0000_11_1 : X_LUT4
    generic map(
      INIT => X"ABA8"
    )
    port map (
      ADR0 => COUNTER_RAM_USB(11),
      ADR1 => ERASEFLASH(0),
      ADR2 => N153,
      ADR3 => VGA_DRVR1_COUNTER_RAM(11),
      O => ADDR_11_OBUF_148
    );
  POS_MEMORY_NAT_mux0000_10_1 : X_LUT4
    generic map(
      INIT => X"ABA8"
    )
    port map (
      ADR0 => COUNTER_RAM_USB(10),
      ADR1 => ERASEFLASH(0),
      ADR2 => N153,
      ADR3 => VGA_DRVR1_COUNTER_RAM(10),
      O => ADDR_10_OBUF_147
    );
  POS_MEMORY_NAT_mux0000_0_1 : X_LUT4
    generic map(
      INIT => X"ABA8"
    )
    port map (
      ADR0 => COUNTER_RAM_USB(0),
      ADR1 => ERASEFLASH(0),
      ADR2 => N153,
      ADR3 => VGA_DRVR1_COUNTER_RAM(0),
      O => ADDR_0_OBUF_146
    );
  POS_V_MEMORY_1_66 : X_LUT4
    generic map(
      INIT => X"2220"
    )
    port map (
      ADR0 => N54,
      ADR1 => POS_V_MEMORY(0),
      ADR2 => Mmux_varindex0000_5_f6_886,
      ADR3 => POS_H_MEMORY(8),
      O => POS_V_MEMORY_1_66_1597
    );
  POS_V_MEMORY_1_639_SW0 : X_LUT4
    generic map(
      INIT => X"D151"
    )
    port map (
      ADR0 => Q_varindex0000(0),
      ADR1 => Q_varindex0000(2),
      ADR2 => Q_varindex0000(4),
      ADR3 => POS_V_MEMORY(0),
      O => N516
    );
  POS_V_MEMORY_1_639 : X_LUT3
    generic map(
      INIT => X"1F"
    )
    port map (
      ADR0 => N516,
      ADR1 => Q_varindex0000(1),
      ADR2 => POS_V_MEMORY(1),
      O => POS_V_MEMORY_1_639_1595
    );
  POS_V_MEMORY_1_109 : X_LUT4
    generic map(
      INIT => X"C4CC"
    )
    port map (
      ADR0 => N135,
      ADR1 => POS_V_MEMORY(0),
      ADR2 => Q_varindex0000(1),
      ADR3 => Q_varindex0000(0),
      O => POS_V_MEMORY_1_109_1563
    );
  Mxor_COLOR_RED_Result_5_1 : X_LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      ADR0 => N1631,
      ADR1 => CHARBIT_ACT55_188,
      ADR2 => CHARBIT_ACT246_187,
      O => COLOR_RED(5)
    );
  Mxor_COLOR_GREEN_Result_5_1 : X_LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      ADR0 => N1691,
      ADR1 => CHARBIT_ACT55_188,
      ADR2 => CHARBIT_ACT246_187,
      O => COLOR_GREEN(5)
    );
  Mxor_COLOR_BLUE_Result_3_1 : X_LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      ADR0 => N1751,
      ADR1 => CHARBIT_ACT55_188,
      ADR2 => CHARBIT_ACT246_187,
      O => COLOR_BLUE(3)
    );
  Mrom_varindex0000_rom000064 : X_LUT4
    generic map(
      INIT => X"555D"
    )
    port map (
      ADR0 => N1011,
      ADR1 => Q_varindex0000(0),
      ADR2 => Q_varindex0000(1),
      ADR3 => Q_varindex0000(4),
      O => N76
    );
  Mrom_varindex0000_rom00001911 : X_LUT3
    generic map(
      INIT => X"56"
    )
    port map (
      ADR0 => Q_varindex0000(3),
      ADR1 => POS_H_MEMORY(8),
      ADR2 => Mmux_varindex0000_5_f6_886,
      O => N43
    );
  Mrom_varindex0000_rom0000150 : X_LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      ADR0 => Q_varindex0000(1),
      ADR1 => Q_varindex0000(3),
      ADR2 => Q_varindex0000(2),
      ADR3 => Q_varindex0000(4),
      O => Mrom_varindex0000_rom0000150_902
    );
  POS_V_MEMORY_1_3104 : X_LUT4
    generic map(
      INIT => X"0103"
    )
    port map (
      ADR0 => Q_varindex0000(0),
      ADR1 => N267,
      ADR2 => POS_V_MEMORY(0),
      ADR3 => N330,
      O => POS_V_MEMORY_1_3104_1577
    );
  POS_V_MEMORY_1_6512 : X_LUT4
    generic map(
      INIT => X"3332"
    )
    port map (
      ADR0 => Mmux_varindex0000_5_f6_886,
      ADR1 => N180,
      ADR2 => POS_H_MEMORY(8),
      ADR3 => Q_varindex0000(0),
      O => N169
    );
  Mrom_varindex0000_rom000039_SW1 : X_LUT4
    generic map(
      INIT => X"FFD5"
    )
    port map (
      ADR0 => Q_varindex0000(2),
      ADR1 => Q_varindex0000(0),
      ADR2 => Q_varindex0000(3),
      ADR3 => Q_varindex0000(4),
      O => N520
    );
  Mrom_varindex0000_rom000039 : X_LUT4
    generic map(
      INIT => X"FFAB"
    )
    port map (
      ADR0 => N121,
      ADR1 => Q_varindex0000(1),
      ADR2 => N520,
      ADR3 => N92,
      O => Mrom_varindex0000_rom000039_942
    );
  Mrom_varindex0000_rom000014_SW0 : X_LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      ADR0 => Q_varindex0000(1),
      ADR1 => Q_varindex0000(0),
      ADR2 => N83,
      O => N128
    );
  Mrom_varindex0000_rom00001320 : X_LUT4
    generic map(
      INIT => X"C040"
    )
    port map (
      ADR0 => Q_varindex0000(0),
      ADR1 => Q_varindex0000(4),
      ADR2 => N23,
      ADR3 => Q_varindex0000(1),
      O => Mrom_varindex0000_rom00001320_897
    );
  Mrom_varindex0000_rom00005421 : X_LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      ADR0 => Mmux_varindex0000_5_f6_886,
      ADR1 => Q_varindex0000(1),
      ADR2 => Q_varindex0000(4),
      ADR3 => POS_H_MEMORY(8),
      O => N95
    );
  Mrom_varindex0000_rom00003422 : X_LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      ADR0 => Q_varindex0000(2),
      ADR1 => Q_varindex0000(4),
      ADR2 => Q_varindex0000(3),
      ADR3 => Q_varindex0000(0),
      O => N112
    );
  Mrom_varindex0000_rom0000300 : X_LUT4
    generic map(
      INIT => X"FF01"
    )
    port map (
      ADR0 => Q_varindex0000(1),
      ADR1 => Q_varindex0000(0),
      ADR2 => Q_varindex0000(4),
      ADR3 => N95,
      O => Mrom_varindex0000_rom0000300_926
    );
  Mrom_varindex0000_rom00006011 : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => Q_varindex0000(0),
      ADR1 => POS_H_MEMORY(8),
      ADR2 => Mmux_varindex0000_5_f6_886,
      ADR3 => Q_varindex0000(4),
      O => N138
    );
  POS_V_MEMORY_1_550 : X_LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      ADR0 => Q_varindex0000(1),
      ADR1 => POS_H_MEMORY(8),
      ADR2 => Q_varindex0000(0),
      ADR3 => Mmux_varindex0000_5_f6_886,
      O => POS_V_MEMORY_1_550_1592
    );
  Mrom_varindex0000_rom00003556 : X_LUT4
    generic map(
      INIT => X"080A"
    )
    port map (
      ADR0 => Q_varindex0000(2),
      ADR1 => N165,
      ADR2 => Q_varindex0000(4),
      ADR3 => Q_varindex0000(3),
      O => Mrom_varindex0000_rom00003556_935
    );
  Mrom_varindex0000_rom00004721 : X_LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      ADR0 => POS_H_MEMORY(8),
      ADR1 => Mmux_varindex0000_5_f6_886,
      ADR2 => Q_varindex0000(3),
      O => Mrom_varindex0000_rom0000472
    );
  Mrom_varindex0000_rom0000213_SW0 : X_LUT4
    generic map(
      INIT => X"ABA8"
    )
    port map (
      ADR0 => Q_varindex0000(4),
      ADR1 => POS_H_MEMORY(8),
      ADR2 => Mmux_varindex0000_5_f6_886,
      ADR3 => Q_varindex0000(3),
      O => N1531
    );
  Mrom_varindex0000_rom0000213 : X_LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      ADR0 => Q_varindex0000(0),
      ADR1 => Q_varindex0000(1),
      ADR2 => N1531,
      ADR3 => N119,
      O => N52
    );
  Mmux_varindex00002324_SW0 : X_LUT3
    generic map(
      INIT => X"31"
    )
    port map (
      ADR0 => POSIM(4),
      ADR1 => POSIM(3),
      ADR2 => POSIM(2),
      O => N522
    );
  Mmux_varindex00002324 : X_LUT4
    generic map(
      INIT => X"F666"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_H(4),
      ADR1 => VGA_DRVR1_COUNTER_H(5),
      ADR2 => POSIM(1),
      ADR3 => N522,
      O => Mmux_varindex00002324_875
    );
  Mrom_varindex0000_rom00005532 : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => POS_H_MEMORY(8),
      ADR1 => Mmux_varindex0000_5_f6_886,
      ADR2 => Q_varindex0000(1),
      ADR3 => N175,
      O => N71
    );
  VGA_DRVR1_COLOR_5_16 : X_LUT4
    generic map(
      INIT => X"2888"
    )
    port map (
      ADR0 => VGA_DRVR1_F_10,
      ADR1 => N168,
      ADR2 => CHARBIT_ACT55_188,
      ADR3 => CHARBIT_ACT246_187,
      O => VGA_DRVR1_COLOR_5_16_1762
    );
  VGA_DRVR1_COLOR_5_33 : X_LUT4
    generic map(
      INIT => X"2888"
    )
    port map (
      ADR0 => VGA_DRVR1_F_8_TO_9,
      ADR1 => N167,
      ADR2 => CHARBIT_ACT55_188,
      ADR3 => CHARBIT_ACT246_187,
      O => VGA_DRVR1_COLOR_5_33_1763
    );
  VGA_DRVR1_COLOR_5_77 : X_LUT4
    generic map(
      INIT => X"2888"
    )
    port map (
      ADR0 => VGA_DRVR1_N1,
      ADR1 => N1651,
      ADR2 => CHARBIT_ACT55_188,
      ADR3 => CHARBIT_ACT246_187,
      O => VGA_DRVR1_COLOR_5_77_1764
    );
  VGA_DRVR1_COLOR_2_16 : X_LUT4
    generic map(
      INIT => X"2888"
    )
    port map (
      ADR0 => VGA_DRVR1_F_10,
      ADR1 => N1741,
      ADR2 => CHARBIT_ACT55_188,
      ADR3 => CHARBIT_ACT246_187,
      O => VGA_DRVR1_COLOR_2_16_1756
    );
  VGA_DRVR1_COLOR_2_33 : X_LUT4
    generic map(
      INIT => X"2888"
    )
    port map (
      ADR0 => VGA_DRVR1_F_8_TO_9,
      ADR1 => N1731,
      ADR2 => CHARBIT_ACT55_188,
      ADR3 => CHARBIT_ACT246_187,
      O => VGA_DRVR1_COLOR_2_33_1757
    );
  VGA_DRVR1_COLOR_2_77 : X_LUT4
    generic map(
      INIT => X"2888"
    )
    port map (
      ADR0 => VGA_DRVR1_N1,
      ADR1 => N171,
      ADR2 => CHARBIT_ACT55_188,
      ADR3 => CHARBIT_ACT246_187,
      O => VGA_DRVR1_COLOR_2_77_1758
    );
  CHARBIT_ACT76 : X_LUT4
    generic map(
      INIT => X"57FF"
    )
    port map (
      ADR0 => Q_varindex0000(4),
      ADR1 => Mmux_varindex0000_5_f6_886,
      ADR2 => POS_H_MEMORY(8),
      ADR3 => Q_varindex0000(0),
      O => CHARBIT_ACT76_191
    );
  VGA_DRVR1_COUNTER_RAM_or000014_SW0 : X_LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_RAM_or00006_1829,
      ADR1 => VGA_DRVR1_COUNTER_V(7),
      ADR2 => VGA_DRVR1_COUNTER_V(8),
      ADR3 => VGA_DRVR1_COUNTER_V(9),
      O => N524
    );
  Mmux_varindex00001385 : X_LUT4
    generic map(
      INIT => X"D080"
    )
    port map (
      ADR0 => POS_H_MEMORY(6),
      ADR1 => N474,
      ADR2 => POS_H_MEMORY(7),
      ADR3 => Mmux_varindex00001346_868,
      O => Mmux_varindex00001385_869
    );
  Mmux_CHARBIT_165 : X_LUT4
    generic map(
      INIT => X"010B"
    )
    port map (
      ADR0 => Q_varindex0000(0),
      ADR1 => N137,
      ADR2 => Mrom_varindex0000_rom00004576_947,
      ADR3 => N472,
      O => Mmux_CHARBIT_16
    );
  Mmux_CHARBIT_13 : X_LUT4
    generic map(
      INIT => X"FF23"
    )
    port map (
      ADR0 => Q_varindex0000(3),
      ADR1 => N434,
      ADR2 => N42,
      ADR3 => POS_V_MEMORY(0),
      O => Mmux_CHARBIT_13_806
    );
  VGA_DRVR1_COUNTER_RAM_or0000_inv1 : X_LUT4
    generic map(
      INIT => X"0103"
    )
    port map (
      ADR0 => VGA_DRVR1_N2,
      ADR1 => N716,
      ADR2 => VGA_DRVR1_COUNTER_RAM_or000048_1828,
      ADR3 => VGA_DRVR1_COUNTER_RAM_or000028,
      O => VGA_DRVR1_COUNTER_RAM_or0000_inv
    );
  Madd_IMPOS_22_16_add0001_cy_3_11 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => IMPOS(19),
      ADR1 => IMPOS(18),
      ADR2 => IMPOS(17),
      ADR3 => IMPOS(16),
      O => Madd_IMPOS_22_16_add0001_cy(3)
    );
  IMPOS_21_mux000444 : X_LUT4
    generic map(
      INIT => X"AAA9"
    )
    port map (
      ADR0 => IMPOS(21),
      ADR1 => IMPOS(20),
      ADR2 => IMPOS(19),
      ADR3 => IMPOS(18),
      O => IMPOS_21_mux000444_483
    );
  POSIM_not000111 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => USBDRIVER_ABORTEDSN(0),
      ADR1 => ERASEFLASH(0),
      ADR2 => ERASEFLASH_SIGNAL(0),
      O => N152
    );
  WORDDATA_TEMP_mux0000_10_3 : X_LUT4
    generic map(
      INIT => X"0302"
    )
    port map (
      ADR0 => CNTPROCCES(3),
      ADR1 => ERASE_RAM(0),
      ADR2 => LOADFLASH(0),
      ADR3 => N441,
      O => N134
    );
  IMPOS_20_mux0004102_SW1_F : X_LUT4
    generic map(
      INIT => X"ABAA"
    )
    port map (
      ADR0 => IMPOS(20),
      ADR1 => IMPOS(19),
      ADR2 => IMPOS(18),
      ADR3 => N186,
      O => N376
    );
  DELAYFLASH_not00011 : X_LUT4
    generic map(
      INIT => X"5F4E"
    )
    port map (
      ADR0 => ERASE_RAM(0),
      ADR1 => IMPOS_19_or0003,
      ADR2 => PICTUREOK(0),
      ADR3 => LOADFLASH(0),
      O => DELAYFLASH_not0001
    );
  IMPOS_20_mux0004102_SW0_F : X_LUT4
    generic map(
      INIT => X"A900"
    )
    port map (
      ADR0 => IMPOS(20),
      ADR1 => IMPOS(19),
      ADR2 => IMPOS(18),
      ADR3 => N186,
      O => N374
    );
  Mrom_varindex0000_rom00005017_SW0 : X_LUT4
    generic map(
      INIT => X"0383"
    )
    port map (
      ADR0 => Q_varindex0000(4),
      ADR1 => Q_varindex0000(0),
      ADR2 => Q_varindex0000(2),
      ADR3 => Q_varindex0000(1),
      O => N530
    );
  Mrom_varindex0000_rom00005017 : X_LUT4
    generic map(
      INIT => X"FF2E"
    )
    port map (
      ADR0 => N530,
      ADR1 => Q_varindex0000(3),
      ADR2 => Q_varindex0000(1),
      ADR3 => N95,
      O => Mrom_varindex0000_rom00005017_955
    );
  Mrom_varindex0000_rom0000340_SW0 : X_LUT4
    generic map(
      INIT => X"FF2F"
    )
    port map (
      ADR0 => N532,
      ADR1 => Q_varindex0000(3),
      ADR2 => N98,
      ADR3 => N157,
      O => N428
    );
  Mmux_CHARBIT_142_SW0 : X_LUT4
    generic map(
      INIT => X"65E5"
    )
    port map (
      ADR0 => Q_varindex0000(1),
      ADR1 => Q_varindex0000(4),
      ADR2 => Q_varindex0000(0),
      ADR3 => Q_varindex0000(3),
      O => N534
    );
  Mmux_CHARBIT_142 : X_LUT4
    generic map(
      INIT => X"FF20"
    )
    port map (
      ADR0 => N1011,
      ADR1 => Mrom_varindex0000_rom000069_962,
      ADR2 => N534,
      ADR3 => POS_V_MEMORY(0),
      O => Mmux_CHARBIT_142_815
    );
  Mrom_varindex0000_rom000054_SW0 : X_LUT4
    generic map(
      INIT => X"DFFD"
    )
    port map (
      ADR0 => N23,
      ADR1 => N504,
      ADR2 => Q_varindex0000(0),
      ADR3 => N78,
      O => N1241
    );
  Mrom_varindex0000_rom00002732 : X_LUT4
    generic map(
      INIT => X"FFB1"
    )
    port map (
      ADR0 => Q_varindex0000(3),
      ADR1 => N78,
      ADR2 => N540,
      ADR3 => Mrom_varindex0000_rom00002730_918,
      O => Mrom_varindex0000_rom000027
    );
  POS_V_MEMORY_1_423_SW0 : X_LUT4
    generic map(
      INIT => X"555B"
    )
    port map (
      ADR0 => Q_varindex0000(4),
      ADR1 => Q_varindex0000(0),
      ADR2 => POS_H_MEMORY(8),
      ADR3 => Mmux_varindex0000_5_f6_886,
      O => N436
    );
  Mmux_varindex00002310 : X_LUT4
    generic map(
      INIT => X"E3EB"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_H(4),
      ADR1 => VGA_DRVR1_COUNTER_H(5),
      ADR2 => VGA_DRVR1_COUNTER_H(6),
      ADR3 => PICTUREOK(0),
      O => Mmux_varindex00002310_870
    );
  Mmux_varindex00001346 : X_LUT4
    generic map(
      INIT => X"2A73"
    )
    port map (
      ADR0 => NORM_NEGA(0),
      ADR1 => VGA_DRVR1_COUNTER_H(5),
      ADR2 => VGA_DRVR1_COUNTER_H(4),
      ADR3 => VGA_DRVR1_COUNTER_H(3),
      O => Mmux_varindex00001346_868
    );
  Mrom_varindex0000_rom00005549 : X_LUT4
    generic map(
      INIT => X"0302"
    )
    port map (
      ADR0 => Q_varindex0000(0),
      ADR1 => N78,
      ADR2 => Q_varindex0000(3),
      ADR3 => Q_varindex0000(1),
      O => Mrom_varindex0000_rom00005549_961
    );
  Mrom_varindex0000_rom00002628 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => N137,
      ADR1 => N44,
      ADR2 => N84,
      ADR3 => N552,
      O => Mrom_varindex0000_rom000026
    );
  POS_V_MEMORY_1_4103 : X_LUT4
    generic map(
      INIT => X"F7F6"
    )
    port map (
      ADR0 => Q_varindex0000(0),
      ADR1 => Q_varindex0000(3),
      ADR2 => Q_varindex0000(4),
      ADR3 => Q_varindex0000(1),
      O => POS_V_MEMORY_1_4103_1584
    );
  Mrom_varindex0000_rom000025_SW1 : X_LUT4
    generic map(
      INIT => X"888A"
    )
    port map (
      ADR0 => Q_varindex0000(3),
      ADR1 => Q_varindex0000(0),
      ADR2 => Q_varindex0000(2),
      ADR3 => Q_varindex0000(4),
      O => N498
    );
  Mrom_varindex0000_rom0000543_SW1 : X_LUT4
    generic map(
      INIT => X"BB20"
    )
    port map (
      ADR0 => Q_varindex0000(4),
      ADR1 => Q_varindex0000(1),
      ADR2 => Q_varindex0000(2),
      ADR3 => Q_varindex0000(3),
      O => N504
    );
  Mrom_varindex0000_rom00004734 : X_LUT4
    generic map(
      INIT => X"0B01"
    )
    port map (
      ADR0 => Q_varindex0000(0),
      ADR1 => N180,
      ADR2 => Q_varindex0000(4),
      ADR3 => N137,
      O => Mrom_varindex0000_rom00004734_951
    );
  Mrom_varindex0000_rom00004126 : X_LUT4
    generic map(
      INIT => X"2220"
    )
    port map (
      ADR0 => Q_varindex0000(0),
      ADR1 => Q_varindex0000(4),
      ADR2 => Q_varindex0000(2),
      ADR3 => Q_varindex0000(1),
      O => Mrom_varindex0000_rom00004126_944
    );
  KBRD_DRIVER_KEY_UP_0_mux000021 : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => KBRD_DRIVER_COUNTER_KB(2),
      ADR1 => KBRD_DRIVER_COUNTER_KB(1),
      ADR2 => KBRD_DRIVER_COUNTER_KB(3),
      ADR3 => KBRD_DRIVER_COUNTER_KB(0),
      O => KBRD_DRIVER_N8
    );
  POS_MEMORY_NAT_or00001 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => ERASEFLASH(0),
      ADR1 => PLUS_MEMORY(0),
      ADR2 => LOADFLASH(0),
      ADR3 => ERASE_RAM(0),
      O => POS_MEMORY_NAT_or0000
    );
  POS_V_MEMORY_1_691 : X_LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      ADR0 => POS_H_MEMORY(8),
      ADR1 => Q_varindex0000(4),
      ADR2 => Mmux_varindex0000_5_f6_886,
      O => POS_V_MEMORY_1_691_1598
    );
  VGA_DRVR1_Msub_POS_X_xor_7_11 : X_LUT4
    generic map(
      INIT => X"5556"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_H(7),
      ADR1 => VGA_DRVR1_COUNTER_H(5),
      ADR2 => VGA_DRVR1_COUNTER_H(4),
      ADR3 => VGA_DRVR1_COUNTER_H(6),
      O => POS_H_MEMORY(7)
    );
  POS_V_MEMORY_1_643 : X_LUT4
    generic map(
      INIT => X"FF1F"
    )
    port map (
      ADR0 => POS_H_MEMORY(8),
      ADR1 => Mmux_varindex0000_5_f6_886,
      ADR2 => Q_varindex0000(0),
      ADR3 => Q_varindex0000(1),
      O => N151
    );
  Mrom_varindex0000_rom00006321 : X_LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      ADR0 => Q_varindex0000(0),
      ADR1 => Q_varindex0000(4),
      ADR2 => Q_varindex0000(3),
      ADR3 => Q_varindex0000(2),
      O => N92
    );
  Mrom_varindex0000_rom00005031 : X_LUT3
    generic map(
      INIT => X"32"
    )
    port map (
      ADR0 => Mmux_varindex0000_5_f6_886,
      ADR1 => Q_varindex0000(0),
      ADR2 => POS_H_MEMORY(8),
      O => N309
    );
  Mrom_varindex0000_rom00003412 : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => Q_varindex0000(0),
      ADR1 => Q_varindex0000(1),
      ADR2 => Q_varindex0000(3),
      ADR3 => Q_varindex0000(4),
      O => N80
    );
  Mrom_varindex0000_rom00002717 : X_LUT4
    generic map(
      INIT => X"0302"
    )
    port map (
      ADR0 => POS_H_MEMORY(8),
      ADR1 => Q_varindex0000(0),
      ADR2 => Q_varindex0000(1),
      ADR3 => Mmux_varindex0000_5_f6_886,
      O => N157
    );
  Mrom_varindex0000_rom000021156 : X_LUT4
    generic map(
      INIT => X"2220"
    )
    port map (
      ADR0 => Q_varindex0000(1),
      ADR1 => Q_varindex0000(0),
      ADR2 => Mmux_varindex0000_5_f6_886,
      ADR3 => POS_H_MEMORY(8),
      O => N248
    );
  Mrom_varindex0000_rom00004711 : X_LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      ADR0 => Q_varindex0000(0),
      ADR1 => Q_varindex0000(4),
      ADR2 => Q_varindex0000(3),
      ADR3 => Q_varindex0000(1),
      O => N44
    );
  CHARBIT_ACT142_SW0 : X_LUT4
    generic map(
      INIT => X"5557"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_H(7),
      ADR1 => VGA_DRVR1_COUNTER_H(5),
      ADR2 => VGA_DRVR1_COUNTER_H(4),
      ADR3 => VGA_DRVR1_COUNTER_H(6),
      O => N416
    );
  Mrom_varindex0000_rom000069 : X_LUT4
    generic map(
      INIT => X"0306"
    )
    port map (
      ADR0 => Mmux_varindex0000_5_f6_886,
      ADR1 => Q_varindex0000(3),
      ADR2 => Q_varindex0000(4),
      ADR3 => POS_H_MEMORY(8),
      O => Mrom_varindex0000_rom000069_962
    );
  Mrom_varindex0000_rom0000251_SW0 : X_LUT4
    generic map(
      INIT => X"5654"
    )
    port map (
      ADR0 => Q_varindex0000(0),
      ADR1 => POS_H_MEMORY(8),
      ADR2 => Mmux_varindex0000_5_f6_886,
      ADR3 => Q_varindex0000(4),
      O => N126
    );
  Mrom_varindex0000_rom0000321 : X_LUT4
    generic map(
      INIT => X"FF56"
    )
    port map (
      ADR0 => Q_varindex0000(1),
      ADR1 => POS_H_MEMORY(8),
      ADR2 => Mmux_varindex0000_5_f6_886,
      ADR3 => Q_varindex0000(4),
      O => N98
    );
  Mrom_varindex0000_rom0000558_SW1 : X_LUT4
    generic map(
      INIT => X"0437"
    )
    port map (
      ADR0 => Mmux_varindex0000_5_f6_886,
      ADR1 => Q_varindex0000(4),
      ADR2 => POS_H_MEMORY(8),
      ADR3 => Q_varindex0000(3),
      O => N482
    );
  Mrom_varindex0000_rom00002935_SW0 : X_LUT4
    generic map(
      INIT => X"A222"
    )
    port map (
      ADR0 => Q_varindex0000(4),
      ADR1 => Q_varindex0000(3),
      ADR2 => Q_varindex0000(0),
      ADR3 => Q_varindex0000(1),
      O => N502
    );
  Mrom_varindex0000_rom00002935_SW1 : X_LUT4
    generic map(
      INIT => X"A8AB"
    )
    port map (
      ADR0 => N177,
      ADR1 => Mmux_varindex0000_5_f6_886,
      ADR2 => POS_H_MEMORY(8),
      ADR3 => N502,
      O => N556
    );
  Mrom_varindex0000_rom00002935 : X_LUT3
    generic map(
      INIT => X"1F"
    )
    port map (
      ADR0 => Q_varindex0000(4),
      ADR1 => N500,
      ADR2 => N556,
      O => Mrom_varindex0000_rom000029
    );
  Mrom_varindex0000_rom00003414_SW1 : X_LUT4
    generic map(
      INIT => X"FF1B"
    )
    port map (
      ADR0 => Q_varindex0000(1),
      ADR1 => Q_varindex0000(3),
      ADR2 => Q_varindex0000(0),
      ADR3 => Q_varindex0000(4),
      O => N558
    );
  Mrom_varindex0000_rom00003436 : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => Q_varindex0000(1),
      ADR1 => Q_varindex0000(3),
      ADR2 => Q_varindex0000(4),
      ADR3 => Q_varindex0000(2),
      O => N119
    );
  Mmux_varindex000023221 : X_LUT4
    generic map(
      INIT => X"E68C"
    )
    port map (
      ADR0 => NORM_NEGA(0),
      ADR1 => VGA_DRVR1_COUNTER_H(4),
      ADR2 => VGA_DRVR1_COUNTER_H(3),
      ADR3 => VGA_DRVR1_COUNTER_H(5),
      O => Mmux_varindex000023221_874
    );
  Mrom_varindex0000_rom00003848_SW1 : X_LUT4
    generic map(
      INIT => X"AA83"
    )
    port map (
      ADR0 => Q_varindex0000(3),
      ADR1 => Q_varindex0000(1),
      ADR2 => Q_varindex0000(4),
      ADR3 => Q_varindex0000(0),
      O => N560
    );
  Mrom_varindex0000_rom00003848 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => N550,
      ADR1 => N95,
      ADR2 => N560,
      O => Mrom_varindex0000_rom000038
    );
  Mrom_varindex0000_rom00003445_SW0 : X_LUT4
    generic map(
      INIT => X"A8AB"
    )
    port map (
      ADR0 => N510,
      ADR1 => Mmux_varindex0000_5_f6_886,
      ADR2 => POS_H_MEMORY(8),
      ADR3 => N558,
      O => N562
    );
  Mrom_varindex0000_rom00003445 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => N112,
      ADR1 => N119,
      ADR2 => N80,
      ADR3 => N562,
      O => Mrom_varindex0000_rom000034
    );
  CHARBIT_ACT106_SW1 : X_LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_H(7),
      ADR1 => VGA_DRVR1_COUNTER_H(3),
      ADR2 => VGA_DRVR1_COUNTER_H(8),
      O => N570
    );
  CHARBIT_ACT106 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_H(4),
      ADR1 => VGA_DRVR1_COUNTER_H(5),
      ADR2 => VGA_DRVR1_COUNTER_H(6),
      ADR3 => N570,
      O => CHARBIT_ACT106_180
    );
  Mrom_varindex0000_rom00002732_SW0 : X_LUT4
    generic map(
      INIT => X"4D4F"
    )
    port map (
      ADR0 => Q_varindex0000(0),
      ADR1 => Q_varindex0000(4),
      ADR2 => Q_varindex0000(1),
      ADR3 => Q_varindex0000(2),
      O => N540
    );
  Mrom_varindex0000_rom00003848_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"FF32"
    )
    port map (
      ADR0 => Mmux_varindex0000_5_f6_886,
      ADR1 => Q_varindex0000(4),
      ADR2 => POS_H_MEMORY(8),
      ADR3 => Q_varindex0000(0),
      O => N574
    );
  Mrom_varindex0000_rom00003848_SW0 : X_LUT4
    generic map(
      INIT => X"2677"
    )
    port map (
      ADR0 => Q_varindex0000(3),
      ADR1 => Q_varindex0000(2),
      ADR2 => Q_varindex0000(1),
      ADR3 => N574,
      O => N550
    );
  Mrom_varindex0000_rom0000280 : X_LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      ADR0 => POS_H_MEMORY(8),
      ADR1 => Q_varindex0000(1),
      ADR2 => Mmux_varindex0000_5_f6_886,
      O => Mrom_varindex0000_rom0000280_920
    );
  Mrom_varindex0000_rom000021122 : X_LUT4
    generic map(
      INIT => X"0302"
    )
    port map (
      ADR0 => Mmux_varindex0000_5_f6_886,
      ADR1 => Q_varindex0000(3),
      ADR2 => Q_varindex0000(4),
      ADR3 => POS_H_MEMORY(8),
      O => N135
    );
  Mrom_varindex0000_rom00007111 : X_LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      ADR0 => Q_varindex0000(1),
      ADR1 => Q_varindex0000(3),
      ADR2 => Q_varindex0000(2),
      O => N150
    );
  Mrom_varindex0000_rom000041221 : X_LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      ADR0 => Q_varindex0000(0),
      ADR1 => Q_varindex0000(2),
      ADR2 => Q_varindex0000(4),
      O => N161
    );
  Mrom_varindex0000_rom00001947 : X_LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      ADR0 => Q_varindex0000(1),
      ADR1 => Q_varindex0000(2),
      ADR2 => Q_varindex0000(3),
      O => N137
    );
  CHARBIT_ACT260 : X_LUT4
    generic map(
      INIT => X"8A02"
    )
    port map (
      ADR0 => CHARBIT_ACT246_187,
      ADR1 => VGA_DRVR1_COUNTER_H(2),
      ADR2 => Mmux_CHARBIT_5_f7_850,
      ADR3 => N420,
      O => CHARBIT_ACT
    );
  Mrom_varindex0000_rom000041228_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"F9FF"
    )
    port map (
      ADR0 => Q_varindex0000(0),
      ADR1 => Q_varindex0000(3),
      ADR2 => POS_H_MEMORY(8),
      ADR3 => Q_varindex0000(4),
      O => N576
    );
  Mrom_varindex0000_rom000041228_SW0 : X_LUT4
    generic map(
      INIT => X"AB01"
    )
    port map (
      ADR0 => Q_varindex0000(1),
      ADR1 => Mmux_varindex0000_5_f6_886,
      ADR2 => N576,
      ADR3 => N161,
      O => N432
    );
  Mrom_varindex0000_rom00001811 : X_LUT4
    generic map(
      INIT => X"ABA9"
    )
    port map (
      ADR0 => Q_varindex0000(1),
      ADR1 => POS_H_MEMORY(8),
      ADR2 => Mmux_varindex0000_5_f6_886,
      ADR3 => Q_varindex0000(3),
      O => N25
    );
  Mrom_varindex0000_rom0000543 : X_LUT4
    generic map(
      INIT => X"FF20"
    )
    port map (
      ADR0 => Q_varindex0000(2),
      ADR1 => Q_varindex0000(4),
      ADR2 => Q_varindex0000(0),
      ADR3 => N504,
      O => N108
    );
  Mrom_varindex0000_rom00005831 : X_LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      ADR0 => POS_H_MEMORY(8),
      ADR1 => Q_varindex0000(3),
      ADR2 => Q_varindex0000(4),
      ADR3 => Mmux_varindex0000_5_f6_886,
      O => N330
    );
  Mrom_varindex0000_rom0000340_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"B999"
    )
    port map (
      ADR0 => Q_varindex0000(4),
      ADR1 => Q_varindex0000(2),
      ADR2 => Q_varindex0000(1),
      ADR3 => Q_varindex0000(0),
      O => N532
    );
  Mrom_varindex0000_rom000019310 : X_LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      ADR0 => Q_varindex0000(3),
      ADR1 => Q_varindex0000(4),
      ADR2 => Q_varindex0000(1),
      ADR3 => Q_varindex0000(0),
      O => N93
    );
  Mrom_varindex0000_rom00003570_SW0 : X_LUT4
    generic map(
      INIT => X"429A"
    )
    port map (
      ADR0 => Q_varindex0000(1),
      ADR1 => Q_varindex0000(4),
      ADR2 => Q_varindex0000(3),
      ADR3 => Q_varindex0000(0),
      O => N578
    );
  Mrom_varindex0000_rom00003570 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => Mrom_varindex0000_rom00003548_934,
      ADR1 => Mrom_varindex0000_rom00003556_935,
      ADR2 => N578,
      O => Mrom_varindex0000_rom000035
    );
  POS_V_MEMORY_1_658 : X_LUT4
    generic map(
      INIT => X"82A2"
    )
    port map (
      ADR0 => Q_varindex0000(1),
      ADR1 => Q_varindex0000(4),
      ADR2 => Q_varindex0000(2),
      ADR3 => Q_varindex0000(0),
      O => POS_V_MEMORY_1_658_1596
    );
  Mrom_varindex0000_rom00003021 : X_LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      ADR0 => Q_varindex0000(3),
      ADR1 => N175,
      ADR2 => Q_varindex0000(2),
      ADR3 => Q_varindex0000(1),
      O => N64
    );
  POS_H_MEMORY_8_1 : X_LUT4
    generic map(
      INIT => X"060A"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_H(8),
      ADR1 => VGA_DRVR1_Msub_POS_X_cy(6),
      ADR2 => Mmux_varindex0000_5_f6_886,
      ADR3 => VGA_DRVR1_COUNTER_H(7),
      O => Q_varindex0000(2)
    );
  Mmux_CHARBIT_201_SW1 : X_LUT4
    generic map(
      INIT => X"F7FF"
    )
    port map (
      ADR0 => Q_varindex0000(0),
      ADR1 => Q_varindex0000(1),
      ADR2 => POS_H_MEMORY(8),
      ADR3 => Q_varindex0000(3),
      O => N580
    );
  Mmux_CHARBIT_201 : X_LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      ADR0 => N564,
      ADR1 => Mmux_varindex0000_5_f6_886,
      ADR2 => POS_V_MEMORY(0),
      ADR3 => N580,
      O => Mmux_CHARBIT_201_849
    );
  CLK50M_IBUFG_BUFG : X_CKBUF
    port map (
      I => CLK50M_IBUFG1,
      O => CLK50M_IBUFG_193
    );
  VGA_DRVR1_CNT200M_2_BUFG : X_CKBUF
    port map (
      I => VGA_DRVR1_CNT200M_21,
      O => VGA_DRVR1_CNT200M(2)
    );
  Madd_DELAYFLASH_add0000_lut_0_INV_0 : X_INV
    port map (
      I => DELAYFLASH(0),
      O => Madd_DELAYFLASH_add0000_lut(0)
    );
  Madd_COUNTER_RAM_USB_add0000_lut_0_INV_0 : X_INV
    port map (
      I => COUNTER_RAM_USB(0),
      O => Madd_COUNTER_RAM_USB_add0000_lut(0)
    );
  Mcount_CNTDPL_lut_0_INV_0 : X_INV
    port map (
      I => CNTDPL(0),
      O => Mcount_CNTDPL_lut(0)
    );
  VGA_DRVR1_Mcount_COUNTER_RAM_lut_0_INV_0 : X_INV
    port map (
      I => VGA_DRVR1_COUNTER_RAM(0),
      O => VGA_DRVR1_Mcount_COUNTER_RAM_lut(0)
    );
  VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_lut_0_INV_0 : X_INV
    port map (
      I => VGA_DRVR1_COUNTER_V(0),
      O => VGA_DRVR1_Madd_COUNTER_V_CUR_addsub0000_lut(0)
    );
  VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_lut_0_INV_0 : X_INV
    port map (
      I => VGA_DRVR1_COUNTER_H(0),
      O => VGA_DRVR1_Madd_COUNTER_H_CUR_addsub0000_lut(0)
    );
  VGA_DRVR1_Msub_POS_Y_lut_8_INV_0 : X_INV
    port map (
      I => VGA_DRVR1_COUNTER_V(8),
      O => VGA_DRVR1_Msub_POS_Y_lut(8)
    );
  VGA_DRVR1_Msub_POS_Y_lut_7_INV_0 : X_INV
    port map (
      I => VGA_DRVR1_COUNTER_V(7),
      O => VGA_DRVR1_Msub_POS_Y_lut(7)
    );
  VGA_DRVR1_Msub_POS_Y_lut_6_INV_0 : X_INV
    port map (
      I => VGA_DRVR1_COUNTER_V(6),
      O => VGA_DRVR1_Msub_POS_Y_lut(6)
    );
  VGA_DRVR1_Msub_POS_Y_lut_5_INV_0 : X_INV
    port map (
      I => VGA_DRVR1_COUNTER_V(5),
      O => VGA_DRVR1_Msub_POS_Y_lut(5)
    );
  VGA_DRVR1_CLK25M1_INV_0 : X_INV
    port map (
      I => VGA_DRVR1_CNT200M(2),
      O => VGA_DRVR1_CLK25M
    );
  DPL_ENABLE_3_1_INV_0 : X_INV
    port map (
      I => MNGDPL(3),
      O => DPL_ENABLE_3_OBUF_388
    );
  DPL_ENABLE_2_1_INV_0 : X_INV
    port map (
      I => MNGDPL(2),
      O => DPL_ENABLE_2_OBUF_387
    );
  DPL_ENABLE_1_1_INV_0 : X_INV
    port map (
      I => MNGDPL(1),
      O => DPL_ENABLE_1_OBUF_386
    );
  SHOWINFO_0_not00031_INV_0 : X_INV
    port map (
      I => SHOWINFO(0),
      O => SHOWINFO_0_not0003
    );
  Mcount_NPASOS_SAVE_xor_0_11_INV_0 : X_INV
    port map (
      I => NPASOS_SAVE(0),
      O => Result(0)
    );
  Mcount_CNTPROCCES_xor_0_11_INV_0 : X_INV
    port map (
      I => CNTPROCCES(0),
      O => Mcount_CNTPROCCES
    );
  DPL_ENABLE_0_1_INV_0 : X_INV
    port map (
      I => MNGDPL(0),
      O => DPL_ENABLE_0_OBUF_385
    );
  ERASE_RAM_inv1_INV_0 : X_INV
    port map (
      I => ERASE_RAM(0),
      O => ERASE_RAM_inv
    );
  MNGLETTER_17_2_1_INV_0 : X_INV
    port map (
      I => NORM_NEGA(0),
      O => MNGLETTER(17, 2)
    );
  Mmux_varindex0000_9_INV_0 : X_INV
    port map (
      I => VGA_DRVR1_COUNTER_H(5),
      O => Mmux_varindex0000_9
    );
  IM_16_8_BITS_0_mux000091 : X_MUX2
    port map (
      IA => DPL_SEG_0_OBUF_396,
      IB => N583,
      SEL => IM_16_8_BITS_0_and0004,
      O => IM_16_8_BITS_0_mux000091_518
    );
  IM_16_8_BITS_0_mux000091_G : X_LUT4
    generic map(
      INIT => X"EFE7"
    )
    port map (
      ADR0 => KBRD_DRIVER_KBRD_DATA(6),
      ADR1 => KBRD_DRIVER_KBRD_DATA(3),
      ADR2 => KBRD_DRIVER_KBRD_DATA(4),
      ADR3 => N174,
      O => N583
    );
  Mmux_CHARBIT_164 : X_MUX2
    port map (
      IA => N584,
      IB => N585,
      SEL => POS_V_MEMORY(0),
      O => Mmux_CHARBIT_164_834
    );
  Mmux_CHARBIT_164_F : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => N93,
      ADR1 => Mrom_varindex0000_rom00001914_905,
      ADR2 => Mrom_varindex0000_rom00001934_906,
      ADR3 => Mrom_varindex0000_rom00001942_907,
      O => N584
    );
  Mmux_CHARBIT_164_G : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => N70,
      ADR1 => Mrom_varindex0000_rom000011101_893,
      ADR2 => N93,
      ADR3 => Mrom_varindex0000_rom000011128,
      O => N585
    );
  Mmux_CHARBIT_154 : X_MUX2
    port map (
      IA => N586,
      IB => N587,
      SEL => POS_V_MEMORY(0),
      O => Mmux_CHARBIT_154_827
    );
  Mmux_CHARBIT_154_F : X_LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      ADR0 => N55,
      ADR1 => N70,
      ADR2 => N330,
      O => N586
    );
  Mmux_CHARBIT_154_G : X_LUT4
    generic map(
      INIT => X"3332"
    )
    port map (
      ADR0 => Q_varindex0000(0),
      ADR1 => N55,
      ADR2 => Q_varindex0000(4),
      ADR3 => Q_varindex0000(3),
      O => N587
    );
  Mmux_CHARBIT_143 : X_MUX2
    port map (
      IA => N588,
      IB => N589,
      SEL => POS_V_MEMORY(0),
      O => Mmux_CHARBIT_143_816
    );
  Mmux_CHARBIT_143_F : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => N93,
      ADR1 => N340,
      ADR2 => N44,
      ADR3 => N1081,
      O => N588
    );
  Mmux_CHARBIT_143_G : X_LUT4
    generic map(
      INIT => X"010B"
    )
    port map (
      ADR0 => Q_varindex0000(0),
      ADR1 => Mrom_varindex0000_rom000015112_903,
      ADR2 => Mrom_varindex0000_rom0000150_902,
      ADR3 => Mrom_varindex0000_rom00001553_904,
      O => N589
    );
  Mmux_CHARBIT_132 : X_MUX2
    port map (
      IA => N590,
      IB => N591,
      SEL => POS_V_MEMORY(0),
      O => Mmux_CHARBIT_132_808
    );
  Mmux_CHARBIT_132_F : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => N95,
      ADR1 => N150,
      ADR2 => N309,
      ADR3 => N1121,
      O => N590
    );
  Mmux_CHARBIT_132_G : X_LUT4
    generic map(
      INIT => X"010B"
    )
    port map (
      ADR0 => Q_varindex0000(2),
      ADR1 => N128,
      ADR2 => N119,
      ADR3 => N129,
      O => N591
    );
  Mmux_CHARBIT_131 : X_MUX2
    port map (
      IA => N592,
      IB => N593,
      SEL => POS_V_MEMORY(0),
      O => Mmux_CHARBIT_131_807
    );
  Mmux_CHARBIT_131_F : X_LUT4
    generic map(
      INIT => X"0103"
    )
    port map (
      ADR0 => Q_varindex0000(3),
      ADR1 => N248,
      ADR2 => Mrom_varindex0000_rom000021118_909,
      ADR3 => Mrom_varindex0000_rom000021145_910,
      O => N592
    );
  Mmux_CHARBIT_131_G : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => Mrom_varindex0000_rom00001314_896,
      ADR1 => Mrom_varindex0000_rom00001320_897,
      ADR2 => Mrom_varindex0000_rom00001340_898,
      ADR3 => Mrom_varindex0000_rom00001355_899,
      O => N593
    );
  POS_V_MEMORY_1_1117 : X_MUX2
    port map (
      IA => N594,
      IB => N595,
      SEL => POS_V_MEMORY(0),
      O => POS_V_MEMORY_1_2
    );
  POS_V_MEMORY_1_1117_F : X_LUT3
    generic map(
      INIT => X"5D"
    )
    port map (
      ADR0 => POS_V_MEMORY(1),
      ADR1 => POS_V_MEMORY_1_130_1565,
      ADR2 => N94,
      O => N594
    );
  POS_V_MEMORY_1_1117_G : X_LUT4
    generic map(
      INIT => X"4CFF"
    )
    port map (
      ADR0 => N165,
      ADR1 => POS_V_MEMORY_1_1102_1564,
      ADR2 => Q_varindex0000(4),
      ADR3 => POS_V_MEMORY(1),
      O => N595
    );
  Mrom_varindex0000_rom0000141 : X_MUX2
    port map (
      IA => N596,
      IB => N597,
      SEL => Q_varindex0000(0),
      O => N83
    );
  Mrom_varindex0000_rom0000141_F : X_LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      ADR0 => Q_varindex0000(4),
      ADR1 => Q_varindex0000(1),
      ADR2 => Q_varindex0000(3),
      O => N596
    );
  Mrom_varindex0000_rom0000141_G : X_LUT4
    generic map(
      INIT => X"888A"
    )
    port map (
      ADR0 => Q_varindex0000(3),
      ADR1 => Q_varindex0000(4),
      ADR2 => POS_H_MEMORY(8),
      ADR3 => Mmux_varindex0000_5_f6_886,
      O => N597
    );
  Mrom_varindex0000_rom000020 : X_MUX2
    port map (
      IA => N598,
      IB => N599,
      SEL => Q_varindex0000(4),
      O => Mrom_varindex0000_rom000020_908
    );
  Mrom_varindex0000_rom000020_F : X_LUT4
    generic map(
      INIT => X"5DD5"
    )
    port map (
      ADR0 => N151,
      ADR1 => Mrom_varindex0000_rom0000280_920,
      ADR2 => Q_varindex0000(3),
      ADR3 => Q_varindex0000(0),
      O => N598
    );
  Mrom_varindex0000_rom000020_G : X_LUT4
    generic map(
      INIT => X"3A2A"
    )
    port map (
      ADR0 => Mrom_varindex0000_rom0000280_920,
      ADR1 => Q_varindex0000(0),
      ADR2 => Q_varindex0000(3),
      ADR3 => Q_varindex0000(2),
      O => N599
    );
  Mrom_varindex0000_rom00004426 : X_MUX2
    port map (
      IA => N600,
      IB => N6011,
      SEL => Q_varindex0000(4),
      O => Mrom_varindex0000_rom000044
    );
  Mrom_varindex0000_rom00004426_F : X_LUT3
    generic map(
      INIT => X"81"
    )
    port map (
      ADR0 => Q_varindex0000(1),
      ADR1 => Q_varindex0000(3),
      ADR2 => Q_varindex0000(2),
      O => N600
    );
  Mrom_varindex0000_rom00004426_G : X_LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      ADR0 => Q_varindex0000(1),
      ADR1 => Q_varindex0000(0),
      ADR2 => N43,
      O => N6011
    );
  Mmux_CHARBIT_192 : X_MUX2
    port map (
      IA => N602,
      IB => N603,
      SEL => POS_V_MEMORY(0),
      O => Mmux_CHARBIT_192_847
    );
  Mmux_CHARBIT_192_F : X_LUT3
    generic map(
      INIT => X"13"
    )
    port map (
      ADR0 => N418,
      ADR1 => N51,
      ADR2 => Q_varindex0000(1),
      O => N602
    );
  Mmux_CHARBIT_192_G : X_LUT4
    generic map(
      INIT => X"060F"
    )
    port map (
      ADR0 => Q_varindex0000(3),
      ADR1 => Q_varindex0000(1),
      ADR2 => N52,
      ADR3 => N309,
      O => N603
    );
  Mrom_varindex0000_rom00003641 : X_MUX2
    port map (
      IA => N604,
      IB => N605,
      SEL => Q_varindex0000(3),
      O => Mrom_varindex0000_rom00003641_938
    );
  Mrom_varindex0000_rom00003641_F : X_LUT4
    generic map(
      INIT => X"222F"
    )
    port map (
      ADR0 => Q_varindex0000(1),
      ADR1 => Q_varindex0000(0),
      ADR2 => Q_varindex0000(4),
      ADR3 => Q_varindex0000(2),
      O => N604
    );
  Mrom_varindex0000_rom00003641_G : X_LUT4
    generic map(
      INIT => X"2A19"
    )
    port map (
      ADR0 => Q_varindex0000(1),
      ADR1 => Q_varindex0000(4),
      ADR2 => Q_varindex0000(0),
      ADR3 => Q_varindex0000(2),
      O => N605
    );
  ST_RP_SIGNAL_not000145 : X_MUX2
    port map (
      IA => N606,
      IB => N607,
      SEL => ERASE_RAM(0),
      O => ST_RP_SIGNAL_not0001
    );
  ST_RP_SIGNAL_not000145_F : X_LUT4
    generic map(
      INIT => X"0302"
    )
    port map (
      ADR0 => IMPOS_19_cmp_eq0004,
      ADR1 => IMPOS_19_and0000,
      ADR2 => ST_CE_SIGNAL_and0003_1673,
      ADR3 => ST_RP_SIGNAL_not000115_1688,
      O => N606
    );
  ST_RP_SIGNAL_not000145_G : X_LUT3
    generic map(
      INIT => X"32"
    )
    port map (
      ADR0 => PICTUREOK(0),
      ADR1 => IMPOS_19_and0000,
      ADR2 => POSIM_cmp_eq0000,
      O => N607
    );
  PICTUREOK_0_not000136 : X_MUX2
    port map (
      IA => N608,
      IB => N609,
      SEL => ERASE_RAM(0),
      O => PICTUREOK_0_not0001
    );
  PICTUREOK_0_not000136_F : X_LUT4
    generic map(
      INIT => X"0F08"
    )
    port map (
      ADR0 => IMPOS_19_cmp_eq0004,
      ADR1 => LOADFLASH(0),
      ADR2 => IMPOS_19_and0000,
      ADR3 => PICTUREOK_0_not000111_1502,
      O => N608
    );
  PICTUREOK_0_not000136_G : X_LUT3
    generic map(
      INIT => X"32"
    )
    port map (
      ADR0 => POSIM_cmp_eq0000,
      ADR1 => IMPOS_19_and0000,
      ADR2 => PICTUREOK(0),
      O => N609
    );
  Mmux_varindex000034 : X_MUX2
    port map (
      IA => N610,
      IB => N611,
      SEL => VGA_DRVR1_COUNTER_H(6),
      O => Mmux_varindex000032
    );
  Mmux_varindex000034_F : X_LUT4
    generic map(
      INIT => X"0383"
    )
    port map (
      ADR0 => PICTUREOK(0),
      ADR1 => VGA_DRVR1_COUNTER_H(4),
      ADR2 => VGA_DRVR1_COUNTER_H(5),
      ADR3 => VGA_DRVR1_COUNTER_H(3),
      O => N610
    );
  Mmux_varindex000034_G : X_LUT3
    generic map(
      INIT => X"1F"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_H(3),
      ADR1 => VGA_DRVR1_COUNTER_H(5),
      ADR2 => VGA_DRVR1_COUNTER_H(4),
      O => N611
    );
  Mrom_varindex0000_rom00005528 : X_MUX2
    port map (
      IA => N612,
      IB => N613,
      SEL => Q_varindex0000(4),
      O => Mrom_varindex0000_rom00005528_960
    );
  Mrom_varindex0000_rom00005528_F : X_LUT4
    generic map(
      INIT => X"021F"
    )
    port map (
      ADR0 => Q_varindex0000(3),
      ADR1 => Q_varindex0000(0),
      ADR2 => Q_varindex0000(1),
      ADR3 => Q_varindex0000(2),
      O => N612
    );
  Mrom_varindex0000_rom00005528_G : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => Q_varindex0000(3),
      ADR1 => Q_varindex0000(1),
      O => N613
    );
  Mrom_varindex0000_rom00002839 : X_MUX2
    port map (
      IA => N614,
      IB => N615,
      SEL => Q_varindex0000(4),
      O => Mrom_varindex0000_rom000028
    );
  Mrom_varindex0000_rom00002839_F : X_LUT4
    generic map(
      INIT => X"FF82"
    )
    port map (
      ADR0 => Q_varindex0000(0),
      ADR1 => Q_varindex0000(2),
      ADR2 => Q_varindex0000(1),
      ADR3 => Mrom_varindex0000_rom00002819,
      O => N614
    );
  Mrom_varindex0000_rom00002839_G : X_LUT4
    generic map(
      INIT => X"FF20"
    )
    port map (
      ADR0 => Q_varindex0000(1),
      ADR1 => Q_varindex0000(3),
      ADR2 => Q_varindex0000(2),
      ADR3 => Mrom_varindex0000_rom00002819,
      O => N615
    );
  VGA_DRVR1_COLOR_0_100_SW0 : X_MUX2
    port map (
      IA => N616,
      IB => N617,
      SEL => VGA_DRVR1_CNT200M(1),
      O => N444
    );
  VGA_DRVR1_COLOR_0_100_SW0_F : X_LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      ADR0 => N1771,
      ADR1 => CHARBIT_ACT55_188,
      ADR2 => CHARBIT_ACT246_187,
      O => N616
    );
  VGA_DRVR1_COLOR_0_100_SW0_G : X_LUT3
    generic map(
      INIT => X"06"
    )
    port map (
      ADR0 => CHARBIT_ACT,
      ADR1 => N178,
      ADR2 => VGA_DRVR1_CNT200M(0),
      O => N617
    );
  POS_V_MEMORY_1_325 : X_MUX2
    port map (
      IA => N618,
      IB => N619,
      SEL => Q_varindex0000(1),
      O => POS_V_MEMORY_1_325_1579
    );
  POS_V_MEMORY_1_325_F : X_LUT4
    generic map(
      INIT => X"22A2"
    )
    port map (
      ADR0 => POS_V_MEMORY(0),
      ADR1 => Q_varindex0000(3),
      ADR2 => Q_varindex0000(2),
      ADR3 => Q_varindex0000(4),
      O => N618
    );
  POS_V_MEMORY_1_325_G : X_LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      ADR0 => POS_V_MEMORY(0),
      ADR1 => N22,
      ADR2 => Q_varindex0000(2),
      O => N619
    );
  Mrom_varindex0000_rom0000391 : X_MUX2
    port map (
      IA => N620,
      IB => N621,
      SEL => Q_varindex0000(0),
      O => N121
    );
  Mrom_varindex0000_rom0000391_F : X_LUT4
    generic map(
      INIT => X"0F01"
    )
    port map (
      ADR0 => Q_varindex0000(2),
      ADR1 => Q_varindex0000(1),
      ADR2 => Q_varindex0000(3),
      ADR3 => N138,
      O => N620
    );
  Mrom_varindex0000_rom0000391_G : X_LUT4
    generic map(
      INIT => X"22F2"
    )
    port map (
      ADR0 => Q_varindex0000(1),
      ADR1 => N1381,
      ADR2 => N138,
      ADR3 => Q_varindex0000(3),
      O => N621
    );
  Mrom_varindex0000_rom00004431_SW0 : X_MUX2
    port map (
      IA => N622,
      IB => N623,
      SEL => Q_varindex0000(4),
      O => N434
    );
  Mrom_varindex0000_rom00004431_SW0_F : X_LUT4
    generic map(
      INIT => X"FFBE"
    )
    port map (
      ADR0 => Mmux_varindex0000_5_f6_886,
      ADR1 => Q_varindex0000(0),
      ADR2 => Q_varindex0000(1),
      ADR3 => POS_H_MEMORY(8),
      O => N622
    );
  Mrom_varindex0000_rom00004431_SW0_G : X_LUT4
    generic map(
      INIT => X"222F"
    )
    port map (
      ADR0 => Q_varindex0000(3),
      ADR1 => Q_varindex0000(1),
      ADR2 => POS_H_MEMORY(8),
      ADR3 => Mmux_varindex0000_5_f6_886,
      O => N623
    );
  MT_CE_SIGNAL_not000129 : X_MUX2
    port map (
      IA => N624,
      IB => N625,
      SEL => ERASE_RAM(0),
      O => MT_CE_SIGNAL_not0001
    );
  MT_CE_SIGNAL_not000129_F : X_LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      ADR0 => LOADFLASH(0),
      ADR1 => MT_CE_SIGNAL_not00015,
      ADR2 => IMPOS_19_and0000,
      ADR3 => IMPOS_19_cmp_eq0004,
      O => N624
    );
  MT_CE_SIGNAL_not000129_G : X_LUT3
    generic map(
      INIT => X"32"
    )
    port map (
      ADR0 => POSIM_cmp_eq0000,
      ADR1 => IMPOS_19_and0000,
      ADR2 => PICTUREOK(0),
      O => N625
    );
  POSIM_mux0004_0_7223 : X_MUX2
    port map (
      IA => N626,
      IB => N627,
      SEL => ERASE_RAM(0),
      O => N250
    );
  POSIM_mux0004_0_7223_F : X_LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      ADR0 => N124,
      ADR1 => LOADFLASH(0),
      ADR2 => BTN_IBUF_178,
      ADR3 => PLUS_MEMORY(0),
      O => N626
    );
  POSIM_mux0004_0_7223_G : X_LUT3
    generic map(
      INIT => X"32"
    )
    port map (
      ADR0 => N124,
      ADR1 => PICTUREOK(0),
      ADR2 => BTN_IBUF_178,
      O => N627
    );
  Mrom_varindex0000_rom0000182 : X_MUX2
    port map (
      IA => N628,
      IB => N629,
      SEL => Q_varindex0000(1),
      O => N55
    );
  Mrom_varindex0000_rom0000182_F : X_LUT4
    generic map(
      INIT => X"555B"
    )
    port map (
      ADR0 => Q_varindex0000(0),
      ADR1 => Q_varindex0000(4),
      ADR2 => POS_H_MEMORY(8),
      ADR3 => Mmux_varindex0000_5_f6_886,
      O => N628
    );
  Mrom_varindex0000_rom0000182_G : X_LUT4
    generic map(
      INIT => X"FEA8"
    )
    port map (
      ADR0 => Q_varindex0000(0),
      ADR1 => POS_H_MEMORY(8),
      ADR2 => Mmux_varindex0000_5_f6_886,
      ADR3 => Q_varindex0000(3),
      O => N629
    );
  Mmux_varindex00003945 : X_MUX2
    port map (
      IA => N630,
      IB => N631,
      SEL => NORM_NEGA(0),
      O => Mmux_varindex00003945_885
    );
  Mmux_varindex00003945_F : X_LUT4
    generic map(
      INIT => X"EF3D"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_H(4),
      ADR1 => VGA_DRVR1_COUNTER_H(3),
      ADR2 => VGA_DRVR1_COUNTER_H(5),
      ADR3 => VGA_DRVR1_COUNTER_H(6),
      O => N630
    );
  Mmux_varindex00003945_G : X_LUT4
    generic map(
      INIT => X"ADAF"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_H(6),
      ADR1 => VGA_DRVR1_COUNTER_H(3),
      ADR2 => VGA_DRVR1_COUNTER_H(4),
      ADR3 => VGA_DRVR1_COUNTER_H(5),
      O => N631
    );
  Mrom_varindex0000_rom000069247 : X_MUX2
    port map (
      IA => N632,
      IB => N633,
      SEL => Q_varindex0000(1),
      O => N94
    );
  Mrom_varindex0000_rom000069247_F : X_LUT4
    generic map(
      INIT => X"DF8B"
    )
    port map (
      ADR0 => Q_varindex0000(4),
      ADR1 => Q_varindex0000(2),
      ADR2 => Q_varindex0000(0),
      ADR3 => Q_varindex0000(3),
      O => N632
    );
  Mrom_varindex0000_rom000069247_G : X_LUT4
    generic map(
      INIT => X"1B5F"
    )
    port map (
      ADR0 => Q_varindex0000(3),
      ADR1 => Q_varindex0000(2),
      ADR2 => Q_varindex0000(0),
      ADR3 => Q_varindex0000(4),
      O => N633
    );
  Mmux_varindex000032100 : X_MUX2
    port map (
      IA => N634,
      IB => N635,
      SEL => POS_H_MEMORY(6),
      O => Mmux_varindex000032100_882
    );
  Mmux_varindex000032100_F : X_LUT4
    generic map(
      INIT => X"F9A9"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_H(5),
      ADR1 => VGA_DRVR1_COUNTER_H(3),
      ADR2 => NORM_NEGA(0),
      ADR3 => VGA_DRVR1_COUNTER_H(4),
      O => N634
    );
  Mmux_varindex000032100_G : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_H(4),
      ADR1 => VGA_DRVR1_COUNTER_H(5),
      ADR2 => IM_16_8_BITS(0),
      ADR3 => VGA_DRVR1_COUNTER_H(3),
      O => N635
    );
  Mrom_varindex0000_rom000037 : X_MUX2
    port map (
      IA => N636,
      IB => N637,
      SEL => Q_varindex0000(0),
      O => Mrom_varindex0000_rom000037_940
    );
  Mrom_varindex0000_rom000037_F : X_LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      ADR0 => Q_varindex0000(1),
      ADR1 => Q_varindex0000(4),
      ADR2 => N76,
      ADR3 => Q_varindex0000(2),
      O => N636
    );
  Mrom_varindex0000_rom000037_G : X_LUT4
    generic map(
      INIT => X"AB9B"
    )
    port map (
      ADR0 => Q_varindex0000(2),
      ADR1 => Q_varindex0000(4),
      ADR2 => Q_varindex0000(1),
      ADR3 => Q_varindex0000(3),
      O => N637
    );
  Mmux_CHARBIT_18_SW0 : X_MUX2
    port map (
      IA => N638,
      IB => N639,
      SEL => Q_varindex0000(2),
      O => N422
    );
  Mmux_CHARBIT_18_SW0_F : X_LUT4
    generic map(
      INIT => X"A1B1"
    )
    port map (
      ADR0 => Q_varindex0000(0),
      ADR1 => Q_varindex0000(4),
      ADR2 => Q_varindex0000(3),
      ADR3 => Q_varindex0000(1),
      O => N638
    );
  Mmux_CHARBIT_18_SW0_G : X_LUT3
    generic map(
      INIT => X"32"
    )
    port map (
      ADR0 => Q_varindex0000(4),
      ADR1 => Q_varindex0000(1),
      ADR2 => Q_varindex0000(3),
      O => N639
    );
  POS_V_MEMORY_1_393 : X_MUX2
    port map (
      IA => N640,
      IB => N6411,
      SEL => Q_varindex0000(3),
      O => POS_V_MEMORY_1_393_1582
    );
  POS_V_MEMORY_1_393_F : X_LUT4
    generic map(
      INIT => X"9BDF"
    )
    port map (
      ADR0 => Q_varindex0000(4),
      ADR1 => Q_varindex0000(0),
      ADR2 => Q_varindex0000(1),
      ADR3 => Q_varindex0000(2),
      O => N640
    );
  POS_V_MEMORY_1_393_G : X_LUT4
    generic map(
      INIT => X"3B5B"
    )
    port map (
      ADR0 => Q_varindex0000(2),
      ADR1 => Q_varindex0000(1),
      ADR2 => Q_varindex0000(0),
      ADR3 => Q_varindex0000(4),
      O => N6411
    );
  Mmux_CHARBIT_201_SW0 : X_MUX2
    port map (
      IA => N642,
      IB => N643,
      SEL => Q_varindex0000(2),
      O => N564
    );
  Mmux_CHARBIT_201_SW0_F : X_LUT4
    generic map(
      INIT => X"7F5B"
    )
    port map (
      ADR0 => Q_varindex0000(1),
      ADR1 => Q_varindex0000(4),
      ADR2 => Q_varindex0000(3),
      ADR3 => Q_varindex0000(0),
      O => N642
    );
  Mmux_CHARBIT_201_SW0_G : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => Q_varindex0000(3),
      ADR1 => Q_varindex0000(1),
      ADR2 => Q_varindex0000(0),
      O => N643
    );
  Mrom_varindex0000_rom000021171 : X_MUX2
    port map (
      IA => N644,
      IB => N645,
      SEL => Mmux_varindex0000_5_f6_886,
      O => Mrom_varindex0000_rom000021171_911
    );
  Mrom_varindex0000_rom000021171_F : X_LUT4
    generic map(
      INIT => X"020B"
    )
    port map (
      ADR0 => POS_H_MEMORY(8),
      ADR1 => Q_varindex0000(0),
      ADR2 => Q_varindex0000(4),
      ADR3 => Q_varindex0000(1),
      O => N644
    );
  Mrom_varindex0000_rom000021171_G : X_LUT4
    generic map(
      INIT => X"010B"
    )
    port map (
      ADR0 => Q_varindex0000(1),
      ADR1 => Q_varindex0000(3),
      ADR2 => Q_varindex0000(4),
      ADR3 => Q_varindex0000(0),
      O => N645
    );
  IMPOS_19_mux000422_SW3 : X_MUX2
    port map (
      IA => N646,
      IB => N647,
      SEL => N118,
      O => N3411
    );
  IMPOS_19_mux000422_SW3_F : X_LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      ADR0 => COUNTER_RAM_USB_cmp_eq0000,
      ADR1 => IMPOS_22_16_add0000(4),
      ADR2 => N88,
      ADR3 => POSIM_cmp_eq0000,
      O => N646
    );
  IMPOS_19_mux000422_SW3_G : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => IMPOS_22_16_add0000(4),
      ADR1 => POSIM_cmp_eq0000,
      O => N647
    );
  IMPOS_19_mux000422_SW5 : X_MUX2
    port map (
      IA => N648,
      IB => N649,
      SEL => N118,
      O => N344
    );
  IMPOS_19_mux000422_SW5_F : X_LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      ADR0 => COUNTER_RAM_USB_cmp_eq0000,
      ADR1 => IMPOS_22_16_add0000(3),
      ADR2 => N88,
      ADR3 => POSIM_cmp_eq0000,
      O => N648
    );
  IMPOS_19_mux000422_SW5_G : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => IMPOS_22_16_add0000(3),
      ADR1 => POSIM_cmp_eq0000,
      O => N649
    );
  Mmux_CHARBIT_1441 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => N169,
      ADR1 => POS_V_MEMORY_1_66_1597,
      ADR2 => POS_V_MEMORY_1_639_1595,
      ADR3 => POS_V_MEMORY_1_658_1596,
      O => Mmux_CHARBIT_1441_818
    );
  Mmux_CHARBIT_144_f5 : X_MUX2
    port map (
      IA => Mmux_CHARBIT_1441_818,
      IB => Mmux_CHARBIT_18_f5_844,
      SEL => POS_V_MEMORY(2),
      O => Mmux_CHARBIT_144
    );
  Mmux_CHARBIT_1721 : X_LUT4
    generic map(
      INIT => X"F1F3"
    )
    port map (
      ADR0 => Q_varindex0000(2),
      ADR1 => N428,
      ADR2 => POS_V_MEMORY(0),
      ADR3 => Q_varindex0000(0),
      O => Mmux_CHARBIT_1721_839
    );
  Mmux_CHARBIT_1722 : X_LUT3
    generic map(
      INIT => X"AE"
    )
    port map (
      ADR0 => POS_V_MEMORY(0),
      ADR1 => Q_varindex0000(0),
      ADR2 => N428,
      O => Mmux_CHARBIT_1722_840
    );
  Mmux_CHARBIT_172_f5 : X_MUX2
    port map (
      IA => Mmux_CHARBIT_1722_840,
      IB => Mmux_CHARBIT_1721_839,
      SEL => Q_varindex0000(4),
      O => Mmux_CHARBIT_172
    );
  Mmux_CHARBIT_1531 : X_LUT3
    generic map(
      INIT => X"F1"
    )
    port map (
      ADR0 => N1161,
      ADR1 => N248,
      ADR2 => POS_V_MEMORY(0),
      O => Mmux_CHARBIT_1531_825
    );
  Mmux_CHARBIT_1532 : X_LUT4
    generic map(
      INIT => X"FF01"
    )
    port map (
      ADR0 => N1161,
      ADR1 => N248,
      ADR2 => N20,
      ADR3 => POS_V_MEMORY(0),
      O => Mmux_CHARBIT_1532_826
    );
  Mmux_CHARBIT_153_f5 : X_MUX2
    port map (
      IA => Mmux_CHARBIT_1532_826,
      IB => Mmux_CHARBIT_1531_825,
      SEL => Q_varindex0000(1),
      O => Mmux_CHARBIT_153
    );
  Mmux_CHARBIT_1411 : X_LUT4
    generic map(
      INIT => X"FF01"
    )
    port map (
      ADR0 => N175,
      ADR1 => N1181,
      ADR2 => N54,
      ADR3 => POS_V_MEMORY(0),
      O => Mmux_CHARBIT_1411_813
    );
  Mmux_CHARBIT_1412 : X_LUT3
    generic map(
      INIT => X"F1"
    )
    port map (
      ADR0 => N175,
      ADR1 => N1181,
      ADR2 => POS_V_MEMORY(0),
      O => Mmux_CHARBIT_1412_814
    );
  Mmux_CHARBIT_141_f5 : X_MUX2
    port map (
      IA => Mmux_CHARBIT_1412_814,
      IB => Mmux_CHARBIT_1411_813,
      SEL => Q_varindex0000(1),
      O => Mmux_CHARBIT_141
    );
  VGA_DRVR1_HS1 : X_LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_H(7),
      ADR1 => VGA_DRVR1_COUNTER_H(8),
      ADR2 => VGA_DRVR1_COUNTER_H(5),
      ADR3 => VGA_DRVR1_COUNTER_H(6),
      O => VGA_DRVR1_HS
    );
  VGA_DRVR1_HS_f5 : X_MUX2
    port map (
      IA => VGA_DRVR1_HS,
      IB => DPL_SEG_0_OBUF_396,
      SEL => VGA_DRVR1_COUNTER_H(9),
      O => HS_OBUF_419
    );
  KBRD_DRIVER_COUNTER_KB_mux0002_3_1 : X_LUT4
    generic map(
      INIT => X"0155"
    )
    port map (
      ADR0 => KBRD_DRIVER_COUNTER_KB(0),
      ADR1 => KBRD_DRIVER_COUNTER_KB(1),
      ADR2 => KBRD_DRIVER_COUNTER_KB(2),
      ADR3 => KBRD_DRIVER_COUNTER_KB(3),
      O => KBRD_DRIVER_COUNTER_KB_mux0002_3_1_545
    );
  KBRD_DRIVER_COUNTER_KB_mux0002_3_f5 : X_MUX2
    port map (
      IA => KBRD_DRIVER_COUNTER_KB_mux0002_3_1_545,
      IB => DPL_SEG_3_OBUF_397,
      SEL => KBRD_DRIVER_PAR_OK_590,
      O => KBRD_DRIVER_COUNTER_KB_mux0002(3)
    );
  KBRD_DRIVER_KBRD_DATA_and0000181 : X_LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      ADR0 => KBRD_DRIVER_COUNTER_KB(3),
      ADR1 => KBRD_DRIVER_COUNTER_KB(0),
      ADR2 => KBRD_DRIVER_KEY_DOWN_0_and0000,
      ADR3 => KBRD_DRIVER_KEY_DOWN_0_or0000,
      O => KBRD_DRIVER_KBRD_DATA_and0000181_575
    );
  KBRD_DRIVER_KBRD_DATA_and000018_f5 : X_MUX2
    port map (
      IA => KBRD_DRIVER_KBRD_DATA_and0000181_575,
      IB => DPL_SEG_3_OBUF_397,
      SEL => RESET(0),
      O => KBRD_DRIVER_KBRD_DATA_and000018
    );
  KBRD_DRIVER_COUNTER_KB_mux0002_1_1 : X_LUT4
    generic map(
      INIT => X"060A"
    )
    port map (
      ADR0 => KBRD_DRIVER_COUNTER_KB(2),
      ADR1 => KBRD_DRIVER_COUNTER_KB(0),
      ADR2 => KBRD_DRIVER_COUNTER_KB(3),
      ADR3 => KBRD_DRIVER_COUNTER_KB(1),
      O => KBRD_DRIVER_COUNTER_KB_mux0002_1_1_542
    );
  KBRD_DRIVER_COUNTER_KB_mux0002_1_f5 : X_MUX2
    port map (
      IA => KBRD_DRIVER_COUNTER_KB_mux0002_1_1_542,
      IB => DPL_SEG_3_OBUF_397,
      SEL => KBRD_DRIVER_PAR_OK_590,
      O => KBRD_DRIVER_COUNTER_KB_mux0002(1)
    );
  DELAY_PLUS_MEMORY_mux0001_0_1 : X_LUT4
    generic map(
      INIT => X"2888"
    )
    port map (
      ADR0 => PLUS_MEMORY(0),
      ADR1 => DELAY_PLUS_MEMORY(2),
      ADR2 => DELAY_PLUS_MEMORY(0),
      ADR3 => DELAY_PLUS_MEMORY(1),
      O => DELAY_PLUS_MEMORY_mux0001_0_1_377
    );
  DELAY_PLUS_MEMORY_mux0001_0_f5 : X_MUX2
    port map (
      IA => DELAY_PLUS_MEMORY_mux0001_0_1_377,
      IB => DPL_SEG_3_OBUF_397,
      SEL => USBDRIVER_ABORTEDSN(0),
      O => DELAY_PLUS_MEMORY_mux0001(0)
    );
  KBRD_DRIVER_COUNTER_KB_mux0002_0_1 : X_LUT4
    generic map(
      INIT => X"2004"
    )
    port map (
      ADR0 => KBRD_DRIVER_COUNTER_KB(2),
      ADR1 => KBRD_DRIVER_COUNTER_KB(3),
      ADR2 => KBRD_DRIVER_COUNTER_KB(1),
      ADR3 => KBRD_DRIVER_COUNTER_KB(0),
      O => KBRD_DRIVER_COUNTER_KB_mux0002_0_1_540
    );
  KBRD_DRIVER_COUNTER_KB_mux0002_0_f5 : X_MUX2
    port map (
      IA => KBRD_DRIVER_COUNTER_KB_mux0002_0_1_540,
      IB => DPL_SEG_3_OBUF_397,
      SEL => KBRD_DRIVER_PAR_OK_590,
      O => KBRD_DRIVER_COUNTER_KB_mux0002(0)
    );
  KBRD_DRIVER_KEY_DOWN_0_mux0000341 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => KBRD_DRIVER_COUNTER_KB(2),
      ADR1 => KBRD_DRIVER_COUNTER_KB(1),
      ADR2 => N514,
      O => KBRD_DRIVER_KEY_DOWN_0_mux0000341_580
    );
  KBRD_DRIVER_KEY_DOWN_0_mux0000342 : X_LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      ADR0 => KBRD_DRIVER_WT_KB(0),
      ADR1 => KBRD_DRIVER_COUNTER_KB(0),
      ADR2 => KBRD_DRIVER_COUNTER_KB(2),
      ADR3 => KBRD_DRIVER_COUNTER_KB(1),
      O => KBRD_DRIVER_KEY_DOWN_0_mux0000342_581
    );
  KBRD_DRIVER_KEY_DOWN_0_mux000034_f5 : X_MUX2
    port map (
      IA => KBRD_DRIVER_KEY_DOWN_0_mux0000342_581,
      IB => KBRD_DRIVER_KEY_DOWN_0_mux0000341_580,
      SEL => KBRD_DRIVER_COUNTER_KB(3),
      O => KBRD_DRIVER_KEY_DOWN_0_mux000034
    );
  PLUS_MEMORY_0_not00011 : X_LUT4
    generic map(
      INIT => X"2220"
    )
    port map (
      ADR0 => N162,
      ADR1 => ERASE_RAM(0),
      ADR2 => USBDRIVER_ABORTEDSN(0),
      ADR3 => IMPOS_19_cmp_eq0008,
      O => PLUS_MEMORY_0_not00011_1510
    );
  PLUS_MEMORY_0_not00012 : X_LUT4
    generic map(
      INIT => X"2220"
    )
    port map (
      ADR0 => N162,
      ADR1 => ERASE_RAM(0),
      ADR2 => USBDRIVER_ABORTEDSN(0),
      ADR3 => USBDRIVER_DATAOK(0),
      O => PLUS_MEMORY_0_not00012_1511
    );
  PLUS_MEMORY_0_not0001_f5 : X_MUX2
    port map (
      IA => PLUS_MEMORY_0_not00012_1511,
      IB => PLUS_MEMORY_0_not00011_1510,
      SEL => PLUS_MEMORY(0),
      O => PLUS_MEMORY_0_not0001
    );
  VGA_DRVR1_COUNTER_RAM_or0000281 : X_LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_V(0),
      ADR1 => VGA_DRVR1_COUNTER_V(3),
      ADR2 => VGA_DRVR1_COUNTER_V(2),
      ADR3 => VGA_DRVR1_COUNTER_V(1),
      O => VGA_DRVR1_COUNTER_RAM_or0000281_1827
    );
  VGA_DRVR1_COUNTER_RAM_or000028_f5 : X_MUX2
    port map (
      IA => VGA_DRVR1_COUNTER_RAM_or0000281_1827,
      IB => DPL_SEG_0_OBUF_396,
      SEL => VGA_DRVR1_COUNTER_V(4),
      O => VGA_DRVR1_COUNTER_RAM_or000028
    );
  Mcount_CNTPROCCES11 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => CNTPROCCES(0),
      ADR1 => CNTPROCCES(1),
      O => Mcount_CNTPROCCES11_761
    );
  Mcount_CNTPROCCES12 : X_LUT4
    generic map(
      INIT => X"66E6"
    )
    port map (
      ADR0 => CNTPROCCES(0),
      ADR1 => CNTPROCCES(1),
      ADR2 => CNTPROCCES(3),
      ADR3 => CNTPROCCES(2),
      O => Mcount_CNTPROCCES12_762
    );
  Mcount_CNTPROCCES1_f5 : X_MUX2
    port map (
      IA => Mcount_CNTPROCCES12_762,
      IB => Mcount_CNTPROCCES11_761,
      SEL => N171,
      O => Mcount_CNTPROCCES1
    );
  Mcount_CNTPROCCES31 : X_LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      ADR0 => CNTPROCCES(3),
      ADR1 => CNTPROCCES(2),
      ADR2 => CNTPROCCES(1),
      ADR3 => CNTPROCCES(0),
      O => Mcount_CNTPROCCES31_765
    );
  Mcount_CNTPROCCES32 : X_LUT4
    generic map(
      INIT => X"6A2A"
    )
    port map (
      ADR0 => CNTPROCCES(3),
      ADR1 => CNTPROCCES(1),
      ADR2 => CNTPROCCES(0),
      ADR3 => CNTPROCCES(2),
      O => Mcount_CNTPROCCES32_766
    );
  Mcount_CNTPROCCES3_f5 : X_MUX2
    port map (
      IA => Mcount_CNTPROCCES32_766,
      IB => Mcount_CNTPROCCES31_765,
      SEL => N171,
      O => Mcount_CNTPROCCES3
    );
  PICTUREOK_0_mux0000431 : X_LUT4
    generic map(
      INIT => X"0F08"
    )
    port map (
      ADR0 => PLUS_MEMORY(0),
      ADR1 => COUNTER_RAM_USB_cmp_eq0000,
      ADR2 => LOADFLASH(0),
      ADR3 => USBDRIVER_ABORTEDSN(0),
      O => PICTUREOK_0_mux0000431_1498
    );
  PICTUREOK_0_mux0000432 : X_LUT4
    generic map(
      INIT => X"3323"
    )
    port map (
      ADR0 => USBDRIVER_ABORTEDSN(0),
      ADR1 => LOADFLASH(0),
      ADR2 => PLUS_MEMORY(0),
      ADR3 => COUNTER_RAM_USB_cmp_eq0000,
      O => PICTUREOK_0_mux0000432_1499
    );
  PICTUREOK_0_mux000043_f5 : X_MUX2
    port map (
      IA => PICTUREOK_0_mux0000432_1499,
      IB => PICTUREOK_0_mux0000431_1498,
      SEL => USBDRIVER_DATAOK(0),
      O => PICTUREOK_0_mux000043
    );
  Mrom_varindex0000_rom000022_SW01 : X_LUT4
    generic map(
      INIT => X"FF04"
    )
    port map (
      ADR0 => Q_varindex0000(1),
      ADR1 => Q_varindex0000(2),
      ADR2 => Q_varindex0000(3),
      ADR3 => N83,
      O => Mrom_varindex0000_rom000022_SW0
    );
  Mrom_varindex0000_rom000022_SW02 : X_LUT4
    generic map(
      INIT => X"FF20"
    )
    port map (
      ADR0 => Q_varindex0000(2),
      ADR1 => Q_varindex0000(1),
      ADR2 => Q_varindex0000(3),
      ADR3 => N83,
      O => Mrom_varindex0000_rom000022_SW01_913
    );
  Mrom_varindex0000_rom000022_SW0_f5 : X_MUX2
    port map (
      IA => Mrom_varindex0000_rom000022_SW01_913,
      IB => Mrom_varindex0000_rom000022_SW0,
      SEL => Q_varindex0000(4),
      O => N1121
    );
  Mrom_varindex0000_rom000014_SW11 : X_LUT3
    generic map(
      INIT => X"AE"
    )
    port map (
      ADR0 => N83,
      ADR1 => Q_varindex0000(0),
      ADR2 => Q_varindex0000(1),
      O => Mrom_varindex0000_rom000014_SW1
    );
  Mrom_varindex0000_rom000014_SW12 : X_LUT4
    generic map(
      INIT => X"FF32"
    )
    port map (
      ADR0 => Q_varindex0000(3),
      ADR1 => Q_varindex0000(1),
      ADR2 => Q_varindex0000(0),
      ADR3 => N83,
      O => Mrom_varindex0000_rom000014_SW11_901
    );
  Mrom_varindex0000_rom000014_SW1_f5 : X_MUX2
    port map (
      IA => Mrom_varindex0000_rom000014_SW11_901,
      IB => Mrom_varindex0000_rom000014_SW1,
      SEL => Q_varindex0000(4),
      O => N129
    );
  CHARBIT_ACT1831 : X_LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      ADR0 => POS_V_MEMORY(1),
      ADR1 => POS_V_MEMORY(0),
      ADR2 => POS_V_MEMORY(3),
      ADR3 => POS_V_MEMORY(2),
      O => CHARBIT_ACT1831_183
    );
  CHARBIT_ACT183_f5 : X_MUX2
    port map (
      IA => CHARBIT_ACT1831_183,
      IB => DPL_SEG_3_OBUF_397,
      SEL => POS_V_MEMORY(7),
      O => CHARBIT_ACT183
    );
  CHARBIT_ACT2101 : X_LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      ADR0 => POS_V_MEMORY(4),
      ADR1 => POS_V_MEMORY(6),
      ADR2 => POS_V_MEMORY(8),
      O => CHARBIT_ACT2101_185
    );
  CHARBIT_ACT2102 : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => PICTUREOK(0),
      ADR1 => POS_V_MEMORY(4),
      ADR2 => POS_V_MEMORY(6),
      ADR3 => POS_V_MEMORY(8),
      O => CHARBIT_ACT2102_186
    );
  CHARBIT_ACT210_f5 : X_MUX2
    port map (
      IA => CHARBIT_ACT2102_186,
      IB => CHARBIT_ACT2101_185,
      SEL => SHOWINFO(0),
      O => CHARBIT_ACT210
    );
  CHARBIT_ACT55_SW01 : X_LUT4
    generic map(
      INIT => X"010B"
    )
    port map (
      ADR0 => POS_V_MEMORY(3),
      ADR1 => Mmux_CHARBIT_144,
      ADR2 => VGA_DRVR1_COUNTER_H(0),
      ADR3 => Mmux_CHARBIT_155_828,
      O => CHARBIT_ACT55_SW0
    );
  CHARBIT_ACT55_SW0_f5 : X_MUX2
    port map (
      IA => CHARBIT_ACT55_SW01_190,
      IB => CHARBIT_ACT55_SW0,
      SEL => VGA_DRVR1_COUNTER_H(1),
      O => N420
    );
  POS_V_MEMORY_1_2261 : X_LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      ADR0 => Q_varindex0000(0),
      ADR1 => Q_varindex0000(1),
      ADR2 => Q_varindex0000(2),
      O => POS_V_MEMORY_1_2261_1572
    );
  POS_V_MEMORY_1_2262 : X_LUT4
    generic map(
      INIT => X"BA32"
    )
    port map (
      ADR0 => Q_varindex0000(2),
      ADR1 => Q_varindex0000(1),
      ADR2 => Q_varindex0000(0),
      ADR3 => Q_varindex0000(3),
      O => POS_V_MEMORY_1_2262_1573
    );
  POS_V_MEMORY_1_226_f5 : X_MUX2
    port map (
      IA => POS_V_MEMORY_1_2262_1573,
      IB => POS_V_MEMORY_1_2261_1572,
      SEL => Q_varindex0000(4),
      O => POS_V_MEMORY_1_226
    );
  VGA_DRVR1_COLOR_0_1001 : X_LUT4
    generic map(
      INIT => X"BE14"
    )
    port map (
      ADR0 => IM_16_8_BITS(0),
      ADR1 => CHARBIT_ACT,
      ADR2 => N176,
      ADR3 => N444,
      O => VGA_DRVR1_COLOR_0_100
    );
  VGA_DRVR1_COLOR_0_1002 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => CHARBIT_ACT,
      ADR1 => N176,
      O => VGA_DRVR1_COLOR_0_1001_1754
    );
  VGA_DRVR1_COLOR_0_100_f5 : X_MUX2
    port map (
      IA => VGA_DRVR1_COLOR_0_1001_1754,
      IB => VGA_DRVR1_COLOR_0_100,
      SEL => VGA_DRVR1_CNT200M_21,
      O => VGA_DRVR1_COLOR_0_Q
    );
  Mrom_varindex0000_rom0000331 : X_LUT4
    generic map(
      INIT => X"40E0"
    )
    port map (
      ADR0 => Q_varindex0000(2),
      ADR1 => Q_varindex0000(1),
      ADR2 => Q_varindex0000(3),
      ADR3 => Q_varindex0000(4),
      O => Mrom_varindex0000_rom0000331_930
    );
  Mrom_varindex0000_rom0000332 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => N135,
      ADR1 => Q_varindex0000(1),
      O => Mrom_varindex0000_rom0000332_931
    );
  Mrom_varindex0000_rom000033_f5 : X_MUX2
    port map (
      IA => Mrom_varindex0000_rom0000332_931,
      IB => Mrom_varindex0000_rom0000331_930,
      SEL => Q_varindex0000(0),
      O => Mrom_varindex0000_rom000033
    );
  POS_V_MEMORY_1_21031 : X_LUT4
    generic map(
      INIT => X"AF8C"
    )
    port map (
      ADR0 => Q_varindex0000(0),
      ADR1 => POS_H_MEMORY(8),
      ADR2 => Q_varindex0000(1),
      ADR3 => Mmux_varindex0000_5_f6_886,
      O => POS_V_MEMORY_1_21031_1568
    );
  POS_V_MEMORY_1_21032 : X_LUT3
    generic map(
      INIT => X"A9"
    )
    port map (
      ADR0 => Q_varindex0000(0),
      ADR1 => Mmux_varindex0000_5_f6_886,
      ADR2 => POS_H_MEMORY(8),
      O => POS_V_MEMORY_1_21032_1569
    );
  POS_V_MEMORY_1_2103_f5 : X_MUX2
    port map (
      IA => POS_V_MEMORY_1_21032_1569,
      IB => POS_V_MEMORY_1_21031_1568,
      SEL => Q_varindex0000(4),
      O => POS_V_MEMORY_1_2103
    );
  Mrom_varindex0000_rom0000111281 : X_LUT4
    generic map(
      INIT => X"6266"
    )
    port map (
      ADR0 => Q_varindex0000(2),
      ADR1 => Q_varindex0000(1),
      ADR2 => Q_varindex0000(0),
      ADR3 => Q_varindex0000(3),
      O => Mrom_varindex0000_rom0000111281_895
    );
  Mrom_varindex0000_rom000011128_f5 : X_MUX2
    port map (
      IA => Mrom_varindex0000_rom0000111281_895,
      IB => DPL_SEG_3_OBUF_397,
      SEL => Q_varindex0000(4),
      O => Mrom_varindex0000_rom000011128
    );
  POS_V_MEMORY_1_922 : X_LUT4
    generic map(
      INIT => X"8DAF"
    )
    port map (
      ADR0 => Q_varindex0000(1),
      ADR1 => POS_V_MEMORY_1_691_1598,
      ADR2 => N138,
      ADR3 => Q_varindex0000(0),
      O => POS_V_MEMORY_1_922_1601
    );
  POS_V_MEMORY_1_92_f5 : X_MUX2
    port map (
      IA => POS_V_MEMORY_1_922_1601,
      IB => POS_V_MEMORY_1_921,
      SEL => Q_varindex0000(3),
      O => POS_V_MEMORY_1_92
    );
  Mrom_varindex0000_rom00005011 : X_LUT4
    generic map(
      INIT => X"3061"
    )
    port map (
      ADR0 => POS_H_MEMORY(8),
      ADR1 => Q_varindex0000(0),
      ADR2 => Q_varindex0000(1),
      ADR3 => Mmux_varindex00003945_885,
      O => Mrom_varindex0000_rom0000501
    );
  Mrom_varindex0000_rom00005012 : X_LUT4
    generic map(
      INIT => X"3061"
    )
    port map (
      ADR0 => POS_H_MEMORY(8),
      ADR1 => Q_varindex0000(0),
      ADR2 => Q_varindex0000(1),
      ADR3 => Mmux_varindex000032,
      O => Mrom_varindex0000_rom00005011_954
    );
  Mrom_varindex0000_rom0000501_f5 : X_MUX2
    port map (
      IA => Mrom_varindex0000_rom00005011_954,
      IB => Mrom_varindex0000_rom0000501,
      SEL => POS_H_MEMORY(7),
      O => N60
    );
  Mmux_varindex0000232531 : X_LUT4
    generic map(
      INIT => X"AE55"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_H(4),
      ADR1 => IM_16_8_BITS(0),
      ADR2 => VGA_DRVR1_COUNTER_H(3),
      ADR3 => VGA_DRVR1_COUNTER_H(5),
      O => Mmux_varindex0000232531_877
    );
  Mmux_varindex0000232532 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_H(4),
      ADR1 => VGA_DRVR1_COUNTER_H(5),
      O => Mmux_varindex0000232532_878
    );
  Mmux_varindex000023253_f5 : X_MUX2
    port map (
      IA => Mmux_varindex0000232532_878,
      IB => Mmux_varindex0000232531_877,
      SEL => VGA_DRVR1_COUNTER_H(6),
      O => Mmux_varindex000023253
    );
  Mrom_varindex0000_rom000028191 : X_LUT4
    generic map(
      INIT => X"080A"
    )
    port map (
      ADR0 => Q_varindex0000(3),
      ADR1 => Q_varindex0000(2),
      ADR2 => Q_varindex0000(0),
      ADR3 => Q_varindex0000(1),
      O => Mrom_varindex0000_rom000028191_922
    );
  Mrom_varindex0000_rom000028192 : X_LUT4
    generic map(
      INIT => X"4511"
    )
    port map (
      ADR0 => Q_varindex0000(0),
      ADR1 => Q_varindex0000(3),
      ADR2 => Q_varindex0000(1),
      ADR3 => Q_varindex0000(2),
      O => Mrom_varindex0000_rom000028192_923
    );
  Mrom_varindex0000_rom00002819_f5 : X_MUX2
    port map (
      IA => Mrom_varindex0000_rom000028192_923,
      IB => Mrom_varindex0000_rom000028191_922,
      SEL => Q_varindex0000(4),
      O => Mrom_varindex0000_rom00002819
    );
  Mrom_varindex0000_rom00002628_SW11 : X_LUT4
    generic map(
      INIT => X"A6D5"
    )
    port map (
      ADR0 => Q_varindex0000(0),
      ADR1 => Q_varindex0000(2),
      ADR2 => Q_varindex0000(3),
      ADR3 => Q_varindex0000(1),
      O => Mrom_varindex0000_rom00002628_SW1
    );
  Mrom_varindex0000_rom00002628_SW1_f5 : X_MUX2
    port map (
      IA => Mrom_varindex0000_rom00002628_SW1,
      IB => DPL_SEG_3_OBUF_397,
      SEL => Q_varindex0000(4),
      O => N552
    );
  Mmux_varindex0000132351 : X_LUT4
    generic map(
      INIT => X"0302"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_H(3),
      ADR1 => VGA_DRVR1_COUNTER_H(4),
      ADR2 => VGA_DRVR1_COUNTER_H(5),
      ADR3 => PICTUREOK(0),
      O => Mmux_varindex0000132351_865
    );
  Mmux_varindex0000132352 : X_LUT3
    generic map(
      INIT => X"C8"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_H(4),
      ADR1 => VGA_DRVR1_COUNTER_H(3),
      ADR2 => VGA_DRVR1_COUNTER_H(5),
      O => Mmux_varindex0000132352_866
    );
  Mmux_varindex000013235_f5 : X_MUX2
    port map (
      IA => Mmux_varindex0000132352_866,
      IB => Mmux_varindex0000132351_865,
      SEL => VGA_DRVR1_COUNTER_H(6),
      O => Mmux_varindex000013235
    );
  CHARBIT_ACT55_SW02_INV_0 : X_INV
    port map (
      I => Mmux_CHARBIT_9_f6_861,
      O => CHARBIT_ACT55_SW01_190
    );
  POS_V_MEMORY_1_921_INV_0 : X_INV
    port map (
      I => N138,
      O => POS_V_MEMORY_1_921
    );
  VGA_DRVR1_COUNTER_RAM_and00002_LUT3_D_BUF : X_BUF
    port map (
      I => VGA_DRVR1_COUNTER_RAM_and00002_1820,
      O => N650
    );
  VGA_DRVR1_COUNTER_RAM_and00002 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_H(7),
      ADR1 => VGA_DRVR1_COUNTER_H(6),
      ADR2 => VGA_DRVR1_COUNTER_H(5),
      O => VGA_DRVR1_COUNTER_RAM_and00002_1820
    );
  SHOWINFO_0_not000221_LUT3_D_BUF : X_BUF
    port map (
      I => N296,
      O => N651
    );
  SHOWINFO_0_not000221 : X_LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      ADR0 => KBRD_DRIVER_KBRD_DATA(3),
      ADR1 => KBRD_DRIVER_KBRD_DATA(6),
      ADR2 => KBRD_DRIVER_KBRD_DATA(2),
      O => N296
    );
  POSIM_cmp_eq0001_SW0_LUT4_L_BUF : X_BUF
    port map (
      I => POSIM_cmp_eq0001_SW0_O,
      O => N481
    );
  POSIM_cmp_eq0001_SW0 : X_LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      ADR0 => IMPOS(22),
      ADR1 => IMPOS(21),
      ADR2 => IMPOS(20),
      ADR3 => IMPOS(19),
      O => POSIM_cmp_eq0001_SW0_O
    );
  ERASE_RAM_0_cmp_eq00001_LUT4_D_BUF : X_BUF
    port map (
      I => ERASE_RAM_0_cmp_eq0000,
      O => N652
    );
  ERASE_RAM_0_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => KBRD_DRIVER_KBRD_DATA(4),
      ADR1 => KBRD_DRIVER_KBRD_DATA(3),
      ADR2 => N144,
      ADR3 => KBRD_DRIVER_KBRD_DATA(5),
      O => ERASE_RAM_0_cmp_eq0000
    );
  VGA_DRVR1_COUNTER_RAM_or00006_LUT4_L_BUF : X_BUF
    port map (
      I => VGA_DRVR1_COUNTER_RAM_or00006_O,
      O => VGA_DRVR1_COUNTER_RAM_or00006_1829
    );
  VGA_DRVR1_COUNTER_RAM_or00006 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_V(6),
      ADR1 => VGA_DRVR1_COUNTER_V(5),
      ADR2 => VGA_DRVR1_COUNTER_V(4),
      ADR3 => VGA_DRVR1_COUNTER_V(3),
      O => VGA_DRVR1_COUNTER_RAM_or00006_O
    );
  RESETCNTDPL_0_mux000033_LUT4_L_BUF : X_BUF
    port map (
      I => RESETCNTDPL_0_mux000033_O,
      O => RESETCNTDPL_0_mux000033_1628
    );
  RESETCNTDPL_0_mux000033 : X_LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      ADR0 => IMPOS_19_cmp_eq0002,
      ADR1 => LOADFLASH(0),
      ADR2 => KBRD_DRIVER_KBRD_DATA(5),
      ADR3 => N174,
      O => RESETCNTDPL_0_mux000033_O
    );
  LOADFLASH_0_not000111_LUT3_D_BUF : X_BUF
    port map (
      I => N10,
      O => N653
    );
  LOADFLASH_0_not000111 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => RESET_CNT_USB(0),
      ADR1 => BTN_IBUF_178,
      ADR2 => ABORT(5),
      O => N10
    );
  PICTUREOK_0_not0001111_LUT4_D_BUF : X_BUF
    port map (
      I => N158,
      O => N654
    );
  PICTUREOK_0_not0001111 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => BTN_IBUF_178,
      ADR1 => ABORT(5),
      ADR2 => RESET_CNT_USB(0),
      ADR3 => USBDRIVER_DATAOK(0),
      O => N158
    );
  ABORT_5_mux0000_SW0_LUT4_L_BUF : X_BUF
    port map (
      I => ABORT_5_mux0000_SW0_O,
      O => N62
    );
  ABORT_5_mux0000_SW0 : X_LUT4
    generic map(
      INIT => X"FF20"
    )
    port map (
      ADR0 => ABORT_5_cmp_eq0000,
      ADR1 => N174,
      ADR2 => INPRES_0_not0001,
      ADR3 => RESETCNTDPL(0),
      O => ABORT_5_mux0000_SW0_O
    );
  USBDRIVER_STEPPNEXT_cmp_eq000111_LUT3_D_BUF : X_BUF
    port map (
      I => N279,
      O => N655
    );
  USBDRIVER_STEPPNEXT_cmp_eq000111 : X_LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      ADR0 => USBDRIVER_STEPPCUR(5),
      ADR1 => USBDRIVER_STEPPCUR(0),
      ADR2 => USBDRIVER_STEPPCUR(1),
      O => N279
    );
  USBDRIVER_STEPPNEXT_cmp_eq000011_LUT3_D_BUF : X_BUF
    port map (
      I => N140,
      O => N656
    );
  USBDRIVER_STEPPNEXT_cmp_eq000011 : X_LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      ADR0 => USBDRIVER_STEPPCUR(7),
      ADR1 => USBDRIVER_STEPPCUR(2),
      ADR2 => USBDRIVER_STEPPCUR(3),
      O => N140
    );
  USBDRIVER_STEPPNEXT_cmp_eq000811_LUT4_D_BUF : X_BUF
    port map (
      I => N285,
      O => N657
    );
  USBDRIVER_STEPPNEXT_cmp_eq000811 : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => USBDRIVER_STEPPCUR(4),
      ADR1 => USBDRIVER_STEPPCUR(5),
      ADR2 => USBDRIVER_STEPPCUR(0),
      ADR3 => USBDRIVER_STEPPCUR(1),
      O => N285
    );
  USBDRIVER_STEPPNEXT_cmp_eq00001_LUT4_D_BUF : X_BUF
    port map (
      I => USBDRIVER_STEPPNEXT_cmp_eq0000,
      O => N658
    );
  USBDRIVER_STEPPNEXT_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => USBDRIVER_STEPPCUR(4),
      ADR1 => USBDRIVER_STEPPCUR(6),
      ADR2 => N279,
      ADR3 => N140,
      O => USBDRIVER_STEPPNEXT_cmp_eq0000
    );
  ABORT_5_cmp_eq000011_LUT4_D_BUF : X_BUF
    port map (
      I => N144,
      O => N659
    );
  ABORT_5_cmp_eq000011 : X_LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      ADR0 => N321,
      ADR1 => KBRD_DRIVER_KBRD_DATA(7),
      ADR2 => KBRD_DRIVER_KBRD_DATA(0),
      ADR3 => KBRD_DRIVER_KBRD_DATA(6),
      O => N144
    );
  USBDRIVER_STEPPNEXT_6_10_LUT4_L_BUF : X_BUF
    port map (
      I => USBDRIVER_STEPPNEXT_6_10_O,
      O => USBDRIVER_STEPPNEXT_6_10_1731
    );
  USBDRIVER_STEPPNEXT_6_10 : X_LUT4
    generic map(
      INIT => X"22F2"
    )
    port map (
      ADR0 => USBDRIVER_STEPPNEXT_cmp_eq0004,
      ADR1 => ASTB_IBUF_172,
      ADR2 => N277,
      ADR3 => USBDRIVER_STEPPCUR(6),
      O => USBDRIVER_STEPPNEXT_6_10_O
    );
  COUNTER_RAM_USB_not000115_LUT4_L_BUF : X_BUF
    port map (
      I => COUNTER_RAM_USB_not000115_O,
      O => COUNTER_RAM_USB_not000115_313
    );
  COUNTER_RAM_USB_not000115 : X_LUT4
    generic map(
      INIT => X"AE04"
    )
    port map (
      ADR0 => PLUS_MEMORY(0),
      ADR1 => N10,
      ADR2 => USBDRIVER_DATAOK(0),
      ADR3 => IMPOS_19_cmp_eq0008,
      O => COUNTER_RAM_USB_not000115_O
    );
  CNTPRSTEP_not00019_LUT4_L_BUF : X_BUF
    port map (
      I => CNTPRSTEP_not00019_O,
      O => CNTPRSTEP_not00019_241
    );
  CNTPRSTEP_not00019 : X_LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      ADR0 => N321,
      ADR1 => CTRL(0),
      ADR2 => ALT(0),
      ADR3 => PRESENTATION(0),
      O => CNTPRSTEP_not00019_O
    );
  CNTPRSTEP_not000181_LUT4_L_BUF : X_BUF
    port map (
      I => CNTPRSTEP_not000181_O,
      O => CNTPRSTEP_not000181_240
    );
  CNTPRSTEP_not000181 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => MNGDPL_cmp_eq0000,
      ADR1 => CNTPRSTEP_not000156_239,
      ADR2 => CNTPRSTEP_not000111_236,
      ADR3 => INPRES_0_not0001,
      O => CNTPRSTEP_not000181_O
    );
  OE_SIGNAL_not0001_SW0_LUT4_L_BUF : X_BUF
    port map (
      I => OE_SIGNAL_not0001_SW0_O,
      O => N771
    );
  OE_SIGNAL_not0001_SW0 : X_LUT4
    generic map(
      INIT => X"0437"
    )
    port map (
      ADR0 => OE_SIGNAL_1479,
      ADR1 => LOADFLASH(0),
      ADR2 => IMPOS_19_cmp_eq0004,
      ADR3 => IMPOS_19_cmp_eq0006,
      O => OE_SIGNAL_not0001_SW0_O
    );
  WE_SIGNAL_not000129_LUT3_L_BUF : X_BUF
    port map (
      I => WE_SIGNAL_not000129_O,
      O => WE_SIGNAL_not000129_2001
    );
  WE_SIGNAL_not000129 : X_LUT3
    generic map(
      INIT => X"C8"
    )
    port map (
      ADR0 => IMPOS_19_cmp_eq0004,
      ADR1 => LOADFLASH(0),
      ADR2 => OE_SIGNAL_1479,
      O => WE_SIGNAL_not000129_O
    );
  OE_SIGNAL_mux000011_LUT3_L_BUF : X_BUF
    port map (
      I => OE_SIGNAL_mux000011_O,
      O => N13
    );
  OE_SIGNAL_mux000011 : X_LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      ADR0 => POSIM_cmp_eq0000,
      ADR1 => NPASOS_SAVE(0),
      ADR2 => COUNTER_RAM_USB_cmp_eq0000,
      O => OE_SIGNAL_mux000011_O
    );
  NORM_NEGA_0_not000211_LUT3_D_BUF : X_BUF
    port map (
      I => N301,
      O => N660
    );
  NORM_NEGA_0_not000211 : X_LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      ADR0 => KBRD_DRIVER_KBRD_DATA(7),
      ADR1 => KBRD_DRIVER_KBRD_DATA(0),
      ADR2 => KBRD_DRIVER_KBRD_DATA(1),
      O => N301
    );
  Madd_IMPOS_22_16_add0000_cy_4_11_LUT4_D_BUF : X_BUF
    port map (
      I => Madd_IMPOS_22_16_add0000_cy_4_Q,
      O => N6611
    );
  Madd_IMPOS_22_16_add0000_cy_4_11 : X_LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      ADR0 => IMPOS(18),
      ADR1 => IMPOS(19),
      ADR2 => IMPOS(20),
      ADR3 => Madd_IMPOS_22_16_add0000_cy_1_Q,
      O => Madd_IMPOS_22_16_add0000_cy_4_Q
    );
  ST_CE_SIGNAL_mux000070_LUT4_L_BUF : X_BUF
    port map (
      I => ST_CE_SIGNAL_mux000070_O,
      O => ST_CE_SIGNAL_mux000070_1679
    );
  ST_CE_SIGNAL_mux000070 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => IMPOS_19_cmp_eq0001,
      ADR1 => ST_CE_SIGNAL_and0005,
      ADR2 => CNTPROCCES(3),
      ADR3 => CNTPROCCES(2),
      O => ST_CE_SIGNAL_mux000070_O
    );
  IMPOS_19_cmp_eq0007111_LUT2_D_BUF : X_BUF
    port map (
      I => ST_CE_SIGNAL_and0005,
      O => N662
    );
  IMPOS_19_cmp_eq0007111 : X_LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      ADR0 => CNTPROCCES(1),
      ADR1 => CNTPROCCES(0),
      O => ST_CE_SIGNAL_and0005
    );
  WE_SIGNAL_mux0001211_LUT3_D_BUF : X_BUF
    port map (
      I => N146,
      O => N663
    );
  WE_SIGNAL_mux0001211 : X_LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      ADR0 => NPASOS_SAVE(2),
      ADR1 => NPASOS_SAVE(1),
      ADR2 => NPASOS_SAVE(0),
      O => N146
    );
  PICTUREOK_0_mux000023_LUT4_L_BUF : X_BUF
    port map (
      I => PICTUREOK_0_mux000023_O,
      O => PICTUREOK_0_mux000023_1496
    );
  PICTUREOK_0_mux000023 : X_LUT4
    generic map(
      INIT => X"88C8"
    )
    port map (
      ADR0 => PICTUREOK_0_mux00009_1500,
      ADR1 => LOADFLASH(0),
      ADR2 => N311,
      ADR3 => N146,
      O => PICTUREOK_0_mux000023_O
    );
  CNTPRSTEP_not000161_LUT3_D_BUF : X_BUF
    port map (
      I => N332,
      O => N664
    );
  CNTPRSTEP_not000161 : X_LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      ADR0 => USBDRIVER_ABORTEDSN(0),
      ADR1 => PLUS_MEMORY(0),
      ADR2 => USBDRIVER_DATAOK(0),
      O => N332
    );
  IM_16_8_BITS_0_mux00003_LUT4_L_BUF : X_BUF
    port map (
      I => IM_16_8_BITS_0_mux00003_O,
      O => N136
    );
  IM_16_8_BITS_0_mux00003 : X_LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      ADR0 => MNGDPL_cmp_eq0000,
      ADR1 => IMPOS_19_or0017,
      ADR2 => IMPOS_19_or0003,
      ADR3 => N831,
      O => IM_16_8_BITS_0_mux00003_O
    );
  IMPOS_19_cmp_eq0014_SW0_LUT4_L_BUF : X_BUF
    port map (
      I => IMPOS_19_cmp_eq0014_SW0_O,
      O => N871
    );
  IMPOS_19_cmp_eq0014_SW0 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => IMPOS(22),
      ADR1 => IMPOS(21),
      ADR2 => IMPOS(20),
      ADR3 => IMPOS(19),
      O => IMPOS_19_cmp_eq0014_SW0_O
    );
  Msub_POSIM_addsub0000_cy_2_11_LUT3_D_BUF : X_BUF
    port map (
      I => Msub_POSIM_addsub0000_cy(2),
      O => N665
    );
  Msub_POSIM_addsub0000_cy_2_11 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => POSIM(0),
      ADR1 => POSIM(2),
      ADR2 => POSIM(1),
      O => Msub_POSIM_addsub0000_cy(2)
    );
  POSIM_mux0004_0_131_LUT2_D_BUF : X_BUF
    port map (
      I => WE_SIGNAL_mux00018,
      O => N666
    );
  POSIM_mux0004_0_131 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => ERASE_RAM(0),
      ADR1 => PICTUREOK(0),
      O => WE_SIGNAL_mux00018
    );
  POSIM_not0001_SW0_LUT4_L_BUF : X_BUF
    port map (
      I => POSIM_not0001_SW0_O,
      O => N911
    );
  POSIM_not0001_SW0 : X_LUT4
    generic map(
      INIT => X"1B0A"
    )
    port map (
      ADR0 => LOADFLASH(0),
      ADR1 => N152,
      ADR2 => N109,
      ADR3 => N19,
      O => POSIM_not0001_SW0_O
    );
  IMPOS_19_not0001121_LUT3_L_BUF : X_BUF
    port map (
      I => IMPOS_19_not0001121_O,
      O => IMPOS_19_not0001121_468
    );
  IMPOS_19_not0001121 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => PLUS_MEMORY(0),
      ADR1 => IMPOS_19_cmp_eq0008,
      ADR2 => COUNTER_RAM_USB_cmp_eq0000,
      O => IMPOS_19_not0001121_O
    );
  IMPOS_19_not0001126_LUT2_L_BUF : X_BUF
    port map (
      I => IMPOS_19_not0001126_O,
      O => IMPOS_19_not0001126_469
    );
  IMPOS_19_not0001126 : X_LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      ADR0 => CNTPRSTEP(0),
      ADR1 => CNTPRSTEP(1),
      O => IMPOS_19_not0001126_O
    );
  CNTPRSTEP_not000121_LUT2_D_BUF : X_BUF
    port map (
      I => WE_SIGNAL_mux000174,
      O => N667
    );
  CNTPRSTEP_not000121 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => LOADFLASH(0),
      ADR1 => ERASE_RAM(0),
      O => WE_SIGNAL_mux000174
    );
  Msub_IMPOS_22_16_sub0001_cy_2_11_LUT3_D_BUF : X_BUF
    port map (
      I => Msub_IMPOS_22_16_sub0001_cy_2_Q,
      O => N668
    );
  Msub_IMPOS_22_16_sub0001_cy_2_11 : X_LUT3
    generic map(
      INIT => X"C8"
    )
    port map (
      ADR0 => IMPOS(16),
      ADR1 => IMPOS(18),
      ADR2 => IMPOS(17),
      O => Msub_IMPOS_22_16_sub0001_cy_2_Q
    );
  IMPOS_19_cmp_eq001111_LUT3_D_BUF : X_BUF
    port map (
      I => N292,
      O => N669
    );
  IMPOS_19_cmp_eq001111 : X_LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      ADR0 => KBRD_DRIVER_KBRD_DATA(6),
      ADR1 => KBRD_DRIVER_KBRD_DATA(2),
      ADR2 => KBRD_DRIVER_KBRD_DATA(3),
      O => N292
    );
  ST_RP_SIGNAL_mux000011_LUT4_D_BUF : X_BUF
    port map (
      I => N17,
      O => N670
    );
  ST_RP_SIGNAL_mux000011 : X_LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      ADR0 => CNTPROCCES(2),
      ADR1 => CNTPROCCES(3),
      ADR2 => IMPOS_19_cmp_eq0001,
      ADR3 => ST_CE_SIGNAL_and0005,
      O => N17
    );
  OE_SIGNAL_mux000022_LUT4_D_BUF : X_BUF
    port map (
      I => N286,
      O => N671
    );
  OE_SIGNAL_mux000022 : X_LUT4
    generic map(
      INIT => X"002C"
    )
    port map (
      ADR0 => IMPOS_19_cmp_eq0001,
      ADR1 => CNTPROCCES(1),
      ADR2 => CNTPROCCES(3),
      ADR3 => N931,
      O => N286
    );
  IMPOS_19_cmp_eq00064_LUT4_D_BUF : X_BUF
    port map (
      I => IMPOS_19_cmp_eq00064_458,
      O => N672
    );
  IMPOS_19_cmp_eq00064 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => DELAYFLASH(9),
      ADR1 => DELAYFLASH(8),
      ADR2 => DELAYFLASH(3),
      ADR3 => DELAYFLASH(2),
      O => IMPOS_19_cmp_eq00064_458
    );
  LOADFLASH_0_not000115_LUT4_L_BUF : X_BUF
    port map (
      I => LOADFLASH_0_not000115_O,
      O => LOADFLASH_0_not000115_597
    );
  LOADFLASH_0_not000115 : X_LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      ADR0 => N174,
      ADR1 => IMPOS_19_and0018,
      ADR2 => IMPOS_19_cmp_eq0002,
      ADR3 => INPRES_0_not0001,
      O => LOADFLASH_0_not000115_O
    );
  Madd_IMPOS_22_16_add0000_cy_1_1_LUT2_D_BUF : X_BUF
    port map (
      I => Madd_IMPOS_22_16_add0000_cy_1_Q,
      O => N673
    );
  Madd_IMPOS_22_16_add0000_cy_1_1 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => IMPOS(17),
      ADR1 => IMPOS(16),
      O => Madd_IMPOS_22_16_add0000_cy_1_Q
    );
  IMPOS_19_or00031_LUT2_D_BUF : X_BUF
    port map (
      I => IMPOS_19_or0003,
      O => N674
    );
  IMPOS_19_or00031 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => ERASEFLASH_SIGNAL(0),
      ADR1 => ERASEFLASH(0),
      O => IMPOS_19_or0003
    );
  ERASEFLASH_SIGNAL_0_not0001211_LUT2_D_BUF : X_BUF
    port map (
      I => N318,
      O => N675
    );
  ERASEFLASH_SIGNAL_0_not0001211 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => ENABLE_KB,
      ADR1 => BTN_IBUF_178,
      O => N318
    );
  IMPOS_19_and00221_LUT3_D_BUF : X_BUF
    port map (
      I => IMPOS_19_and0022,
      O => N676
    );
  IMPOS_19_and00221 : X_LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      ADR0 => PRESENTATION(0),
      ADR1 => PICTUREOK(0),
      ADR2 => LOADFLASH(0),
      O => IMPOS_19_and0022
    );
  IMPOS_19_cmp_eq0001792_LUT4_D_BUF : X_BUF
    port map (
      I => IMPOS_19_cmp_eq0001792_451,
      O => N677
    );
  IMPOS_19_cmp_eq0001792 : X_LUT4
    generic map(
      INIT => X"0990"
    )
    port map (
      ADR0 => IMPOS(17),
      ADR1 => IMPOS_BLOCKERASE(1),
      ADR2 => IMPOS_BLOCKERASE(2),
      ADR3 => IMPOS(18),
      O => IMPOS_19_cmp_eq0001792_451
    );
  SHOWINFO_0_not000211_LUT3_D_BUF : X_BUF
    port map (
      I => IMPOS_19_and0018,
      O => N678
    );
  SHOWINFO_0_not000211 : X_LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      ADR0 => KBRD_DRIVER_KBRD_DATA(7),
      ADR1 => KBRD_DRIVER_KBRD_DATA(4),
      ADR2 => KBRD_DRIVER_KBRD_DATA(5),
      O => IMPOS_19_and0018
    );
  RESETCNTDPL_0_mux0000131_LUT2_D_BUF : X_BUF
    port map (
      I => N321,
      O => N679
    );
  RESETCNTDPL_0_mux0000131 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => KBRD_DRIVER_KBRD_DATA(1),
      ADR1 => KBRD_DRIVER_KBRD_DATA(2),
      O => N321
    );
  IMPOS_19_cmp_eq00032_LUT2_D_BUF : X_BUF
    port map (
      I => IMPOS_19_cmp_eq0003,
      O => N680
    );
  IMPOS_19_cmp_eq00032 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => N145,
      ADR1 => DELAYFLASH(0),
      O => IMPOS_19_cmp_eq0003
    );
  RESETCNTDPL_0_mux0000111_LUT3_D_BUF : X_BUF
    port map (
      I => N139,
      O => N681
    );
  RESETCNTDPL_0_mux0000111 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => KBRD_DRIVER_KBRD_DATA(6),
      ADR1 => KBRD_DRIVER_KBRD_DATA(3),
      ADR2 => KBRD_DRIVER_KBRD_DATA(0),
      O => N139
    );
  IMPOS_16_mux0004121_LUT3_D_BUF : X_BUF
    port map (
      I => N109,
      O => N682
    );
  IMPOS_16_mux0004121 : X_LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      ADR0 => COUNTER_RAM_USB_cmp_eq0000,
      ADR1 => IMPOS_19_cmp_eq0004,
      ADR2 => N146,
      O => N109
    );
  POSIM_mux0004_2_31_LUT4_D_BUF : X_BUF
    port map (
      I => N115,
      O => N683
    );
  POSIM_mux0004_2_31 : X_LUT4
    generic map(
      INIT => X"F8F0"
    )
    port map (
      ADR0 => COUNTER_RAM_USB_cmp_eq0000,
      ADR1 => N88,
      ADR2 => N250,
      ADR3 => N1,
      O => N115
    );
  PRESENTATION_0_mux000021_LUT2_D_BUF : X_BUF
    port map (
      I => N174,
      O => N684
    );
  PRESENTATION_0_mux000021 : X_LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      ADR0 => ALT(0),
      ADR1 => CTRL(0),
      O => N174
    );
  IMPOS_19_or00171_LUT2_D_BUF : X_BUF
    port map (
      I => IMPOS_19_or0017,
      O => N685
    );
  IMPOS_19_or00171 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => RESET_CNT_USB(0),
      ADR1 => ABORT(5),
      O => IMPOS_19_or0017
    );
  KBRD_DRIVER_ENABLE_KB_0_and000011_LUT3_D_BUF : X_BUF
    port map (
      I => KBRD_DRIVER_N2,
      O => N686
    );
  KBRD_DRIVER_ENABLE_KB_0_and000011 : X_LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      ADR0 => KBRD_DRIVER_COUNTER_KB(3),
      ADR1 => KBRD_DRIVER_COUNTER_KB(0),
      ADR2 => RESET(0),
      O => KBRD_DRIVER_N2
    );
  POSIM_mux0004_2_51_LUT4_D_BUF : X_BUF
    port map (
      I => N337,
      O => N687
    );
  POSIM_mux0004_2_51 : X_LUT4
    generic map(
      INIT => X"5450"
    )
    port map (
      ADR0 => BTN_IBUF_178,
      ADR1 => N281,
      ADR2 => N117,
      ADR3 => N1,
      O => N337
    );
  IMPOS_18_mux000431_LUT4_D_BUF : X_BUF
    port map (
      I => N335,
      O => N688
    );
  IMPOS_18_mux000431 : X_LUT4
    generic map(
      INIT => X"5450"
    )
    port map (
      ADR0 => BTN_IBUF_178,
      ADR1 => N281,
      ADR2 => N116,
      ADR3 => N1,
      O => N335
    );
  IMPOS_16_mux0004411_LUT4_D_BUF : X_BUF
    port map (
      I => N116,
      O => N689
    );
  IMPOS_16_mux0004411 : X_LUT4
    generic map(
      INIT => X"FF04"
    )
    port map (
      ADR0 => IMPOS_19_or0003,
      ADR1 => N124,
      ADR2 => N153,
      ADR3 => N131,
      O => N116
    );
  POSIM_mux0004_0_311_LUT4_D_BUF : X_BUF
    port map (
      I => POSIM_mux0004_0_311_1527,
      O => N690
    );
  POSIM_mux0004_0_311 : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => USBDRIVER_ABORTEDSN(0),
      ADR1 => LOADFLASH(0),
      ADR2 => IMPOS_19_cmp_eq0008,
      ADR3 => N143,
      O => POSIM_mux0004_0_311_1527
    );
  IMPOS_19_cmp_eq0003131_LUT4_D_BUF : X_BUF
    port map (
      I => IMPOS_19_cmp_eq0003131_454,
      O => N691
    );
  IMPOS_19_cmp_eq0003131 : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => DELAYFLASH(3),
      ADR1 => DELAYFLASH(8),
      ADR2 => DELAYFLASH(6),
      ADR3 => DELAYFLASH(9),
      O => IMPOS_19_cmp_eq0003131_454
    );
  IMPOS_16_mux000413_LUT4_L_BUF : X_BUF
    port map (
      I => IMPOS_16_mux000413_O,
      O => IMPOS_16_mux000413_424
    );
  IMPOS_16_mux000413 : X_LUT4
    generic map(
      INIT => X"D5C0"
    )
    port map (
      ADR0 => IMPOS_19_cmp_eq0014_462,
      ADR1 => IMPOS_16_mux00043_426,
      ADR2 => N114,
      ADR3 => N132,
      O => IMPOS_16_mux000413_O
    );
  POSIM_mux0004_3_50_LUT4_D_BUF : X_BUF
    port map (
      I => POSIM_mux0004_2_69,
      O => N692
    );
  POSIM_mux0004_3_50 : X_LUT4
    generic map(
      INIT => X"7350"
    )
    port map (
      ADR0 => POSIM_cmp_eq0001_1519,
      ADR1 => POSIM_cmp_eq0000,
      ADR2 => N337,
      ADR3 => N115,
      O => POSIM_mux0004_2_69
    );
  POSIM_mux0004_1_10_LUT4_L_BUF : X_BUF
    port map (
      I => POSIM_mux0004_1_10_O,
      O => POSIM_mux0004_1_10_1533
    );
  POSIM_mux0004_1_10 : X_LUT4
    generic map(
      INIT => X"F1F0"
    )
    port map (
      ADR0 => POSIM(3),
      ADR1 => Msub_POSIM_addsub0000_cy(2),
      ADR2 => N113,
      ADR3 => N132,
      O => POSIM_mux0004_1_10_O
    );
  IMPOS_17_mux000450_LUT4_L_BUF : X_BUF
    port map (
      I => IMPOS_17_mux000450_O,
      O => IMPOS_17_mux000450_432
    );
  IMPOS_17_mux000450 : X_LUT4
    generic map(
      INIT => X"D5C0"
    )
    port map (
      ADR0 => POSIM_cmp_eq0000,
      ADR1 => IMPOS_16_mux00043_426,
      ADR2 => N114,
      ADR3 => N66,
      O => IMPOS_17_mux000450_O
    );
  POSIM_mux0004_2_11103_LUT4_D_BUF : X_BUF
    port map (
      I => POSIM_mux0004_2_11103_1536,
      O => N693
    );
  POSIM_mux0004_2_11103 : X_LUT4
    generic map(
      INIT => X"BA30"
    )
    port map (
      ADR0 => POSIM_mux0004_2_1194_1541,
      ADR1 => IMPOS_19_and0022,
      ADR2 => IMPOS_19_cmp_eq0013,
      ADR3 => IMPOS_19_cmp_eq0002,
      O => POSIM_mux0004_2_11103_1536
    );
  POSIM_mux0004_2_11106_LUT3_L_BUF : X_BUF
    port map (
      I => POSIM_mux0004_2_11106_O,
      O => N48
    );
  POSIM_mux0004_2_11106 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => POSIM_mux0004_2_1143_1539,
      ADR1 => POSIM_mux0004_2_1174_1540,
      ADR2 => POSIM_mux0004_2_11103_1536,
      O => POSIM_mux0004_2_11106_O
    );
  POSIM_mux0004_0_1510_LUT3_L_BUF : X_BUF
    port map (
      I => POSIM_mux0004_0_1510_O,
      O => POSIM_mux0004_0_1510_1524
    );
  POSIM_mux0004_0_1510 : X_LUT3
    generic map(
      INIT => X"EC"
    )
    port map (
      ADR0 => POSIM_mux0004_0_8_1531,
      ADR1 => N113,
      ADR2 => N132,
      O => POSIM_mux0004_0_1510_O
    );
  IMPOS_19_mux000413_LUT3_L_BUF : X_BUF
    port map (
      I => IMPOS_19_mux000413_O,
      O => IMPOS_19_mux000413_464
    );
  IMPOS_19_mux000413 : X_LUT3
    generic map(
      INIT => X"90"
    )
    port map (
      ADR0 => IMPOS(19),
      ADR1 => Msub_IMPOS_22_16_sub0001_cy_2_Q,
      ADR2 => N132,
      O => IMPOS_19_mux000413_O
    );
  IMPOS_22_mux000426_LUT4_L_BUF : X_BUF
    port map (
      I => IMPOS_22_mux000426_O,
      O => IMPOS_22_mux000426_493
    );
  IMPOS_22_mux000426 : X_LUT4
    generic map(
      INIT => X"A900"
    )
    port map (
      ADR0 => IMPOS(22),
      ADR1 => IMPOS(21),
      ADR2 => Msub_IMPOS_22_16_sub0001_cy_4_Q,
      ADR3 => N132,
      O => IMPOS_22_mux000426_O
    );
  IMPOS_18_mux000417_LUT4_L_BUF : X_BUF
    port map (
      I => IMPOS_18_mux000417_O,
      O => IMPOS_18_mux000417_438
    );
  IMPOS_18_mux000417 : X_LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      ADR0 => N319,
      ADR1 => IMPOS_19_cmp_eq0001,
      ADR2 => IMPOS_22_16_add0000(2),
      ADR3 => IMPOS(18),
      O => IMPOS_18_mux000417_O
    );
  IMPOS_18_mux0004113_LUT4_L_BUF : X_BUF
    port map (
      I => IMPOS_18_mux0004113_O,
      O => IMPOS_18_mux0004113_437
    );
  IMPOS_18_mux0004113 : X_LUT4
    generic map(
      INIT => X"7530"
    )
    port map (
      ADR0 => POSIM_cmp_eq0001_1519,
      ADR1 => POSIM_cmp_eq0000,
      ADR2 => N66,
      ADR3 => N335,
      O => IMPOS_18_mux0004113_O
    );
  IMPOS_19_and00001_LUT4_D_BUF : X_BUF
    port map (
      I => IMPOS_19_and0000,
      O => N694
    );
  IMPOS_19_and00001 : X_LUT4
    generic map(
      INIT => X"8CCC"
    )
    port map (
      ADR0 => DELAYFLASH(0),
      ADR1 => WE_SIGNAL_mux00018,
      ADR2 => COUNTER_RAM_USB_cmp_eq0000,
      ADR3 => N145,
      O => IMPOS_19_and0000
    );
  POSIM_mux0004_0_25_SW0_LUT3_L_BUF : X_BUF
    port map (
      I => POSIM_mux0004_0_25_SW0_O,
      O => N213
    );
  POSIM_mux0004_0_25_SW0 : X_LUT3
    generic map(
      INIT => X"E0"
    )
    port map (
      ADR0 => POSIM(3),
      ADR1 => Msub_POSIM_addsub0000_cy(2),
      ADR2 => N132,
      O => POSIM_mux0004_0_25_SW0_O
    );
  IMPOS_19_mux00045_LUT4_D_BUF : X_BUF
    port map (
      I => N132,
      O => N695
    );
  IMPOS_19_mux00045 : X_LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      ADR0 => N215,
      ADR1 => IMPOS_19_and0022,
      ADR2 => IMPOS_19_cmp_eq0013,
      ADR3 => INPRES_0_not0001,
      O => N132
    );
  KBRD_DRIVER_ENABLE_KB_0_and00001_LUT4_D_BUF : X_BUF
    port map (
      I => ENABLE_KB,
      O => N696
    );
  KBRD_DRIVER_ENABLE_KB_0_and00001 : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => KBRD_DRIVER_COUNTER_KB(1),
      ADR1 => KBRD_DRIVER_COUNTER_KB(2),
      ADR2 => KBRD_DRIVER_WT_KB(0),
      ADR3 => KBRD_DRIVER_N2,
      O => ENABLE_KB
    );
  IMPOS_16_mux0004131_LUT4_D_BUF : X_BUF
    port map (
      I => N143,
      O => N697
    );
  IMPOS_16_mux0004131 : X_LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      ADR0 => ERASEFLASH_SIGNAL(0),
      ADR1 => ERASEFLASH(0),
      ADR2 => PLUS_MEMORY(0),
      ADR3 => ERASE_RAM(0),
      O => N143
    );
  IMPOS_16_mux00044111_LUT4_D_BUF : X_BUF
    port map (
      I => N131,
      O => N698
    );
  IMPOS_16_mux00044111 : X_LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      ADR0 => N233,
      ADR1 => IMPOS_19_cmp_eq0013,
      ADR2 => IMPOS_19_and0022,
      ADR3 => N124,
      O => N131
    );
  USBDRIVER_STEPPNEXT_0_237_LUT4_D_BUF : X_BUF
    port map (
      I => N251,
      O => N699
    );
  USBDRIVER_STEPPNEXT_0_237 : X_LUT4
    generic map(
      INIT => X"FF20"
    )
    port map (
      ADR0 => USBDRIVER_STEPPCUR(6),
      ADR1 => DSTB_IBUF_399,
      ADR2 => N278,
      ADR3 => USBDRIVER_STEPPNEXT_0_230_1721,
      O => N251
    );
  IMPOS_19_cmp_eq0001726_SW0_LUT2_L_BUF : X_BUF
    port map (
      I => IMPOS_19_cmp_eq0001726_SW0_O,
      O => N244
    );
  IMPOS_19_cmp_eq0001726_SW0 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => IMPOS_BLOCKERASE(6),
      ADR1 => IMPOS(22),
      O => IMPOS_19_cmp_eq0001726_SW0_O
    );
  IMPOS_19_cmp_eq0001753_SW0_LUT2_L_BUF : X_BUF
    port map (
      I => IMPOS_19_cmp_eq0001753_SW0_O,
      O => N2481
    );
  IMPOS_19_cmp_eq0001753_SW0 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => IMPOS_BLOCKERASE(4),
      ADR1 => IMPOS(20),
      O => IMPOS_19_cmp_eq0001753_SW0_O
    );
  USBDRIVER_STEPPNEXT_cmp_eq00021_SW0_LUT4_L_BUF : X_BUF
    port map (
      I => USBDRIVER_STEPPNEXT_cmp_eq00021_SW0_O,
      O => N661
    );
  USBDRIVER_STEPPNEXT_cmp_eq00021_SW0 : X_LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      ADR0 => USBDRIVER_STEPPCUR(0),
      ADR1 => USBDRIVER_STEPPCUR(7),
      ADR2 => USBDRIVER_STEPPCUR(2),
      ADR3 => USBDRIVER_STEPPCUR(3),
      O => USBDRIVER_STEPPNEXT_cmp_eq00021_SW0_O
    );
  USBDRIVER_STEPPNEXT_cmp_eq00031_SW0_LUT4_L_BUF : X_BUF
    port map (
      I => USBDRIVER_STEPPNEXT_cmp_eq00031_SW0_O,
      O => N641
    );
  USBDRIVER_STEPPNEXT_cmp_eq00031_SW0 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => USBDRIVER_STEPPCUR(7),
      ADR1 => USBDRIVER_STEPPCUR(2),
      ADR2 => USBDRIVER_STEPPCUR(3),
      ADR3 => USBDRIVER_STEPPCUR(0),
      O => USBDRIVER_STEPPNEXT_cmp_eq00031_SW0_O
    );
  IMPOS_16_mux000442_LUT4_D_BUF : X_BUF
    port map (
      I => N281,
      O => N700
    );
  IMPOS_16_mux000442 : X_LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      ADR0 => MNGDPL_cmp_eq0000,
      ADR1 => N831,
      ADR2 => IMPOS_19_or0017,
      ADR3 => N254,
      O => N281
    );
  IMPOS_16_mux0004147_SW1_LUT4_D_BUF : X_BUF
    port map (
      I => N240,
      O => N701
    );
  IMPOS_16_mux0004147_SW1 : X_LUT4
    generic map(
      INIT => X"13B3"
    )
    port map (
      ADR0 => COUNTER_RAM_USB_cmp_eq0000,
      ADR1 => N259,
      ADR2 => IMPOS_19_cmp_eq0004,
      ADR3 => N260,
      O => N240
    );
  POSIM_mux0004_2_12_LUT4_D_BUF : X_BUF
    port map (
      I => N1,
      O => N702
    );
  POSIM_mux0004_2_12 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => IMPOS_16_mux0004636_427,
      ADR1 => POSIM_mux0004_2_1174_1540,
      ADR2 => POSIM_mux0004_2_1143_1539,
      ADR3 => POSIM_mux0004_2_11103_1536,
      O => N1
    );
  IMPOS_19_mux000431_SW1_LUT4_L_BUF : X_BUF
    port map (
      I => IMPOS_19_mux000431_SW1_O,
      O => N2671
    );
  IMPOS_19_mux000431_SW1 : X_LUT4
    generic map(
      INIT => X"3373"
    )
    port map (
      ADR0 => BTN_IBUF_178,
      ADR1 => N319,
      ADR2 => N172,
      ADR3 => N124,
      O => IMPOS_19_mux000431_SW1_O
    );
  IMPOS_19_mux000491_LUT4_D_BUF : X_BUF
    port map (
      I => N186,
      O => N703
    );
  IMPOS_19_mux000491 : X_LUT4
    generic map(
      INIT => X"E4F0"
    )
    port map (
      ADR0 => N172,
      ADR1 => N270,
      ADR2 => N269,
      ADR3 => N0,
      O => N186
    );
  POSIM_mux0004_0_174_SW0_LUT2_L_BUF : X_BUF
    port map (
      I => POSIM_mux0004_0_174_SW0_O,
      O => N272
    );
  POSIM_mux0004_0_174_SW0 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => INPRES_0_not0001,
      ADR1 => N0,
      O => POSIM_mux0004_0_174_SW0_O
    );
  IMPOS_21_mux000458_SW0_LUT4_L_BUF : X_BUF
    port map (
      I => IMPOS_21_mux000458_SW0_O,
      O => N217
    );
  IMPOS_21_mux000458_SW0 : X_LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      ADR0 => IMPOS_21_mux000422_482,
      ADR1 => N312,
      ADR2 => N2771,
      ADR3 => IMPOS_21_mux000413_481,
      O => IMPOS_21_mux000458_SW0_O
    );
  IMPOS_19_not000119_LUT4_L_BUF : X_BUF
    port map (
      I => IMPOS_19_not000119_O,
      O => IMPOS_19_not000119_471
    );
  IMPOS_19_not000119 : X_LUT4
    generic map(
      INIT => X"4703"
    )
    port map (
      ADR0 => USBDRIVER_ABORTEDSN(0),
      ADR1 => N2861,
      ADR2 => N172,
      ADR3 => N19,
      O => IMPOS_19_not000119_O
    );
  N3191_LUT4_D_BUF : X_BUF
    port map (
      I => N319,
      O => N704
    );
  N3191 : X_LUT4
    generic map(
      INIT => X"0302"
    )
    port map (
      ADR0 => ERASEFLASH_SIGNAL(0),
      ADR1 => LOADFLASH(0),
      ADR2 => ERASE_RAM(0),
      ADR3 => ERASEFLASH(0),
      O => N319
    );
  POSIM_mux0004_4_5_LUT4_L_BUF : X_BUF
    port map (
      I => POSIM_mux0004_4_5_O,
      O => POSIM_mux0004_4_5_1553
    );
  POSIM_mux0004_4_5 : X_LUT4
    generic map(
      INIT => X"FE00"
    )
    port map (
      ADR0 => POSIM_mux0004_0_15_1523,
      ADR1 => POSIM_mux0004_0_168_1526,
      ADR2 => POSIM_mux0004_0_127_1522,
      ADR3 => N3131,
      O => POSIM_mux0004_4_5_O
    );
  POSIM_mux0004_3_5_LUT4_L_BUF : X_BUF
    port map (
      I => POSIM_mux0004_3_5_O,
      O => POSIM_mux0004_3_5_1549
    );
  POSIM_mux0004_3_5 : X_LUT4
    generic map(
      INIT => X"FE00"
    )
    port map (
      ADR0 => POSIM_mux0004_0_15_1523,
      ADR1 => POSIM_mux0004_0_168_1526,
      ADR2 => POSIM_mux0004_0_127_1522,
      ADR3 => N315,
      O => POSIM_mux0004_3_5_O
    );
  POSIM_mux0004_0_174_SW3_LUT3_L_BUF : X_BUF
    port map (
      I => POSIM_mux0004_0_174_SW3_O,
      O => N317
    );
  POSIM_mux0004_0_174_SW3 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => POSIM(2),
      ADR1 => INPRES_0_not0001,
      ADR2 => N1,
      O => POSIM_mux0004_0_174_SW3_O
    );
  POSIM_mux0004_2_12_SW1_LUT3_L_BUF : X_BUF
    port map (
      I => POSIM_mux0004_2_12_SW1_O,
      O => N3231
    );
  POSIM_mux0004_2_12_SW1 : X_LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      ADR0 => BTN_IBUF_178,
      ADR1 => N172,
      ADR2 => N124,
      O => POSIM_mux0004_2_12_SW1_O
    );
  IMPOS_16_mux0004681_LUT4_D_BUF : X_BUF
    port map (
      I => N125,
      O => N705
    );
  IMPOS_16_mux0004681 : X_LUT4
    generic map(
      INIT => X"FDEC"
    )
    port map (
      ADR0 => N239,
      ADR1 => IMPOS_16_mux0004670_429,
      ADR2 => N3291,
      ADR3 => N3281,
      O => N125
    );
  IMPOS_19_mux000481_LUT4_D_BUF : X_BUF
    port map (
      I => N184,
      O => N706
    );
  IMPOS_19_mux000481 : X_LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      ADR0 => IMPOS_16_mux0004121_422,
      ADR1 => N0,
      ADR2 => INPRES_0_not0001,
      ADR3 => N331,
      O => N184
    );
  IMPOS_19_cmp_eq00017121_LUT4_D_BUF : X_BUF
    port map (
      I => IMPOS_19_cmp_eq0001,
      O => N707
    );
  IMPOS_19_cmp_eq00017121 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => N333,
      ADR1 => IMPOS_19_cmp_eq0001792_451,
      ADR2 => IMPOS_19_cmp_eq0001726_449,
      ADR3 => IMPOS_19_cmp_eq0001753_450,
      O => IMPOS_19_cmp_eq0001
    );
  IMPOS_19_mux000422_SW4_LUT3_L_BUF : X_BUF
    port map (
      I => IMPOS_19_mux000422_SW4_O,
      O => N343
    );
  IMPOS_19_mux000422_SW4 : X_LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      ADR0 => IMPOS_22_16_add0000(3),
      ADR1 => POSIM_cmp_eq0000,
      ADR2 => N118,
      O => IMPOS_19_mux000422_SW4_O
    );
  IM_16_8_BITS_0_mux000049_LUT4_L_BUF : X_BUF
    port map (
      I => IM_16_8_BITS_0_mux000049_O,
      O => IM_16_8_BITS_0_mux000049_516
    );
  IM_16_8_BITS_0_mux000049 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => PRESENTATION(0),
      ADR1 => IM_16_8_BITS_0_mux000014_510,
      ADR2 => IM_16_8_BITS_0_mux000030_514,
      ADR3 => IM_16_8_BITS_0_mux000038_515,
      O => IM_16_8_BITS_0_mux000049_O
    );
  VGA_DRVR1_COUNTER_V_cmp_eq000041_SW0_LUT4_L_BUF : X_BUF
    port map (
      I => VGA_DRVR1_COUNTER_V_cmp_eq000041_SW0_O,
      O => N348
    );
  VGA_DRVR1_COUNTER_V_cmp_eq000041_SW0 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_H_CUR(3),
      ADR1 => VGA_DRVR1_COUNTER_H_CUR(2),
      ADR2 => VGA_DRVR1_COUNTER_H_CUR(1),
      ADR3 => VGA_DRVR1_COUNTER_H_CUR(0),
      O => VGA_DRVR1_COUNTER_V_cmp_eq000041_SW0_O
    );
  OE_SIGNAL_mux000082_LUT4_L_BUF : X_BUF
    port map (
      I => OE_SIGNAL_mux000082_O,
      O => OE_SIGNAL_mux000082_1482
    );
  OE_SIGNAL_mux000082 : X_LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      ADR0 => NPASOS_SAVE(1),
      ADR1 => POSIM_cmp_eq0000,
      ADR2 => NPASOS_SAVE(0),
      ADR3 => COUNTER_RAM_USB_cmp_eq0000,
      O => OE_SIGNAL_mux000082_O
    );
  ST_CE_SIGNAL_and0003_SW0_LUT4_D_BUF : X_BUF
    port map (
      I => MT_CE_SIGNAL_not00015,
      O => N708
    );
  ST_CE_SIGNAL_and0003_SW0 : X_LUT4
    generic map(
      INIT => X"EFEE"
    )
    port map (
      ADR0 => USBDRIVER_ABORTEDSN(0),
      ADR1 => IMPOS_19_or0003,
      ADR2 => PLUS_MEMORY(0),
      ADR3 => N158,
      O => MT_CE_SIGNAL_not00015
    );
  Madd_IMPOS_22_16_add0000_xor_3_11_LUT4_D_BUF : X_BUF
    port map (
      I => IMPOS_22_16_add0000(3),
      O => N709
    );
  Madd_IMPOS_22_16_add0000_xor_3_11 : X_LUT4
    generic map(
      INIT => X"5666"
    )
    port map (
      ADR0 => IMPOS(19),
      ADR1 => IMPOS(18),
      ADR2 => IMPOS(16),
      ADR3 => IMPOS(17),
      O => IMPOS_22_16_add0000(3)
    );
  VGA_DRVR1_COUNTER_H_CUR_cmp_eq0000_LUT4_D_BUF : X_BUF
    port map (
      I => VGA_DRVR1_COUNTER_H_CUR_cmp_eq0000_1797,
      O => N710
    );
  VGA_DRVR1_COUNTER_H_CUR_cmp_eq0000 : X_LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      ADR0 => VGA_DRVR1_N13,
      ADR1 => VGA_DRVR1_N12,
      ADR2 => VGA_DRVR1_COUNTER_H(3),
      ADR3 => VGA_DRVR1_COUNTER_RAM_and00002_1820,
      O => VGA_DRVR1_COUNTER_H_CUR_cmp_eq0000_1797
    );
  IMPOS_19_mux0004211_SW0_LUT4_L_BUF : X_BUF
    port map (
      I => IMPOS_19_mux0004211_SW0_O,
      O => N2501
    );
  IMPOS_19_mux0004211_SW0 : X_LUT4
    generic map(
      INIT => X"1F3F"
    )
    port map (
      ADR0 => N145,
      ADR1 => POSIM_mux0004_0_311_1527,
      ADR2 => COUNTER_RAM_USB_cmp_eq0000,
      ADR3 => N252,
      O => IMPOS_19_mux0004211_SW0_O
    );
  IMPOS_19_mux000422_SW0_LUT4_L_BUF : X_BUF
    port map (
      I => IMPOS_19_mux000422_SW0_O,
      O => N3371
    );
  IMPOS_19_mux000422_SW0 : X_LUT4
    generic map(
      INIT => X"0600"
    )
    port map (
      ADR0 => IMPOS(21),
      ADR1 => Madd_IMPOS_22_16_add0000_cy_4_Q,
      ADR2 => POSIM_cmp_eq0000,
      ADR3 => N118,
      O => IMPOS_19_mux000422_SW0_O
    );
  IMPOS_16_mux0004147_SW0_LUT4_D_BUF : X_BUF
    port map (
      I => N239,
      O => N711
    );
  IMPOS_16_mux0004147_SW0 : X_LUT4
    generic map(
      INIT => X"0F01"
    )
    port map (
      ADR0 => N354,
      ADR1 => COUNTER_RAM_USB_cmp_eq0000,
      ADR2 => ERASE_RAM(0),
      ADR3 => IMPOS_16_mux0004131_425,
      O => N239
    );
  POSIM_mux0004_0_5_LUT4_D_BUF : X_BUF
    port map (
      I => N113,
      O => N712
    );
  POSIM_mux0004_0_5 : X_LUT4
    generic map(
      INIT => X"0203"
    )
    port map (
      ADR0 => IMPOS_19_cmp_eq0012,
      ADR1 => N356,
      ADR2 => N124,
      ADR3 => N89,
      O => N113
    );
  IMPOS_19_cmp_eq00041_LUT4_D_BUF : X_BUF
    port map (
      I => IMPOS_19_cmp_eq0004,
      O => N713
    );
  IMPOS_19_cmp_eq00041 : X_LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      ADR0 => DELAYFLASH(2),
      ADR1 => DELAYFLASH(7),
      ADR2 => IMPOS_19_cmp_eq0003131_454,
      ADR3 => N358,
      O => IMPOS_19_cmp_eq0004
    );
  WE_SIGNAL_mux000192_SW0_LUT4_L_BUF : X_BUF
    port map (
      I => WE_SIGNAL_mux000192_SW0_O,
      O => N362
    );
  WE_SIGNAL_mux000192_SW0 : X_LUT4
    generic map(
      INIT => X"AA8A"
    )
    port map (
      ADR0 => WE_SIGNAL_mux000174,
      ADR1 => WE_SIGNAL_mux000155_1996,
      ADR2 => IMPOS_19_cmp_eq0004,
      ADR3 => WE_SIGNAL_mux000137_1994,
      O => WE_SIGNAL_mux000192_SW0_O
    );
  WORDDATA_TEMP_not000136_SW0_LUT4_L_BUF : X_BUF
    port map (
      I => WORDDATA_TEMP_not000136_SW0_O,
      O => N402
    );
  WORDDATA_TEMP_not000136_SW0 : X_LUT4
    generic map(
      INIT => X"51F3"
    )
    port map (
      ADR0 => IMPOS_19_cmp_eq0004,
      ADR1 => IMPOS_19_cmp_eq0006,
      ADR2 => LOADFLASH(0),
      ADR3 => WORDDATA_TEMP_not00016_2037,
      O => WORDDATA_TEMP_not000136_SW0_O
    );
  OE_SIGNAL_mux000055_LUT4_L_BUF : X_BUF
    port map (
      I => OE_SIGNAL_mux000055_O,
      O => OE_SIGNAL_mux000055_1481
    );
  OE_SIGNAL_mux000055 : X_LUT4
    generic map(
      INIT => X"FFB8"
    )
    port map (
      ADR0 => OE_SIGNAL_1479,
      ADR1 => CNTPROCCES(2),
      ADR2 => N412,
      ADR3 => N286,
      O => OE_SIGNAL_mux000055_O
    );
  RESETCNTDPL_0_mux000055_LUT4_L_BUF : X_BUF
    port map (
      I => RESETCNTDPL_0_mux000055_O,
      O => RESETCNTDPL_0_mux000055_1629
    );
  RESETCNTDPL_0_mux000055 : X_LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      ADR0 => INPRES_0_not0001,
      ADR1 => KBRD_DRIVER_KBRD_DATA(4),
      ADR2 => KBRD_DRIVER_KBRD_DATA(7),
      ADR3 => N448,
      O => RESETCNTDPL_0_mux000055_O
    );
  COUNTER_RAM_USB_not00012_LUT4_L_BUF : X_BUF
    port map (
      I => COUNTER_RAM_USB_not00012_O,
      O => COUNTER_RAM_USB_not00012_314
    );
  COUNTER_RAM_USB_not00012 : X_LUT4
    generic map(
      INIT => X"88C8"
    )
    port map (
      ADR0 => PICTUREOK(0),
      ADR1 => ERASE_RAM(0),
      ADR2 => N145,
      ADR3 => DELAYFLASH(0),
      O => COUNTER_RAM_USB_not00012_O
    );
  WE_SIGNAL_not00015_LUT4_L_BUF : X_BUF
    port map (
      I => WE_SIGNAL_not00015_O,
      O => WE_SIGNAL_not00015_2002
    );
  WE_SIGNAL_not00015 : X_LUT4
    generic map(
      INIT => X"0302"
    )
    port map (
      ADR0 => USBDRIVER_DATAOK(0),
      ADR1 => USBDRIVER_ABORTEDSN(0),
      ADR2 => IMPOS_19_or0003,
      ADR3 => PLUS_MEMORY(0),
      O => WE_SIGNAL_not00015_O
    );
  ERASE_RAM_0_not000111_LUT4_D_BUF : X_BUF
    port map (
      I => N160,
      O => N714
    );
  ERASE_RAM_0_not000111 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => WE_SIGNAL_mux00018,
      ADR1 => IMPOS_19_cmp_eq0003,
      ADR2 => COUNTER_RAM_USB_cmp_eq0000,
      ADR3 => POSIM_cmp_eq0000,
      O => N160
    );
  POSIM_mux0004_0_11_SW3_LUT4_L_BUF : X_BUF
    port map (
      I => POSIM_mux0004_0_11_SW3_O,
      O => N3191_1151
    );
  POSIM_mux0004_0_11_SW3 : X_LUT4
    generic map(
      INIT => X"0301"
    )
    port map (
      ADR0 => PLUS_MEMORY(0),
      ADR1 => ERASE_RAM(0),
      ADR2 => LOADFLASH(0),
      ADR3 => POSIM_mux0004_0_113_1521,
      O => POSIM_mux0004_0_11_SW3_O
    );
  ERASE_RAM_0_not000121_LUT4_D_BUF : X_BUF
    port map (
      I => ERASE_RAM_0_and0010,
      O => N715
    );
  ERASE_RAM_0_not000121 : X_LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      ADR0 => PICTUREOK(0),
      ADR1 => ERASE_RAM(0),
      ADR2 => LOADFLASH(0),
      ADR3 => N174,
      O => ERASE_RAM_0_and0010
    );
  POSIM_mux0004_1_16_SW0_LUT4_L_BUF : X_BUF
    port map (
      I => POSIM_mux0004_1_16_SW0_O,
      O => N209
    );
  POSIM_mux0004_1_16_SW0 : X_LUT4
    generic map(
      INIT => X"FE00"
    )
    port map (
      ADR0 => POSIM(0),
      ADR1 => POSIM(2),
      ADR2 => POSIM(1),
      ADR3 => N132,
      O => POSIM_mux0004_1_16_SW0_O
    );
  IM_16_8_BITS_0_mux00003_SW1_SW0_LUT3_L_BUF : X_BUF
    port map (
      I => IM_16_8_BITS_0_mux00003_SW1_SW0_O,
      O => N456
    );
  IM_16_8_BITS_0_mux00003_SW1_SW0 : X_LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      ADR0 => PICTUREOK(0),
      ADR1 => PRESENTATION(0),
      ADR2 => ERASEFLASH_SIGNAL(0),
      O => IM_16_8_BITS_0_mux00003_SW1_SW0_O
    );
  IM_16_8_BITS_0_or00001_SW1_LUT4_L_BUF : X_BUF
    port map (
      I => IM_16_8_BITS_0_or00001_SW1_O,
      O => N458
    );
  IM_16_8_BITS_0_or00001_SW1 : X_LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      ADR0 => PICTUREOK(0),
      ADR1 => PLUS_MEMORY(0),
      ADR2 => USBDRIVER_ABORTEDSN(0),
      ADR3 => USBDRIVER_DATAOK(0),
      O => IM_16_8_BITS_0_or00001_SW1_O
    );
  ERASEFLASH_SIGNAL_0_not00011_SW1_LUT4_L_BUF : X_BUF
    port map (
      I => ERASEFLASH_SIGNAL_0_not00011_SW1_O,
      O => N462
    );
  ERASEFLASH_SIGNAL_0_not00011_SW1 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => ENABLE_KB,
      ADR1 => ERASEFLASH_SIGNAL_0_and0002,
      ADR2 => KBRD_DRIVER_E0(0),
      ADR3 => KBRD_DRIVER_KEY_DOWN(0),
      O => ERASEFLASH_SIGNAL_0_not00011_SW1_O
    );
  IMPOS_20_mux000413_LUT4_L_BUF : X_BUF
    port map (
      I => IMPOS_20_mux000413_O,
      O => IMPOS_20_mux000413_476
    );
  IMPOS_20_mux000413 : X_LUT4
    generic map(
      INIT => X"A900"
    )
    port map (
      ADR0 => IMPOS(20),
      ADR1 => IMPOS(19),
      ADR2 => Msub_IMPOS_22_16_sub0001_cy_2_Q,
      ADR3 => N132,
      O => IMPOS_20_mux000413_O
    );
  IM_16_8_BITS_0_mux000064_LUT4_L_BUF : X_BUF
    port map (
      I => IM_16_8_BITS_0_mux000064_O,
      O => IM_16_8_BITS_0_mux000064_517
    );
  IM_16_8_BITS_0_mux000064 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => N82,
      ADR1 => ERASEFLASH(0),
      ADR2 => ERASEFLASH_SIGNAL(0),
      ADR3 => IMPOS_19_or0017,
      O => IM_16_8_BITS_0_mux000064_O
    );
  ABORT_5_not000120_LUT4_L_BUF : X_BUF
    port map (
      I => ABORT_5_not000120_O,
      O => ABORT_5_not000120_122
    );
  ABORT_5_not000120 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => CTRL(0),
      ADR1 => ALT(0),
      ADR2 => ABORT_5_cmp_eq0000,
      ADR3 => INPRES_0_not0001,
      O => ABORT_5_not000120_O
    );
  VGA_DRVR1_COUNTER_RAM_or000014_LUT4_D_BUF : X_BUF
    port map (
      I => VGA_DRVR1_COUNTER_RAM_or000014_1825,
      O => N716
    );
  VGA_DRVR1_COUNTER_RAM_or000014 : X_LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      ADR0 => VGA_DRVR1_COUNTER_H(4),
      ADR1 => VGA_DRVR1_COUNTER_H(8),
      ADR2 => VGA_DRVR1_COUNTER_H(9),
      ADR3 => N524,
      O => VGA_DRVR1_COUNTER_RAM_or000014_1825
    );
  PICTUREOK_0_and00001_LUT4_D_BUF : X_BUF
    port map (
      I => PICTUREOK_0_and0000,
      O => N717
    );
  PICTUREOK_0_and00001 : X_LUT4
    generic map(
      INIT => X"FF04"
    )
    port map (
      ADR0 => PICTUREOK(0),
      ADR1 => ERASE_RAM(0),
      ADR2 => POSIM_cmp_eq0000,
      ADR3 => IMPOS_19_and0000,
      O => PICTUREOK_0_and0000
    );
  WE_SIGNAL_mux0001241_LUT4_D_BUF : X_BUF
    port map (
      I => N311,
      O => N718
    );
  WE_SIGNAL_mux0001241 : X_LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      ADR0 => COUNTER_RAM_USB_cmp_eq0000,
      ADR1 => POSIM(3),
      ADR2 => POSIM(4),
      ADR3 => Msub_POSIM_addsub0000_cy(2),
      O => N311
    );
  KBRD_CLK_PIN_PULLUP : X_PU
    port map (
      O => NlwRenamedSig_IO_KBRD_CLK_PIN
    );
  KBRD_DATA_PIN_PULLUP : X_PU
    port map (
      O => NlwRenamedSig_IO_KBRD_DATA_PIN
    );
  VGA_DRVR1_DRIVERCLKDLL100_CLKDLL_inst_DCM_SP : X_DCM_SP
    generic map(
      CLKDV_DIVIDE => 2.000000,
      CLKFX_DIVIDE => 1,
      CLKFX_MULTIPLY => 4,
      CLKIN_DIVIDE_BY_2 => FALSE,
      CLKIN_PERIOD => 10.000000,
      CLKOUT_PHASE_SHIFT => "NONE",
      CLK_FEEDBACK => "1X",
      DESKEW_ADJUST => "SYSTEM_SYNCHRONOUS",
      DFS_FREQUENCY_MODE => "LOW",
      DLL_FREQUENCY_MODE => "LOW",
      DSS_MODE => "NONE",
      DUTY_CYCLE_CORRECTION => TRUE,
      FACTORY_JF => X"C080",
      PHASE_SHIFT => 0,
      STARTUP_WAIT => FALSE
    )
    port map (
      CLKIN => CLK50M_IBUFG1,
      CLKFB => VGA_DRVR1_CLK100M,
      RST => DPL_SEG_3_OBUF_397,
      DSSEN => NLW_VGA_DRVR1_DRIVERCLKDLL100_CLKDLL_inst_DCM_SP_DSSEN_UNCONNECTED,
      PSINCDEC => GND,
      PSEN => GND,
      PSCLK => GND,
      CLK0 => NLW_VGA_DRVR1_DRIVERCLKDLL100_CLKDLL_inst_DCM_SP_CLK0_UNCONNECTED,
      CLK90 => NLW_VGA_DRVR1_DRIVERCLKDLL100_CLKDLL_inst_DCM_SP_CLK90_UNCONNECTED,
      CLK180 => NLW_VGA_DRVR1_DRIVERCLKDLL100_CLKDLL_inst_DCM_SP_CLK180_UNCONNECTED,
      CLK270 => NLW_VGA_DRVR1_DRIVERCLKDLL100_CLKDLL_inst_DCM_SP_CLK270_UNCONNECTED,
      CLK2X => VGA_DRVR1_CLK100M,
      CLK2X180 => NLW_VGA_DRVR1_DRIVERCLKDLL100_CLKDLL_inst_DCM_SP_CLK2X180_UNCONNECTED,
      CLKDV => NLW_VGA_DRVR1_DRIVERCLKDLL100_CLKDLL_inst_DCM_SP_CLKDV_UNCONNECTED,
      CLKFX => NLW_VGA_DRVR1_DRIVERCLKDLL100_CLKDLL_inst_DCM_SP_CLKFX_UNCONNECTED,
      CLKFX180 => NLW_VGA_DRVR1_DRIVERCLKDLL100_CLKDLL_inst_DCM_SP_CLKFX180_UNCONNECTED,
      LOCKED => NLW_VGA_DRVR1_DRIVERCLKDLL100_CLKDLL_inst_DCM_SP_LOCKED_UNCONNECTED,
      PSDONE => NLW_VGA_DRVR1_DRIVERCLKDLL100_CLKDLL_inst_DCM_SP_PSDONE_UNCONNECTED,
      STATUS(7) => NLW_VGA_DRVR1_DRIVERCLKDLL100_CLKDLL_inst_DCM_SP_STATUS_7_UNCONNECTED,
      STATUS(6) => NLW_VGA_DRVR1_DRIVERCLKDLL100_CLKDLL_inst_DCM_SP_STATUS_6_UNCONNECTED,
      STATUS(5) => NLW_VGA_DRVR1_DRIVERCLKDLL100_CLKDLL_inst_DCM_SP_STATUS_5_UNCONNECTED,
      STATUS(4) => NLW_VGA_DRVR1_DRIVERCLKDLL100_CLKDLL_inst_DCM_SP_STATUS_4_UNCONNECTED,
      STATUS(3) => NLW_VGA_DRVR1_DRIVERCLKDLL100_CLKDLL_inst_DCM_SP_STATUS_3_UNCONNECTED,
      STATUS(2) => NLW_VGA_DRVR1_DRIVERCLKDLL100_CLKDLL_inst_DCM_SP_STATUS_2_UNCONNECTED,
      STATUS(1) => NLW_VGA_DRVR1_DRIVERCLKDLL100_CLKDLL_inst_DCM_SP_STATUS_1_UNCONNECTED,
      STATUS(0) => NLW_VGA_DRVR1_DRIVERCLKDLL100_CLKDLL_inst_DCM_SP_STATUS_0_UNCONNECTED
    );
  VGA_DRVR1_DRIVERCLKDLL200_CLKDLL_inst_DCM_SP : X_DCM_SP
    generic map(
      CLKDV_DIVIDE => 2.000000,
      CLKFX_DIVIDE => 1,
      CLKFX_MULTIPLY => 4,
      CLKIN_DIVIDE_BY_2 => FALSE,
      CLKIN_PERIOD => 10.000000,
      CLKOUT_PHASE_SHIFT => "NONE",
      CLK_FEEDBACK => "1X",
      DESKEW_ADJUST => "SYSTEM_SYNCHRONOUS",
      DFS_FREQUENCY_MODE => "LOW",
      DLL_FREQUENCY_MODE => "LOW",
      DSS_MODE => "NONE",
      DUTY_CYCLE_CORRECTION => TRUE,
      FACTORY_JF => X"C080",
      PHASE_SHIFT => 0,
      STARTUP_WAIT => FALSE
    )
    port map (
      CLKIN => VGA_DRVR1_CLK100M,
      CLKFB => VGA_DRVR1_CLK200M,
      RST => DPL_SEG_3_OBUF_397,
      DSSEN => NLW_VGA_DRVR1_DRIVERCLKDLL200_CLKDLL_inst_DCM_SP_DSSEN_UNCONNECTED,
      PSINCDEC => GND,
      PSEN => GND,
      PSCLK => GND,
      CLK0 => NLW_VGA_DRVR1_DRIVERCLKDLL200_CLKDLL_inst_DCM_SP_CLK0_UNCONNECTED,
      CLK90 => NLW_VGA_DRVR1_DRIVERCLKDLL200_CLKDLL_inst_DCM_SP_CLK90_UNCONNECTED,
      CLK180 => NLW_VGA_DRVR1_DRIVERCLKDLL200_CLKDLL_inst_DCM_SP_CLK180_UNCONNECTED,
      CLK270 => NLW_VGA_DRVR1_DRIVERCLKDLL200_CLKDLL_inst_DCM_SP_CLK270_UNCONNECTED,
      CLK2X => VGA_DRVR1_CLK200M,
      CLK2X180 => NLW_VGA_DRVR1_DRIVERCLKDLL200_CLKDLL_inst_DCM_SP_CLK2X180_UNCONNECTED,
      CLKDV => NLW_VGA_DRVR1_DRIVERCLKDLL200_CLKDLL_inst_DCM_SP_CLKDV_UNCONNECTED,
      CLKFX => NLW_VGA_DRVR1_DRIVERCLKDLL200_CLKDLL_inst_DCM_SP_CLKFX_UNCONNECTED,
      CLKFX180 => NLW_VGA_DRVR1_DRIVERCLKDLL200_CLKDLL_inst_DCM_SP_CLKFX180_UNCONNECTED,
      LOCKED => NLW_VGA_DRVR1_DRIVERCLKDLL200_CLKDLL_inst_DCM_SP_LOCKED_UNCONNECTED,
      PSDONE => NLW_VGA_DRVR1_DRIVERCLKDLL200_CLKDLL_inst_DCM_SP_PSDONE_UNCONNECTED,
      STATUS(7) => NLW_VGA_DRVR1_DRIVERCLKDLL200_CLKDLL_inst_DCM_SP_STATUS_7_UNCONNECTED,
      STATUS(6) => NLW_VGA_DRVR1_DRIVERCLKDLL200_CLKDLL_inst_DCM_SP_STATUS_6_UNCONNECTED,
      STATUS(5) => NLW_VGA_DRVR1_DRIVERCLKDLL200_CLKDLL_inst_DCM_SP_STATUS_5_UNCONNECTED,
      STATUS(4) => NLW_VGA_DRVR1_DRIVERCLKDLL200_CLKDLL_inst_DCM_SP_STATUS_4_UNCONNECTED,
      STATUS(3) => NLW_VGA_DRVR1_DRIVERCLKDLL200_CLKDLL_inst_DCM_SP_STATUS_3_UNCONNECTED,
      STATUS(2) => NLW_VGA_DRVR1_DRIVERCLKDLL200_CLKDLL_inst_DCM_SP_STATUS_2_UNCONNECTED,
      STATUS(1) => NLW_VGA_DRVR1_DRIVERCLKDLL200_CLKDLL_inst_DCM_SP_STATUS_1_UNCONNECTED,
      STATUS(0) => NLW_VGA_DRVR1_DRIVERCLKDLL200_CLKDLL_inst_DCM_SP_STATUS_0_UNCONNECTED
    );
  VGA_DRVR1_DRIVERCLKDLL_100_200_CLKDLL_inst_DCM_SP : X_DCM_SP
    generic map(
      CLKDV_DIVIDE => 2.000000,
      CLKFX_DIVIDE => 1,
      CLKFX_MULTIPLY => 4,
      CLKIN_DIVIDE_BY_2 => FALSE,
      CLKIN_PERIOD => 10.000000,
      CLKOUT_PHASE_SHIFT => "NONE",
      CLK_FEEDBACK => "1X",
      DESKEW_ADJUST => "SYSTEM_SYNCHRONOUS",
      DFS_FREQUENCY_MODE => "LOW",
      DLL_FREQUENCY_MODE => "LOW",
      DSS_MODE => "NONE",
      DUTY_CYCLE_CORRECTION => TRUE,
      FACTORY_JF => X"C080",
      PHASE_SHIFT => 0,
      STARTUP_WAIT => FALSE
    )
    port map (
      CLKIN => VGA_DRVR1_CLK_100_200M_BUFG,
      CLKFB => VGA_DRVR1_CLK200M_NEW,
      RST => DPL_SEG_3_OBUF_397,
      DSSEN => NLW_VGA_DRVR1_DRIVERCLKDLL_100_200_CLKDLL_inst_DCM_SP_DSSEN_UNCONNECTED,
      PSINCDEC => GND,
      PSEN => GND,
      PSCLK => GND,
      CLK0 => NLW_VGA_DRVR1_DRIVERCLKDLL_100_200_CLKDLL_inst_DCM_SP_CLK0_UNCONNECTED,
      CLK90 => NLW_VGA_DRVR1_DRIVERCLKDLL_100_200_CLKDLL_inst_DCM_SP_CLK90_UNCONNECTED,
      CLK180 => NLW_VGA_DRVR1_DRIVERCLKDLL_100_200_CLKDLL_inst_DCM_SP_CLK180_UNCONNECTED,
      CLK270 => NLW_VGA_DRVR1_DRIVERCLKDLL_100_200_CLKDLL_inst_DCM_SP_CLK270_UNCONNECTED,
      CLK2X => VGA_DRVR1_CLK200M_NEW,
      CLK2X180 => NLW_VGA_DRVR1_DRIVERCLKDLL_100_200_CLKDLL_inst_DCM_SP_CLK2X180_UNCONNECTED,
      CLKDV => NLW_VGA_DRVR1_DRIVERCLKDLL_100_200_CLKDLL_inst_DCM_SP_CLKDV_UNCONNECTED,
      CLKFX => NLW_VGA_DRVR1_DRIVERCLKDLL_100_200_CLKDLL_inst_DCM_SP_CLKFX_UNCONNECTED,
      CLKFX180 => NLW_VGA_DRVR1_DRIVERCLKDLL_100_200_CLKDLL_inst_DCM_SP_CLKFX180_UNCONNECTED,
      LOCKED => NLW_VGA_DRVR1_DRIVERCLKDLL_100_200_CLKDLL_inst_DCM_SP_LOCKED_UNCONNECTED,
      PSDONE => NLW_VGA_DRVR1_DRIVERCLKDLL_100_200_CLKDLL_inst_DCM_SP_PSDONE_UNCONNECTED,
      STATUS(7) => NLW_VGA_DRVR1_DRIVERCLKDLL_100_200_CLKDLL_inst_DCM_SP_STATUS_7_UNCONNECTED,
      STATUS(6) => NLW_VGA_DRVR1_DRIVERCLKDLL_100_200_CLKDLL_inst_DCM_SP_STATUS_6_UNCONNECTED,
      STATUS(5) => NLW_VGA_DRVR1_DRIVERCLKDLL_100_200_CLKDLL_inst_DCM_SP_STATUS_5_UNCONNECTED,
      STATUS(4) => NLW_VGA_DRVR1_DRIVERCLKDLL_100_200_CLKDLL_inst_DCM_SP_STATUS_4_UNCONNECTED,
      STATUS(3) => NLW_VGA_DRVR1_DRIVERCLKDLL_100_200_CLKDLL_inst_DCM_SP_STATUS_3_UNCONNECTED,
      STATUS(2) => NLW_VGA_DRVR1_DRIVERCLKDLL_100_200_CLKDLL_inst_DCM_SP_STATUS_2_UNCONNECTED,
      STATUS(1) => NLW_VGA_DRVR1_DRIVERCLKDLL_100_200_CLKDLL_inst_DCM_SP_STATUS_1_UNCONNECTED,
      STATUS(0) => NLW_VGA_DRVR1_DRIVERCLKDLL_100_200_CLKDLL_inst_DCM_SP_STATUS_0_UNCONNECTED
    );
  VGA_DRVR1_DRIVERCLKDLL_200_NEW_CLKDLL_inst_DCM_SP : X_DCM_SP
    generic map(
      CLKDV_DIVIDE => 2.000000,
      CLKFX_DIVIDE => 1,
      CLKFX_MULTIPLY => 4,
      CLKIN_DIVIDE_BY_2 => FALSE,
      CLKIN_PERIOD => 10.000000,
      CLKOUT_PHASE_SHIFT => "NONE",
      CLK_FEEDBACK => "1X",
      DESKEW_ADJUST => "SYSTEM_SYNCHRONOUS",
      DFS_FREQUENCY_MODE => "LOW",
      DLL_FREQUENCY_MODE => "LOW",
      DSS_MODE => "NONE",
      DUTY_CYCLE_CORRECTION => TRUE,
      FACTORY_JF => X"C080",
      PHASE_SHIFT => 0,
      STARTUP_WAIT => FALSE
    )
    port map (
      CLKIN => VGA_DRVR1_CLK200M_NEW_BUFG,
      CLKFB => VGA_DRVR1_CLK400M,
      RST => DPL_SEG_3_OBUF_397,
      DSSEN => NLW_VGA_DRVR1_DRIVERCLKDLL_200_NEW_CLKDLL_inst_DCM_SP_DSSEN_UNCONNECTED,
      PSINCDEC => GND,
      PSEN => GND,
      PSCLK => GND,
      CLK0 => NLW_VGA_DRVR1_DRIVERCLKDLL_200_NEW_CLKDLL_inst_DCM_SP_CLK0_UNCONNECTED,
      CLK90 => NLW_VGA_DRVR1_DRIVERCLKDLL_200_NEW_CLKDLL_inst_DCM_SP_CLK90_UNCONNECTED,
      CLK180 => NLW_VGA_DRVR1_DRIVERCLKDLL_200_NEW_CLKDLL_inst_DCM_SP_CLK180_UNCONNECTED,
      CLK270 => NLW_VGA_DRVR1_DRIVERCLKDLL_200_NEW_CLKDLL_inst_DCM_SP_CLK270_UNCONNECTED,
      CLK2X => VGA_DRVR1_CLK400M,
      CLK2X180 => NLW_VGA_DRVR1_DRIVERCLKDLL_200_NEW_CLKDLL_inst_DCM_SP_CLK2X180_UNCONNECTED,
      CLKDV => NLW_VGA_DRVR1_DRIVERCLKDLL_200_NEW_CLKDLL_inst_DCM_SP_CLKDV_UNCONNECTED,
      CLKFX => NLW_VGA_DRVR1_DRIVERCLKDLL_200_NEW_CLKDLL_inst_DCM_SP_CLKFX_UNCONNECTED,
      CLKFX180 => NLW_VGA_DRVR1_DRIVERCLKDLL_200_NEW_CLKDLL_inst_DCM_SP_CLKFX180_UNCONNECTED,
      LOCKED => NLW_VGA_DRVR1_DRIVERCLKDLL_200_NEW_CLKDLL_inst_DCM_SP_LOCKED_UNCONNECTED,
      PSDONE => NLW_VGA_DRVR1_DRIVERCLKDLL_200_NEW_CLKDLL_inst_DCM_SP_PSDONE_UNCONNECTED,
      STATUS(7) => NLW_VGA_DRVR1_DRIVERCLKDLL_200_NEW_CLKDLL_inst_DCM_SP_STATUS_7_UNCONNECTED,
      STATUS(6) => NLW_VGA_DRVR1_DRIVERCLKDLL_200_NEW_CLKDLL_inst_DCM_SP_STATUS_6_UNCONNECTED,
      STATUS(5) => NLW_VGA_DRVR1_DRIVERCLKDLL_200_NEW_CLKDLL_inst_DCM_SP_STATUS_5_UNCONNECTED,
      STATUS(4) => NLW_VGA_DRVR1_DRIVERCLKDLL_200_NEW_CLKDLL_inst_DCM_SP_STATUS_4_UNCONNECTED,
      STATUS(3) => NLW_VGA_DRVR1_DRIVERCLKDLL_200_NEW_CLKDLL_inst_DCM_SP_STATUS_3_UNCONNECTED,
      STATUS(2) => NLW_VGA_DRVR1_DRIVERCLKDLL_200_NEW_CLKDLL_inst_DCM_SP_STATUS_2_UNCONNECTED,
      STATUS(1) => NLW_VGA_DRVR1_DRIVERCLKDLL_200_NEW_CLKDLL_inst_DCM_SP_STATUS_1_UNCONNECTED,
      STATUS(0) => NLW_VGA_DRVR1_DRIVERCLKDLL_200_NEW_CLKDLL_inst_DCM_SP_STATUS_0_UNCONNECTED
    );
  PDB_7_IOBUF_IBUF : X_BUF
    port map (
      I => PDB(7),
      O => N155
    );
  PDB_6_IOBUF_IBUF : X_BUF
    port map (
      I => PDB(6),
      O => N1561
    );
  PDB_5_IOBUF_IBUF : X_BUF
    port map (
      I => PDB(5),
      O => N1571
    );
  PDB_4_IOBUF_IBUF : X_BUF
    port map (
      I => PDB(4),
      O => N1581
    );
  PDB_3_IOBUF_IBUF : X_BUF
    port map (
      I => PDB(3),
      O => N159
    );
  PDB_2_IOBUF_IBUF : X_BUF
    port map (
      I => PDB(2),
      O => N1601
    );
  PDB_1_IOBUF_IBUF : X_BUF
    port map (
      I => PDB(1),
      O => N1611
    );
  PDB_0_IOBUF_IBUF : X_BUF
    port map (
      I => PDB(0),
      O => N1621
    );
  DATA_15_IOBUF_IBUF : X_BUF
    port map (
      I => DATA(15),
      O => N1631
    );
  DATA_14_IOBUF_IBUF : X_BUF
    port map (
      I => DATA(14),
      O => N1641
    );
  DATA_13_IOBUF_IBUF : X_BUF
    port map (
      I => DATA(13),
      O => N1651
    );
  DATA_12_IOBUF_IBUF : X_BUF
    port map (
      I => DATA(12),
      O => N1661
    );
  DATA_11_IOBUF_IBUF : X_BUF
    port map (
      I => DATA(11),
      O => N167
    );
  DATA_10_IOBUF_IBUF : X_BUF
    port map (
      I => DATA(10),
      O => N168
    );
  DATA_9_IOBUF_IBUF : X_BUF
    port map (
      I => DATA(9),
      O => N1691
    );
  DATA_8_IOBUF_IBUF : X_BUF
    port map (
      I => DATA(8),
      O => N170
    );
  DATA_7_IOBUF_IBUF : X_BUF
    port map (
      I => DATA(7),
      O => N171
    );
  DATA_6_IOBUF_IBUF : X_BUF
    port map (
      I => DATA(6),
      O => N1721
    );
  DATA_5_IOBUF_IBUF : X_BUF
    port map (
      I => DATA(5),
      O => N1731
    );
  DATA_4_IOBUF_IBUF : X_BUF
    port map (
      I => DATA(4),
      O => N1741
    );
  DATA_3_IOBUF_IBUF : X_BUF
    port map (
      I => DATA(3),
      O => N1751
    );
  DATA_2_IOBUF_IBUF : X_BUF
    port map (
      I => DATA(2),
      O => N176
    );
  DATA_1_IOBUF_IBUF : X_BUF
    port map (
      I => DATA(1),
      O => N1771
    );
  DATA_0_IOBUF_IBUF : X_BUF
    port map (
      I => DATA(0),
      O => N178
    );
  ADDR_0_OBUF : X_OBUF
    port map (
      I => ADDR_0_OBUF_146,
      O => ADDR(0)
    );
  ADDR_10_OBUF : X_OBUF
    port map (
      I => ADDR_10_OBUF_147,
      O => ADDR(10)
    );
  ADDR_11_OBUF : X_OBUF
    port map (
      I => ADDR_11_OBUF_148,
      O => ADDR(11)
    );
  ADDR_12_OBUF : X_OBUF
    port map (
      I => ADDR_12_OBUF_149,
      O => ADDR(12)
    );
  ADDR_13_OBUF : X_OBUF
    port map (
      I => ADDR_13_OBUF_150,
      O => ADDR(13)
    );
  ADDR_14_OBUF : X_OBUF
    port map (
      I => ADDR_14_OBUF_151,
      O => ADDR(14)
    );
  ADDR_15_OBUF : X_OBUF
    port map (
      I => ADDR_15_OBUF_152,
      O => ADDR(15)
    );
  ADDR_16_OBUF : X_OBUF
    port map (
      I => ADDR_16_OBUF_153,
      O => ADDR(16)
    );
  ADDR_17_OBUF : X_OBUF
    port map (
      I => ADDR_17_OBUF_154,
      O => ADDR(17)
    );
  ADDR_18_OBUF : X_OBUF
    port map (
      I => ADDR_18_OBUF_155,
      O => ADDR(18)
    );
  ADDR_19_OBUF : X_OBUF
    port map (
      I => ADDR_19_OBUF_156,
      O => ADDR(19)
    );
  ADDR_1_OBUF : X_OBUF
    port map (
      I => ADDR_1_OBUF_157,
      O => ADDR(1)
    );
  ADDR_20_OBUF : X_OBUF
    port map (
      I => ADDR_20_OBUF_158,
      O => ADDR(20)
    );
  ADDR_21_OBUF : X_OBUF
    port map (
      I => ADDR_21_OBUF_159,
      O => ADDR(21)
    );
  ADDR_22_OBUF : X_OBUF
    port map (
      I => ADDR_22_OBUF_160,
      O => ADDR(22)
    );
  ADDR_2_OBUF : X_OBUF
    port map (
      I => ADDR_2_OBUF_161,
      O => ADDR(2)
    );
  ADDR_3_OBUF : X_OBUF
    port map (
      I => ADDR_3_OBUF_162,
      O => ADDR(3)
    );
  ADDR_4_OBUF : X_OBUF
    port map (
      I => ADDR_4_OBUF_163,
      O => ADDR(4)
    );
  ADDR_5_OBUF : X_OBUF
    port map (
      I => ADDR_5_OBUF_164,
      O => ADDR(5)
    );
  ADDR_6_OBUF : X_OBUF
    port map (
      I => ADDR_6_OBUF_165,
      O => ADDR(6)
    );
  ADDR_7_OBUF : X_OBUF
    port map (
      I => ADDR_7_OBUF_166,
      O => ADDR(7)
    );
  ADDR_8_OBUF : X_OBUF
    port map (
      I => ADDR_8_OBUF_167,
      O => ADDR(8)
    );
  ADDR_9_OBUF : X_OBUF
    port map (
      I => ADDR_9_OBUF_168,
      O => ADDR(9)
    );
  BLUE_0_OBUF : X_OBUF
    port map (
      I => BLUE_0_OBUF_175,
      O => BLUE(0)
    );
  BLUE_1_OBUF : X_OBUF
    port map (
      I => BLUE_1_OBUF_176,
      O => BLUE(1)
    );
  DATA_0_IOBUF_OBUFT : X_OBUFT
    port map (
      I => DATA_0_IOBUF,
      CTL => DATAS_not0001_inv,
      O => DATA(0)
    );
  DATA_10_IOBUF_OBUFT : X_OBUFT
    port map (
      I => DATA_10_IOBUF,
      CTL => DATAS_not0001_inv,
      O => DATA(10)
    );
  DATA_11_IOBUF_OBUFT : X_OBUFT
    port map (
      I => DATA_11_IOBUF,
      CTL => DATAS_not0001_inv,
      O => DATA(11)
    );
  DATA_12_IOBUF_OBUFT : X_OBUFT
    port map (
      I => DATA_12_IOBUF,
      CTL => DATAS_not0001_inv,
      O => DATA(12)
    );
  DATA_13_IOBUF_OBUFT : X_OBUFT
    port map (
      I => DATA_13_IOBUF,
      CTL => DATAS_not0001_inv,
      O => DATA(13)
    );
  DATA_14_IOBUF_OBUFT : X_OBUFT
    port map (
      I => DATA_14_IOBUF,
      CTL => DATAS_not0001_inv,
      O => DATA(14)
    );
  DATA_15_IOBUF_OBUFT : X_OBUFT
    port map (
      I => DATA_15_IOBUF,
      CTL => DATAS_not0001_inv,
      O => DATA(15)
    );
  DATA_1_IOBUF_OBUFT : X_OBUFT
    port map (
      I => DATA_1_IOBUF,
      CTL => DATAS_not0001_inv,
      O => DATA(1)
    );
  DATA_2_IOBUF_OBUFT : X_OBUFT
    port map (
      I => DATA_2_IOBUF,
      CTL => DATAS_not0001_inv,
      O => DATA(2)
    );
  DATA_3_IOBUF_OBUFT : X_OBUFT
    port map (
      I => DATA_3_IOBUF,
      CTL => DATAS_not0001_inv,
      O => DATA(3)
    );
  DATA_4_IOBUF_OBUFT : X_OBUFT
    port map (
      I => DATA_4_IOBUF,
      CTL => DATAS_not0001_inv,
      O => DATA(4)
    );
  DATA_5_IOBUF_OBUFT : X_OBUFT
    port map (
      I => DATA_5_IOBUF,
      CTL => DATAS_not0001_inv,
      O => DATA(5)
    );
  DATA_6_IOBUF_OBUFT : X_OBUFT
    port map (
      I => DATA_6_IOBUF,
      CTL => DATAS_not0001_inv,
      O => DATA(6)
    );
  DATA_7_IOBUF_OBUFT : X_OBUFT
    port map (
      I => DATA_7_IOBUF,
      CTL => DATAS_not0001_inv,
      O => DATA(7)
    );
  DATA_8_IOBUF_OBUFT : X_OBUFT
    port map (
      I => DATA_8_IOBUF,
      CTL => DATAS_not0001_inv,
      O => DATA(8)
    );
  DATA_9_IOBUF_OBUFT : X_OBUFT
    port map (
      I => DATA_9_IOBUF,
      CTL => DATAS_not0001_inv,
      O => DATA(9)
    );
  DPL_ENABLE_0_OBUF : X_OBUF
    port map (
      I => DPL_ENABLE_0_OBUF_385,
      O => DPL_ENABLE(0)
    );
  DPL_ENABLE_1_OBUF : X_OBUF
    port map (
      I => DPL_ENABLE_1_OBUF_386,
      O => DPL_ENABLE(1)
    );
  DPL_ENABLE_2_OBUF : X_OBUF
    port map (
      I => DPL_ENABLE_2_OBUF_387,
      O => DPL_ENABLE(2)
    );
  DPL_ENABLE_3_OBUF : X_OBUF
    port map (
      I => DPL_ENABLE_3_OBUF_388,
      O => DPL_ENABLE(3)
    );
  DPL_SEG_0_OBUF : X_OBUF
    port map (
      I => DPL_SEG_0_OBUF_396,
      O => DPL_SEG(0)
    );
  DPL_SEG_1_OBUF : X_OBUF
    port map (
      I => DPL_SEG_0_OBUF_396,
      O => DPL_SEG(1)
    );
  DPL_SEG_2_OBUF : X_OBUF
    port map (
      I => DPL_SEG_0_OBUF_396,
      O => DPL_SEG(2)
    );
  DPL_SEG_3_OBUF : X_OBUF
    port map (
      I => DPL_SEG_3_OBUF_397,
      O => DPL_SEG(3)
    );
  DPL_SEG_4_OBUF : X_OBUF
    port map (
      I => DPL_SEG_0_OBUF_396,
      O => DPL_SEG(4)
    );
  DPL_SEG_5_OBUF : X_OBUF
    port map (
      I => DPL_SEG_0_OBUF_396,
      O => DPL_SEG(5)
    );
  DPL_SEG_6_OBUF : X_OBUF
    port map (
      I => DPL_SEG_0_OBUF_396,
      O => DPL_SEG(6)
    );
  GRN_0_OBUF : X_OBUF
    port map (
      I => GRN_0_OBUF_415,
      O => GRN(0)
    );
  GRN_1_OBUF : X_OBUF
    port map (
      I => GRN_1_OBUF_416,
      O => GRN(1)
    );
  GRN_2_OBUF : X_OBUF
    port map (
      I => GRN_2_OBUF_417,
      O => GRN(2)
    );
  HS_OBUF : X_OBUF
    port map (
      I => HS_OBUF_419,
      O => HS
    );
  MT_CE_OBUF : X_OBUF
    port map (
      I => MT_CE_SIGNAL_624,
      O => MT_CE
    );
  MT_CLK_OBUF : X_OBUF
    port map (
      I => DPL_SEG_3_OBUF_397,
      O => MT_CLK
    );
  MT_LB_OBUF : X_OBUF
    port map (
      I => DPL_SEG_3_OBUF_397,
      O => MT_LB
    );
  MT_UB_OBUF : X_OBUF
    port map (
      I => DPL_SEG_3_OBUF_397,
      O => MT_UB
    );
  OE_OBUF : X_OBUF
    port map (
      I => OE_SIGNAL_1479,
      O => OE
    );
  PDB_0_IOBUF_OBUFT : X_OBUFT
    port map (
      I => ABORT(0),
      CTL => USBDRIVER_PDB_and0000_inv,
      O => PDB(0)
    );
  PDB_1_IOBUF_OBUFT : X_OBUFT
    port map (
      I => ABORT(1),
      CTL => USBDRIVER_PDB_and0000_inv,
      O => PDB(1)
    );
  PDB_2_IOBUF_OBUFT : X_OBUFT
    port map (
      I => ABORT(2),
      CTL => USBDRIVER_PDB_and0000_inv,
      O => PDB(2)
    );
  PDB_3_IOBUF_OBUFT : X_OBUFT
    port map (
      I => ABORT(3),
      CTL => USBDRIVER_PDB_and0000_inv,
      O => PDB(3)
    );
  PDB_4_IOBUF_OBUFT : X_OBUFT
    port map (
      I => ABORT(4),
      CTL => USBDRIVER_PDB_and0000_inv,
      O => PDB(4)
    );
  PDB_5_IOBUF_OBUFT : X_OBUFT
    port map (
      I => DPL_SEG_3_OBUF_397,
      CTL => USBDRIVER_PDB_and0000_inv,
      O => PDB(5)
    );
  PDB_6_IOBUF_OBUFT : X_OBUFT
    port map (
      I => DPL_SEG_3_OBUF_397,
      CTL => USBDRIVER_PDB_and0000_inv,
      O => PDB(6)
    );
  PDB_7_IOBUF_OBUFT : X_OBUFT
    port map (
      I => DPL_SEG_3_OBUF_397,
      CTL => USBDRIVER_PDB_and0000_inv,
      O => PDB(7)
    );
  POINT_OUT_OBUF : X_OBUF
    port map (
      I => DPL_SEG_0_OBUF_396,
      O => POINT_OUT
    );
  PWAIT_OBUF : X_OBUF
    port map (
      I => PWAIT_OBUF_1617,
      O => PWAIT
    );
  RED_0_OBUF : X_OBUF
    port map (
      I => RED_0_OBUF_1623,
      O => RED(0)
    );
  RED_1_OBUF : X_OBUF
    port map (
      I => RED_1_OBUF_1624,
      O => RED(1)
    );
  RED_2_OBUF : X_OBUF
    port map (
      I => RED_2_OBUF_1625,
      O => RED(2)
    );
  ST_CE_OBUF : X_OBUF
    port map (
      I => ST_CE_SIGNAL_1672,
      O => ST_CE
    );
  ST_RP_OBUF : X_OBUF
    port map (
      I => ST_RP_SIGNAL_1683,
      O => ST_RP
    );
  VS_OBUF : X_OBUF
    port map (
      I => VS_OBUF_1986,
      O => VS
    );
  WE_OBUF : X_OBUF
    port map (
      I => WE_SIGNAL_1988,
      O => WE
    );
  NlwBlock_VGA16BITS_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_VGA16BITS_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwInverterBlock_KBRD_DRIVER_KBRD_DATA_S_6_C : X_INV
    port map (
      I => KBRD_DRIVER_CLKOUT,
      O => NlwInverterSignal_KBRD_DRIVER_KBRD_DATA_S_6_C
    );
  NlwInverterBlock_KBRD_DRIVER_KBRD_DATA_S_5_C : X_INV
    port map (
      I => KBRD_DRIVER_CLKOUT,
      O => NlwInverterSignal_KBRD_DRIVER_KBRD_DATA_S_5_C
    );
  NlwInverterBlock_KBRD_DRIVER_KBRD_DATA_S_4_C : X_INV
    port map (
      I => KBRD_DRIVER_CLKOUT,
      O => NlwInverterSignal_KBRD_DRIVER_KBRD_DATA_S_4_C
    );
  NlwInverterBlock_KBRD_DRIVER_KBRD_DATA_S_3_C : X_INV
    port map (
      I => KBRD_DRIVER_CLKOUT,
      O => NlwInverterSignal_KBRD_DRIVER_KBRD_DATA_S_3_C
    );
  NlwInverterBlock_KBRD_DRIVER_KBRD_DATA_S_1_C : X_INV
    port map (
      I => KBRD_DRIVER_CLKOUT,
      O => NlwInverterSignal_KBRD_DRIVER_KBRD_DATA_S_1_C
    );
  NlwInverterBlock_KBRD_DRIVER_KBRD_DATA_S_2_C : X_INV
    port map (
      I => KBRD_DRIVER_CLKOUT,
      O => NlwInverterSignal_KBRD_DRIVER_KBRD_DATA_S_2_C
    );
  NlwInverterBlock_KBRD_DRIVER_KBRD_DATA_S_0_C : X_INV
    port map (
      I => KBRD_DRIVER_CLKOUT,
      O => NlwInverterSignal_KBRD_DRIVER_KBRD_DATA_S_0_C
    );
  NlwInverterBlock_KBRD_DRIVER_PAR_OK_C : X_INV
    port map (
      I => KBRD_DRIVER_CLKOUT,
      O => NlwInverterSignal_KBRD_DRIVER_PAR_OK_C
    );
  NlwInverterBlock_KBRD_DRIVER_COUNTER_KB_3_C : X_INV
    port map (
      I => KBRD_DRIVER_CLKOUT,
      O => NlwInverterSignal_KBRD_DRIVER_COUNTER_KB_3_C
    );
  NlwInverterBlock_KBRD_DRIVER_COUNTER_KB_2_C : X_INV
    port map (
      I => KBRD_DRIVER_CLKOUT,
      O => NlwInverterSignal_KBRD_DRIVER_COUNTER_KB_2_C
    );
  NlwInverterBlock_KBRD_DRIVER_COUNTER_KB_1_C : X_INV
    port map (
      I => KBRD_DRIVER_CLKOUT,
      O => NlwInverterSignal_KBRD_DRIVER_COUNTER_KB_1_C
    );
  NlwInverterBlock_KBRD_DRIVER_COUNTER_KB_0_C : X_INV
    port map (
      I => KBRD_DRIVER_CLKOUT,
      O => NlwInverterSignal_KBRD_DRIVER_COUNTER_KB_0_C
    );
  NlwInverterBlock_KBRD_DRIVER_KBRD_DATA_S_7_C : X_INV
    port map (
      I => KBRD_DRIVER_CLKOUT,
      O => NlwInverterSignal_KBRD_DRIVER_KBRD_DATA_S_7_C
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

