LIBRARY UNISIM;
USE UNISIM.VCOMPONENTS.ALL;
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.NUMERIC_STD.ALL ;
USE WORK.LETTERS.ALL;
USE WORK.PAQUETE.ALL;
------------------------------------------------------------------------
ENTITY VGA16BITS IS
	PORT( CLK50M		:	IN STD_LOGIC;
			BTN			:	IN STD_LOGIC;

			DPL_ENABLE	:	OUT STD_LOGIC_VECTOR	(3  DOWNTO 0);
			DPL_SEG		:	OUT 	STD_LOGIC_VECTOR	(6  DOWNTO 0);
			POINT_OUT	:	OUT	STD_LOGIC;
			--VGA.
			RED			:	OUT STD_LOGIC_VECTOR	(2  DOWNTO 0);
			GRN			:	OUT STD_LOGIC_VECTOR	(2  DOWNTO 0);
			BLUE			:	OUT STD_LOGIC_VECTOR	(1  DOWNTO 0);
			HS				:	OUT STD_LOGIC;
			VS				:	OUT STD_LOGIC;
			--USB.
			PDB			:	INOUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			ASTB			:	IN STD_LOGIC;
			DSTB			:	IN STD_LOGIC;
			PWRITE		:	IN STD_LOGIC;
			PWAIT			:	OUT STD_LOGIC;
			
			--MEMORY.
			ADDR  		:	OUT   STD_LOGIC_VECTOR (22  DOWNTO 0);
			DATA  		:	INOUT STD_LOGIC_VECTOR (15  DOWNTO 0);
			OE    		:	OUT   STD_LOGIC;
			WE    		:	OUT   STD_LOGIC;
			MT_CE 		:	OUT   STD_LOGIC;
			MT_UB 		:	OUT   STD_LOGIC;
			MT_LB 		:	OUT   STD_LOGIC;
			ST_CE			:	OUT   STD_LOGIC;
			ST_RP			:	OUT   STD_LOGIC;
			MT_CLK   	:	OUT   STD_LOGIC;
			
			--KEYBOARD.
			KBRD_DATA_PIN 	:	IN STD_LOGIC;
			KBRD_CLK_PIN	:	IN STD_LOGIC
			
         );

-- force synthesizer to extract distributed ram for the
-- displayrom signal, and not a block ram, because the block ram
-- is entirely used to store the image.
attribute rom_extract	:	string;
attribute rom_extract	of	VGA16BITS	:	entity	is	"yes";
attribute rom_style	:	string;
attribute rom_style	of	VGA16BITS	:	entity	is	"distributed";


END VGA16BITS;
------------------------------------------------------------------------
ARCHITECTURE BEHAVIORAL OF VGA16BITS IS

SIGNAL	MAX_MOVE_X	:	NATURAL RANGE 0 TO  640 :=0;
SIGNAL	MAX_MOVE_Y	:	NATURAL RANGE 0 TO  480 :=0;

SIGNAL	MOVE_X	:	NATURAL RANGE 0 TO  640 :=0;
SIGNAL	MOVE_Y	:	NATURAL RANGE 0 TO  480:=0;

SIGNAL	ACC_ZOOM	:	NATURAL RANGE 0 TO  3:=3;



 

SIGNAL	COLOR_RED	:	STD_LOGIC_VECTOR (5  DOWNTO 0);
SIGNAL	COLOR_GREEN	:	STD_LOGIC_VECTOR (5  DOWNTO 0);
SIGNAL	COLOR_BLUE	:	STD_LOGIC_VECTOR (3  DOWNTO 0);

SIGNAL	NORM_NEGA	:	BOOLEAN:=TRUE;
SIGNAL	SKD			:	BOOLEAN:=FALSE;
SIGNAL	MARK			:	BOOLEAN:=TRUE;

SIGNAL	ZOOM			:	NATURAL RANGE 0   TO 7:=0;


SIGNAL	COLOR_LETTER:	STD_LOGIC_VECTOR (7  DOWNTO 0);
--MEMORY.
SIGNAL	OE_SIGNAL			:	STD_LOGIC:='0';
SIGNAL	WE_SIGNAL			:	STD_LOGIC:='1';
SIGNAL	MT_CE_SIGNAL		:	STD_LOGIC;
SIGNAL	ST_CE_SIGNAL		:	STD_LOGIC:='0';
SIGNAL	ST_RP_SIGNAL		:	STD_LOGIC:='1';
SIGNAL	DATAS					:	STD_LOGIC_VECTOR (15  DOWNTO 0);

CONSTANT	MAX_DEL_FLASH		:	NATURAL:=1023;
SIGNAL	DELAYFLASH			:	NATURAL RANGE 0 TO MAX_DEL_FLASH:=0;
SIGNAL	CNTPROCCES			:	NATURAL RANGE 0 TO 15:=0;

--SIGNAL	CNTPROCCES			:	NATURAL RANGE 0 TO 7:=0;
--SIGNAL	WRITEDWORD			:	BOOLEAN:=TRUE;
--SIGNAL	WRITEDPICTURE		:	BOOLEAN:=TRUE;
--SIGNAL	SAVE					:	BOOLEAN:=FALSE;
SIGNAL	LOADFLASH			:	BOOLEAN:=TRUE;

SIGNAL	ERASEFLASH			:	BOOLEAN:=FALSE;
SIGNAL	ERASEFLASH_SIGNAL	:	BOOLEAN:=FALSE;

SIGNAL	LOAD_DATA			:	BOOLEAN:=FALSE;
SIGNAL	ERASE_RAM			:	BOOLEAN:=TRUE;
SIGNAL	RESETCNTDPL			:	BOOLEAN:=TRUE;

SIGNAL	POS_MEMORY			:	STD_LOGIC_VECTOR (22  DOWNTO 0);
SIGNAL	POS_MEMORY_NAT		:	NATURAL RANGE      0   TO 8388607;

SIGNAL	POS_H_MEMORY		:	STD_LOGIC_VECTOR (9  DOWNTO 0);
SIGNAL	POS_V_MEMORY		:	STD_LOGIC_VECTOR (8  DOWNTO 0);

SIGNAL	COUNTER_RAM			:	NATURAL RANGE      0   TO 524287 :=0;
SIGNAL	COUNTER_RAM_USB	:	NATURAL RANGE      0   TO 524287 :=0;






--SIGNAL	POS_H_MEMORY_USB	:	NATURAL RANGE      0   TO 1023 :=0;
--SIGNAL	POS_V_MEMORY_USB	:	NATURAL RANGE      0   TO 511 :=0;
SIGNAL	ABORT					:	STD_LOGIC_VECTOR(7 DOWNTO 0):=x"00";
SIGNAL	ABORTEDSN			: BOOLEAN;

SIGNAL	IMPOS					:	STD_LOGIC_VECTOR(22 DOWNTO 0):=(OTHERS=>'0');
SIGNAL	IMPOS_BLOCKERASE	:	STD_LOGIC_VECTOR( 6 DOWNTO 0):=(OTHERS=>'0');
--SIGNAL	IMPOS					:	NATURAL RANGE      0   TO 8388607 :=0;
SIGNAL	POSIM					:	NATURAL RANGE      0   TO 31 :=0;
SIGNAL	PLUSMINUSTAB		:	BOOLEAN:=TRUE;
SIGNAL	IM_16_8_BITS		:	BOOLEAN:=TRUE;
SIGNAL	RESET_CNT_USB		:	BOOLEAN:=FALSE;
SIGNAL	PLUS_MEMORY			:	BOOLEAN:=FALSE;


CONSTANT	MAX_DELAY_PLUS		:	NATURAL:=3;
SIGNAL	DELAY_PLUS_MEMORY	:	NATURAL RANGE 0 TO MAX_DELAY_PLUS:=0;

CONSTANT BEGIN_PRES			:	BOOLEAN:=TRUE;
SIGNAL	PRESENTATION		:	BOOLEAN:=BEGIN_PRES;
SIGNAL	INPRES				:	BOOLEAN:=BEGIN_PRES;
SIGNAL	CNTPRSTEP			:	NATURAL RANGE 0 TO 3:=0;
--SIGNAL	COMPLETE				:	BOOLEAN:=FALSE;
SIGNAL	WORDDATA			:	STD_LOGIC_VECTOR (15  DOWNTO 0);
SIGNAL	WORDDATA_TEMP	:	STD_LOGIC_VECTOR (15  DOWNTO 0):=x"0000";
SIGNAL	NPASOS_SAVE		:	NATURAL RANGE 0 TO 7:=0;
SIGNAL	PUTDATA			:	BOOLEAN:=FALSE;
SIGNAL	PICTUREOK		:	BOOLEAN:=TRUE;
SIGNAL	SHOWINFO			:	BOOLEAN:=TRUE;
------------------------------------------------------------------------
--INFO PICTURE.

SIGNAL	UNIDAD_IM	:	NATURAL RANGE 0 TO 15;
SIGNAL	DECENA_IM	:	NATURAL RANGE 0 TO 15;




SIGNAL	CNTDPL		:	NATURAL RANGE 0 TO 50000000:=0;
SIGNAL	MNGDPL		:	NATURAL RANGE 0 TO 15:=0;


--ZOOM.
SIGNAL	BYTEALL		:	STD_LOGIC_VECTOR (7  DOWNTO 0);
SIGNAL	U_ZOOM		:	NATURAL RANGE 0 TO 15:=0;
SIGNAL	D_ZOOM		:	NATURAL RANGE 0 TO 15:=0;
SIGNAL	C_ZOOM		:	NATURAL RANGE 0 TO 15:=0;


SIGNAL	POW_ZOOM		:	NATURAL RANGE 0 TO 255:=0;


BEGIN
	USBDRIVER		:	USBRECEIVER PORT	MAP ( CLK50M , ABORT , PDB , ASTB , DSTB , PWRITE , PWAIT , 
															WORDDATA , PUTDATA , ABORTEDSN );
	KBRD_DRIVER 	:	KBRD_PS2 PORT MAP( CLK50M , KBRD_DATA_PIN , KBRD_CLK_PIN , RESET , KBRD_DATA , 
													 ENABLE_KB , KEY_DOWN , KEY_UP  , E0 );
	
	
	BYTE2BCD_DRV	:	BYTE2BCD	PORT	MAP( POSIM , UNIDAD_IM , DECENA_IM );
	
	
	--ZOOM.
	BYTE2BCDALL_DRV	:	BYTE2BCDALL	PORT	MAP( BYTEALL , U_ZOOM , D_ZOOM, C_ZOOM );
	POW_ZOOM	<=	(2**ZOOM);
	BYTEALL	<=	CONV_STD_LOGIC_VECTOR( POW_ZOOM , 8);
	
	POINT_OUT	<=	'1';
--	  a
--	f   b
--   g
-- e   c
--	  d		  --abcdefg--
	DPL_SEG	<=	"1110111";
	DPL_ENABLE	<=	NOT (CONV_STD_LOGIC_VECTOR(MNGDPL , 4 ));
	
	
	MNGLETTER(0 TO 3)	<=	( 10 , 11 , 12 , 13 );
	MNGLETTER(4)	<=	20	WHEN	PICTUREOK	ELSE
							14;
	MNGLETTER(5)	<=	13	WHEN	PICTUREOK	ELSE
							15;
	MNGLETTER(6)	<=	17	WHEN	PICTUREOK	ELSE
							16;
	MNGLETTER(7)	<=	17;
	MNGLETTER(8 TO 11)	<=	( 18 , 14 , 19 , 17 );
	MNGLETTER(12)	<=	 DECENA_IM;

	MNGLETTER(13)	<=	UNIDAD_IM;
	
	
	
	MNGLETTER(14 TO 23)	<=	( 17 , 17, 15 , 11 , 26 , 27 , 12 , 10, 17, 17 )	WHEN	NORM_NEGA	ELSE
									( 17 , 17, 15 , 20 , 16 , 12 , 23 , 14, 25, 20 );
	
	
	
	MNGLETTER(24)	<=	17;
	
	
	
	
	MNGLETTER(25 TO 27)<=	(24, 28, 13)	WHEN	SKD	ELSE	(OTHERS=>17);
	
	MNGLETTER(28)<=	17;
	MNGLETTER(29)<=	17;
	
	MNGLETTER(30)	<=	2	WHEN	IM_16_8_BITS	ELSE
							1;
	
	MNGLETTER(31)	<=	21;--B
	MNGLETTER(32)	<=	22;--Y
	MNGLETTER(33)	<=	23;--T
	MNGLETTER(34)	<=	20;--E
	
								--S
	MNGLETTER(35)	<=	24	WHEN	IM_16_8_BITS	ELSE--
							17;--''
	
	
	MNGLETTER(36)<=	17;
	MNGLETTER(37)<=	17;
	MNGLETTER(38)<=	17;
	
	MNGLETTER(39)<=	29;
	MNGLETTER(40)<=	11;
	MNGLETTER(41)<=	11;
	MNGLETTER(42)<=	27;
	MNGLETTER(43)<=	17;
	
	MNGLETTER(44)<=	C_ZOOM;
	MNGLETTER(45)<=	D_ZOOM;
	MNGLETTER(46)<=	U_ZOOM;
	MNGLETTER(47)<=	30;
	
	
	MNGLETTER(48 TO 63)	<=	(OTHERS=>17);
	
	POSLETTER<=	(CONV_INTEGER(POS_H_MEMORY))/8;
	
	
	CNTDIGITH<=	CONV_INTEGER( POS_H_MEMORY(2 DOWNTO 0) );
	CNTDIGITV<=	CONV_INTEGER( POS_V_MEMORY(3 DOWNTO 0) );
	
	
	CHARBIT_ACT	<=	CHARBIT	AND
						TO_BIT( (POS_H_MEMORY<504 AND POS_V_MEMORY<15) )	AND
						TO_BIT( ((SHOWINFO OR (NOT PICTUREOK)) AND (MNGLETTER(POSLETTER)/=17)) );
	
	
	CHARBIT	<=	CARACTER(MNGLETTER(POSLETTER))(CNTDIGITV,CNTDIGITH);
	COLOR_LETTER	<=	(OTHERS=>CHARBIT_ACT);
	
	

	COLOR_RED	<=	DATA(15 DOWNTO 10 );
	COLOR_GREEN	<=	DATA( 9 DOWNTO  4 );
	COLOR_BLUE	<=	DATA( 3 DOWNTO  0 );
	
	VGA_DRVR1 : VGADRVR PORT MAP( CLK50M,
											IM_16_8_BITS,
											NORM_NEGA,
											SKD,
											MARK,
											ZOOM,
											COLOR_LETTER,
											COLOR_RED, COLOR_GREEN, COLOR_BLUE,
											MOVE_X, MOVE_Y,
											COUNTER_RAM,
											POS_H_MEMORY, POS_V_MEMORY,
											RED, GRN, BLUE, HS, VS );
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	OE	<=	OE_SIGNAL;
	WE	<=	WE_SIGNAL;
--	WE		<=	'0' WHEN PLUS_MEMORY ELSE-- OR (NOT PICTUREOK) ELSE
--				'1';
	ST_CE	<=	ST_CE_SIGNAL;
	ST_RP	<=	ST_RP_SIGNAL;
	
	MT_CE	<=	MT_CE_SIGNAL;-- and BIT_VECTOR( ERASEFLASH );
	MT_UB	<=	'0';
	MT_LB	<=	'0';
	MT_CLK	<=	'0';
	
	ADDR<=POS_MEMORY;
	IMPOS(15 DOWNTO 0)	<=	(OTHERS=>'0');
	POS_MEMORY_NAT	<=	(CONV_INTEGER(IMPOS) + COUNTER_RAM_USB)	WHEN	PLUS_MEMORY OR 
																							ERASE_RAM	OR
																							LOADFLASH	OR
																							ERASEFLASH	ELSE
							(CONV_INTEGER(IMPOS) + COUNTER_RAM);
	
	POS_MEMORY	<=	CONV_STD_LOGIC_VECTOR( POS_MEMORY_NAT , 23 );
	
										

										
										

	
	
	DATA	<=	DATAS;
	DATAS	<=	(OTHERS =>'Z')	WHEN	OE_SIGNAL='0' AND WE_SIGNAL='1'	ELSE
				WORDDATA 		WHEN	PLUS_MEMORY					ELSE
				WORDDATA_TEMP	WHEN	(LOADFLASH AND LOAD_DATA) 	OR 
											ERASE_RAM						OR	
											ERASEFLASH					ELSE--WRITE.
				(OTHERS =>'Z');

	
	PROCESS(	CLK50M , PUTDATA, DELAYFLASH, OE_SIGNAL, WE_SIGNAL, ST_RP_SIGNAL, NPASOS_SAVE, BTN, ENABLE_KB,
				KBRD_DATA )
	BEGIN
		IF (CLK50M'EVENT AND CLK50M='1') THEN

			IF ERASE_RAM THEN-- ERASE RAM BEGIN.
				
				IF PICTUREOK THEN
					PICTUREOK	<=	FALSE;
					IMPOS(22 DOWNTO 16)	<=	(OTHERS=>'0');
					POSIM	<= 0;
					WORDDATA_TEMP	<=	(OTHERS=>'0');
					WE_SIGNAL	<=	'0';
					COUNTER_RAM_USB	<=	0;
					MT_CE_SIGNAL	<=	'0';
					ST_CE_SIGNAL	<=	'1';
					ST_RP_SIGNAL	<=	'0';
				ELSE
					IF DELAYFLASH=2 THEN
						DELAYFLASH	<=0;
						IF COUNTER_RAM_USB=307199 THEN
							COUNTER_RAM_USB	<=	0;
							IF POSIM=24 THEN
								IMPOS(22 DOWNTO 16)	<=	(OTHERS=>'0');
								POSIM	<= 0;
								ST_RP_SIGNAL	<=	'0';
								DELAYFLASH	<=	0;
								NPASOS_SAVE	<=	0;
								ST_CE_SIGNAL	<=	'1';
								MT_CE_SIGNAL	<=	'0';
								OE_SIGNAL	<=	'0';
								WE_SIGNAL	<=	'1';
								PICTUREOK	<=	TRUE;
								ERASE_RAM	<=	FALSE;								
							ELSE
								IMPOS(22 DOWNTO 16)	<=	IMPOS(22 DOWNTO 16)+5;
								POSIM	<=	POSIM+1;
							END IF;
						ELSE
							COUNTER_RAM_USB	<=	COUNTER_RAM_USB+1;
						END IF;
					ELSE
						DELAYFLASH	<=	DELAYFLASH+1;
					END IF;
				END IF;
					
				-- ERASE RAM END.
				
			ELSIF LOADFLASH THEN --LOAD FLASH BEGIN.
				IF DELAYFLASH=MAX_DEL_FLASH/256 THEN
					DELAYFLASH	<=	0;
					CASE NPASOS_SAVE IS
						WHEN	0	=>
							PICTUREOK	<=	FALSE;
							ST_RP_SIGNAL	<=	'0';
							MT_CE_SIGNAL	<=	'1';
							ST_CE_SIGNAL	<=	'1';
							OE_SIGNAL	<=	'0';
							WE_SIGNAL	<=	'1';
							ST_RP_SIGNAL	<=	'1';
							NPASOS_SAVE	<=	NPASOS_SAVE+1;							
						WHEN	1	=>
							ST_RP_SIGNAL	<=	'1';
							ST_CE_SIGNAL	<=	'0';
							NPASOS_SAVE	<=	NPASOS_SAVE+1;
						WHEN	2	=>
							WORDDATA_TEMP	<=	DATA;
							NPASOS_SAVE	<=	NPASOS_SAVE+1;
						WHEN	3	=>
							ST_CE_SIGNAL	<=	'1';
							NPASOS_SAVE	<=	NPASOS_SAVE+1;
						WHEN	4	=>
							MT_CE_SIGNAL	<=	'0';
							NPASOS_SAVE	<=	NPASOS_SAVE+1;
						WHEN	5	=>
							MT_CE_SIGNAL	<=	'0';
							WE_SIGNAL	<=	'0';
							LOAD_DATA	<=	TRUE;
							NPASOS_SAVE	<=	NPASOS_SAVE+1;
						WHEN	6	=>
							WE_SIGNAL	<=	'0';
							LOAD_DATA	<=	FALSE;
							NPASOS_SAVE	<=	NPASOS_SAVE+1;
						WHEN	7	=>
							DELAYFLASH	<=	0;
							NPASOS_SAVE	<=	NPASOS_SAVE+1;
							ST_RP_SIGNAL	<=	'0';
							ST_CE_SIGNAL	<=	'1';
							
							IF COUNTER_RAM_USB=307199 THEN
								COUNTER_RAM_USB	<=	0;
								IF POSIM=24 THEN
									IMPOS(22 DOWNTO 16)	<=	(OTHERS=>'0');
									POSIM	<= 0;
									ST_RP_SIGNAL	<=	'0';
									DELAYFLASH	<=	0;
									NPASOS_SAVE	<=	0;
									LOADFLASH	<=	FALSE;
									ST_CE_SIGNAL	<=	'1';
									MT_CE_SIGNAL	<=	'0';
									OE_SIGNAL	<=	'0';
									WE_SIGNAL	<=	'1';
									PICTUREOK	<=	TRUE;
									CNTPRSTEP	<=	1;
								ELSE
									IMPOS(22 DOWNTO 16)	<=	IMPOS(22 DOWNTO 16)+5;
									POSIM	<=	POSIM+1;
								END IF;
							ELSE
								COUNTER_RAM_USB	<=	COUNTER_RAM_USB+1;
							END IF;
						WHEN	OTHERS	=>	
							NPASOS_SAVE	<=	NPASOS_SAVE+1;
					END CASE;
				ELSE
					DELAYFLASH	<=	DELAYFLASH+1;
					IF OE_SIGNAL='1' THEN
						WE_SIGNAL	<=	'1';
						OE_SIGNAL	<=	'0';
					ELSIF ST_CE_SIGNAL='1' THEN
						ST_CE_SIGNAL	<=	'0';
					ELSIF ST_RP_SIGNAL='0' THEN
						ST_RP_SIGNAL	<=	'1';
					END IF;
				END IF;
				--LOAD FLASH END.
			
			
			ELSIF ERASEFLASH OR ERASEFLASH_SIGNAL THEN --ERASE FLASH BEGIN.
				COUNTER_RAM_USB	<=	0;
				MT_CE_SIGNAL	<=	'1';
				DELAYFLASH	<=	DELAYFLASH+1;
				IF DELAYFLASH=MAX_DEL_FLASH THEN
					DELAYFLASH	<=	0;
					CASE CNTPROCCES IS
						WHEN	0	=>
							WORDDATA_TEMP	<=	x"0020";
							OE_SIGNAL		<=	'0';
							ST_CE_SIGNAL	<=	'0';
							WE_SIGNAL		<=	'1';
							ST_RP_SIGNAL	<=	'1';
							CNTPROCCES	<=	CNTPROCCES+1;
							ERASEFLASH	<=	TRUE;
						WHEN	1	=>
							OE_SIGNAL		<=	'1';
							CNTPROCCES	<=	CNTPROCCES+1;
						WHEN	2	=>
							WE_SIGNAL	<=	'0';
							CNTPROCCES	<=	CNTPROCCES+1;
						WHEN	3	=>
							WE_SIGNAL	<=	'1';
							CNTPROCCES	<=	CNTPROCCES+1;
						WHEN	4	=>
							WORDDATA_TEMP	<=	x"00D0";
							CNTPROCCES	<=	CNTPROCCES+1;
						WHEN	5	=>
							WE_SIGNAL	<=	'0';
							CNTPROCCES	<=	CNTPROCCES+1;
						WHEN	6	=>
							WE_SIGNAL	<=	'1';
							OE_SIGNAL	<=	'1';
							CNTPROCCES	<=	CNTPROCCES+1;
						WHEN	7	=>
							WORDDATA_TEMP	<=	x"00FF";
							CNTPROCCES	<=	CNTPROCCES+1;
						WHEN	8	=>
							WE_SIGNAL	<=	'0';
							CNTPROCCES	<=	CNTPROCCES+1;
						WHEN	9	=>
							WE_SIGNAL	<=	'1';
							CNTPROCCES	<=	CNTPROCCES+1;
						WHEN	10	=>
							OE_SIGNAL	<=	'0';
							CNTPROCCES	<=	CNTPROCCES+1;
						WHEN	11	=>
							IF DATAS(7)='1' THEN
								CNTPROCCES	<=	CNTPROCCES+1;
							ELSE
								CNTPROCCES	<=	6;
							END IF;
						WHEN	12	=>
							CNTPROCCES	<=	CNTPROCCES+1;
							IF IMPOS(22 DOWNTO 16)=(IMPOS_BLOCKERASE+"0000100") THEN
								ERASEFLASH	<=	FALSE;
								LOADFLASH	<=	TRUE;
								IMPOS(22 DOWNTO 16)	<=	IMPOS(22 DOWNTO 16)-4;
								OE_SIGNAL		<=	'1';
								ST_CE_SIGNAL	<=	'1';
								WE_SIGNAL		<=	'1';
								ST_RP_SIGNAL	<=	'0';
							ELSE
								IMPOS(22 DOWNTO 16)	<=	IMPOS(22 DOWNTO 16)+1;
							END IF;
							
							
						WHEN OTHERS	=>	
							CNTPROCCES	<=	CNTPROCCES+1;
					END CASE;
				END IF;
				-- ERASE FLASH END.
			
			
			ELSIF ABORTEDSN THEN
				MT_CE_SIGNAL	<=	'0';
				ST_CE_SIGNAL	<=	'1';
				ST_RP_SIGNAL	<=	'0';
				COUNTER_RAM_USB	<=	0;
				PICTUREOK	<=	TRUE;
				PLUS_MEMORY	<=	FALSE;
				DELAY_PLUS_MEMORY	<=	0;
			ELSIF PLUS_MEMORY THEN
				WE_SIGNAL	<=	'0';
				DELAY_PLUS_MEMORY	<=	DELAY_PLUS_MEMORY+1;
				--MAX_DELAY_PLUS.
				IF DELAY_PLUS_MEMORY=2 THEN
					PLUS_MEMORY	<=	FALSE;
					WE_SIGNAL	<=	'1';
					PICTUREOK	<=	FALSE;
					DELAY_PLUS_MEMORY	<=	0;
					IF COUNTER_RAM_USB=307199 THEN
						COUNTER_RAM_USB	<=	0;
						PICTUREOK	<=	TRUE;
						--IF POSIM=24 THEN
							--IMPOS(22 DOWNTO 16)	<=	(OTHERS=>'0');
							--POSIM	<= 0;
						--ELSE
							--IMPOS(22 DOWNTO 16)	<=	IMPOS(22 DOWNTO 16)+5;
							--POSIM	<=	POSIM+1;
						--END IF;
					ELSE
						COUNTER_RAM_USB	<=	COUNTER_RAM_USB+1;
					END IF;
				END IF;
			ELSIF PUTDATA THEN
				WE_SIGNAL	<=	'0';
				MT_CE_SIGNAL	<=	'0';
				ST_CE_SIGNAL	<=	'1';
				ST_RP_SIGNAL	<=	'0';
				PICTUREOK	<=	FALSE;
				PLUS_MEMORY	<=	TRUE;
				DELAY_PLUS_MEMORY	<=	0;	
			
			ELSIF BTN='1' OR RESET_CNT_USB OR ABORT(7 DOWNTO 5)="111" THEN
				MT_CE_SIGNAL	<=	'0';
				ST_CE_SIGNAL	<=	'1';
				ST_RP_SIGNAL	<=	'0';
				LOADFLASH	<=	FALSE;
				COUNTER_RAM_USB	<=	0;
				PICTUREOK	<=	TRUE;
			ELSIF PRESENTATION AND PICTUREOK THEN
				IF CNTDPL=49999999 THEN
					CNTPRSTEP	<=	CNTPRSTEP+1;
					CASE CNTPRSTEP IS
						WHEN	0 =>
							IF IMPOS(22 DOWNTO 16)="111"&x"8" THEN--  11110011110
								IMPOS(22 DOWNTO 16)	<=	(OTHERS=>'0');
								POSIM	<= 0;
								IM_16_8_BITS	<=	FALSE;
								--PRESENTATION	<=	FALSE;
							ELSE
								IMPOS(22 DOWNTO 16)	<=	IMPOS(22 DOWNTO 16)+5;
								POSIM	<= POSIM+1;
								IM_16_8_BITS	<=	FALSE;
							END IF;
							
						WHEN	2	=>
							IM_16_8_BITS	<=	TRUE;
						WHEN OTHERS	=>	NULL;
					END CASE;		
				END IF;
			END IF;
			
			
			ABORT(4 DOWNTO 0)	<=	CONV_STD_LOGIC_VECTOR(POSIM,5);
			IF ERASE_RAM OR LOADFLASH OR ERASEFLASH THEN
				ABORT(7 DOWNTO 5)	<=	"111";
			END IF;
			

			IF RESETCNTDPL THEN
				CNTDPL	<=	0;
				MNGDPL	<=	0;
				RESETCNTDPL	<=	FALSE;
			ELSE
				CNTDPL	<=	CNTDPL+1;
				IF CNTDPL=49999999 THEN
					CNTDPL	<=	0;
					MNGDPL	<=	MNGDPL+1;
					
					IF ABORT(7 DOWNTO 5)="111" THEN
						ABORT(7 DOWNTO 5)	<=	"000";
					END IF;
					
				END IF;
			END IF;
			
	
			
			
		IF MOVE_X>MAX_MOVE_X THEN
			MOVE_X<=	MAX_MOVE_X;
		END IF;
		
			
		IF MOVE_Y>MAX_MOVE_Y THEN
			MOVE_Y<=	MAX_MOVE_Y;
		END IF;
		
------KEYBOARD------------------------------------------------------------------
			IF BTN='1' THEN
				RESET	<=	TRUE;
			ELSIF ( ENABLE_KB ) THEN
			
				IF ( KEY_DOWN AND E0 ) THEN
					CASE KBRD_DATA IS
						
						WHEN	"01110101"	=>	--ARRIBA
							IF ZOOM/=0 THEN
								IF (MOVE_Y-(2**ACC_ZOOM))<0 THEN
									MOVE_Y	<=	0;
								ELSE
									MOVE_Y	<=	MOVE_Y-(2**ACC_ZOOM) ;
								END IF;
							ELSE
								MOVE_Y	<=	0;
							END IF;
							
						WHEN	"01110010"	=>	--ABAJO
							IF ZOOM/=0 THEN
								IF (MOVE_Y+(2**ACC_ZOOM))>MAX_MOVE_Y THEN
									MOVE_Y	<=	MAX_MOVE_Y;
								ELSE
									MOVE_Y	<=	MOVE_Y+(2**ACC_ZOOM);
								END IF;
							ELSE
								MOVE_Y	<=	0;
							END IF;
						
						
						WHEN	"01110100"	=>	--DERECHA
							IF ZOOM/=0 THEN
								IF (MOVE_X+(2**ACC_ZOOM))>MAX_MOVE_X THEN
									MOVE_X	<=	MAX_MOVE_X;
								ELSE
									MOVE_X	<=	MOVE_X+(2**ACC_ZOOM);
								END IF;
							ELSE
								MOVE_X	<=	0;
							END IF;
							
						WHEN	"01101011"	=>	--IZQUIERDA
							IF ZOOM/=0 THEN
								IF (MOVE_X-(2**ACC_ZOOM))<0 THEN
									MOVE_X	<=	0;
								ELSE
									MOVE_X	<=	MOVE_X-(2**ACC_ZOOM);
								END IF;
							ELSE
								MOVE_X	<=	0;
							END IF;
						
						
						
						
						
						
						WHEN	x"71"	=>	--BORRAR FLASH
							IF CTRL AND ALT THEN
								ERASEFLASH_SIGNAL	<=	TRUE;
								IMPOS_BLOCKERASE	<=	IMPOS(22 DOWNTO 16);
							END IF;
						WHEN	OTHERS	=> NULL;

					END CASE;
				ELSIF ( KEY_DOWN ) THEN
					CASE KBRD_DATA IS
						--WHEN	"01110101"	=>	--ARRIBA
						--WHEN	"01110010"	=>	--ABAJO
						--WHEN	"01110100"	=>	--DERECHA
						--WHEN	"01101011"	=>	--IZQUIERDA
						WHEN	x"14"	=>	-- CTRL.
							CTRL	<=	TRUE;
						WHEN	x"11"	=>	-- ALT.
							ALT	<=	TRUE;
						
						
						--WHEN	x"1D"	=>	-- COMPLETE.
							--COMPLETE	<=	NOT COMPLETE;
						--WHEN	x"1B"	=>	-- SALVAR.
							--IF CTRL AND (NOT SAVING) THEN
								--SAVE	<=	TRUE;
							--END IF;
						WHEN	x"3A"	=> --MARKA.
							IF CTRL AND ALT THEN
								MARK	<=	NOT MARK;
							END IF;
						
						WHEN	x"1C"	=> --ABORTAR.
							IF CTRL AND ALT THEN
								ABORT(7 DOWNTO 5)	<=	"111";
							END IF;
						
						
						WHEN	x"1B"	=> --SKD.
							--IF CTRL AND ALT THEN
								SKD	<=	NOT SKD;
							--END IF;
						
												
						WHEN	x"1A"	=> --ZOOM.
							IF CTRL AND ALT THEN
								ZOOM	<=	0;
								MOVE_X<=	0;
								MOVE_Y<=	0;
							ELSE
								IF PLUSMINUSTAB THEN
									ZOOM	<=	ZOOM+1;
								ELSE
									ZOOM	<=	ZOOM-1;
								END IF;
							END IF;
								
						
						WHEN	x"31"	=> --NORMAL->NEGATIVO->NORMAL.
							--IF CTRL AND ALT THEN
								NORM_NEGA	<=	NOT NORM_NEGA;
							--END IF;
						
						
						
						WHEN	x"4B"	=> --LOADING
							IF CTRL AND ALT AND (NOT LOADFLASH) THEN
								LOADFLASH	<=	TRUE;
								RESETCNTDPL	<=	TRUE;
								IMPOS(22 DOWNTO 16)	<=	(OTHERS=>'0');
								POSIM	<= 0;
							END IF;

						
						WHEN	x"24"	=>--ERASE RAM.
							IF CTRL AND ALT AND (NOT LOADFLASH) AND PICTUREOK AND (NOT ERASE_RAM) THEN
								RESETCNTDPL	<=	TRUE;
								ERASE_RAM	<=	TRUE;
							END IF;
						
--						
--						WHEN	x"05"	=>
--							IF POSIM=13 THEN
--								IMPOS(22 DOWNTO 12)	<=	"10000011010";
--								POSIM	<= 14;--"11110011110"
--							ELSE
--								IMPOS(22 DOWNTO 12)	<=	"01111001111";
--								POSIM	<=	13;
--							END IF;
						
						WHEN	x"29"	=>	-- PAUSAR PRESENTACION, SPACE
							IF INPRES THEN
								PRESENTATION	<=	NOT PRESENTATION;
							END IF;
						WHEN	x"21"	=>	-- CANCELAR PRESENTACION, CTR+ALT+C
							IF CTRL AND ALT THEN
								PRESENTATION	<=	FALSE;
								INPRES	<=	FALSE;
							END IF;
						WHEN	x"4D"	=>	--PRESENTATION, CTR+ALT+P
							IF CTRL AND ALT AND (NOT PRESENTATION) THEN
								CNTPRSTEP	<=	1;
								IMPOS(22 DOWNTO 16)	<=	(OTHERS=>'0');
								POSIM	<= 0;
								PRESENTATION	<=	TRUE;
								IM_16_8_BITS	<=	FALSE;
								INPRES	<=	TRUE;
							END IF;
						
						
						WHEN	x"15"	=>	-- 8 � 16 BITS, Y.
							IF NOT PRESENTATION THEN
								IM_16_8_BITS	<=	NOT IM_16_8_BITS;
							END IF;
							
							
							

						
						WHEN	x"43"	=>	--I--> SHOW INFO.
							SHOWINFO	<=	NOT SHOWINFO;

						WHEN	x"07"	=>	--F12.
							RESET_CNT_USB	<=	TRUE;

						
						WHEN	x"59"	=>	--SHIFT DERECHO.
							PLUSMINUSTAB	<=	FALSE;

						WHEN	x"12"	=>	--SHIFT IZQUIERDO.
							PLUSMINUSTAB	<=	FALSE;
						
						
						WHEN	x"45"	=>	-- POSIM=0.
							IF PICTUREOK AND (NOT PRESENTATION) AND (NOT LOADFLASH) THEN
								IMPOS(22 DOWNTO 16)	<=	(OTHERS=>'0');
								POSIM	<= 0;
							END IF;
						
						WHEN	x"46"	=>	-- POSIM=26.
							IF PICTUREOK AND (NOT PRESENTATION) AND (NOT LOADFLASH) THEN
								IMPOS(22 DOWNTO 16)	<=	"111"&x"8";
								POSIM	<= 24;
							END IF;

							
						WHEN	x"0D"	=>	--TAB
							
							IF PICTUREOK AND (NOT PRESENTATION) AND (NOT LOADFLASH) THEN
								IF PLUSMINUSTAB THEN
									IF IMPOS(22 DOWNTO 16)="111"&x"8" THEN
										IMPOS(22 DOWNTO 16)	<=	(OTHERS=>'0');
										POSIM	<= 0;
									ELSE
										IMPOS(22 DOWNTO 16)	<=	IMPOS(22 DOWNTO 16)+5;
										POSIM	<=	POSIM+1;
									END IF;
								ELSE
									IF IMPOS(22 DOWNTO 16)=x"000"&x"0" THEN
										IMPOS(22 DOWNTO 16)	<=	"111"&x"8";
										POSIM	<=	24;
									ELSE
										IMPOS(22 DOWNTO 16)	<=	IMPOS(22 DOWNTO 16)-5;
										POSIM	<=	POSIM-1;
									END IF;
								END IF;
							END IF;
						
						
						
						WHEN	x"06"	=>	--F2.
							IF ACC_ZOOM/=3 THEN
								ACC_ZOOM	<=	ACC_ZOOM+1;
							END IF;
						
						
						WHEN	x"05"	=>	--F1.
							IF ACC_ZOOM/=0 THEN
								ACC_ZOOM	<=	ACC_ZOOM-1;
							END IF;
							
							
							
						WHEN	OTHERS	=> NULL;
							
					END CASE;
				ELSIF ( KEY_UP ) THEN
					CASE KBRD_DATA IS
						
						WHEN	x"71"	=>	--BORRAR FLASH
							ERASEFLASH_SIGNAL	<=	FALSE;
						
						--WHEN	x"1B"	=>	-- SALVAR.
							--SAVE	<=	FALSE;
														
						WHEN	x"12"	=>	--SHIFT IZQUIERDO.
							PLUSMINUSTAB	<=	TRUE;
							
						WHEN	x"59"	=>	--SHIFT DERECHO.
							PLUSMINUSTAB	<=	TRUE;
							
						WHEN	x"07"	=>	--F12.
							RESET_CNT_USB	<=	FALSE;
						
						WHEN	x"14"	=>	-- CTRL.
							CTRL	<=	FALSE;
						WHEN	x"11"	=>	-- ALT.
							ALT	<=	FALSE;
						
						
						WHEN	x"1C"	=>
							--ABORT	<=	x"FF";
							ABORT(7 DOWNTO 5)	<=	"111";
							RESETCNTDPL	<=	TRUE;
--							IF CTRL AND ALT THEN
--								ABORT	<=	x"FF";
--							ELSE
--								ABORT	<=	x"00";
--							END IF;
						
						
						
						
						
						WHEN	OTHERS	=> NULL;
							
					END CASE;
				END IF;
			ELSIF RESET THEN
					RESET	<=	FALSE;
			END IF;
			
		

		END IF;
	END PROCESS;
	
	
	
	
	WITH	ZOOM	SELECT
	MAX_MOVE_X	<=	
	  0	WHEN	0,
	320	WHEN	1,
	480	WHEN	2,
	560	WHEN	3,
	600	WHEN	4,
	620	WHEN	5,
	630	WHEN	6,
	635	WHEN	OTHERS;

	WITH	ZOOM	SELECT
	MAX_MOVE_Y	<=	
	  0	WHEN	0,
	240	WHEN	1,
	360	WHEN	2,
	420	WHEN	3,
	450	WHEN	4,
	465	WHEN	5,
	463	WHEN	6,
	467	WHEN	OTHERS;
END BEHAVIORAL;