--------------------------------------------------------------------------------
-- Company: 	 Digilent Ro
-- Engineer:	 Mircea Dabacan
--
-- Create Date:    20:02:14 10/29/06
-- Design Name:    
-- Module Name:    clkDllCtrl - Behavioral
-- Project Name:   
-- Target Device:  Spartan 3
-- Tool versions:  WebPack 7.01i
-- Description:	Provides 2 synchronised, 50% duty cycle clock signals:
--	          - ckOut    - twice the frequency of ckIn
--           - ckDivOut - divided by the value of attribute CLKDV_DIVIDE
-- Dependencies:
-- 
-- Revision: 0.01
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
Library UNISIM;
use UNISIM.vcomponents.all;
USE WORK.PAQUETE.ALL;

entity clkDllCtrl is
  port(ckIn: in std_logic;
       ckOut: inout std_logic
       --ckDivOut: inout std_logic
		 );

end clkDllCtrl;

architecture Behavioral of clkDllCtrl is

  component CLKDLL
    generic (CLKDV_DIVIDE : real := 2.0; -- (1.5, 2.0, 2.5,
                                         -- 3.0, 4.0, 5.0, 8.0, 16.0)
             DUTY_CYCLE_CORRECTION : Boolean := TRUE; -- (TRUE, FALSE)
             STARTUP_WAIT : boolean := FALSE); -- (TRUE, FALSE)

    port(CLK0 : out STD_ULOGIC;
         CLK180 : out STD_ULOGIC;
         CLK270 : out STD_ULOGIC;
         CLK2X : out STD_ULOGIC;
         CLK90 : out STD_ULOGIC;
         CLKDV : out STD_ULOGIC;
         LOCKED : out STD_ULOGIC;
         CLKFB : in STD_ULOGIC;
         CLKIN : in STD_ULOGIC;
         RST : in STD_ULOGIC);
  end component;

  attribute CLKDV_DIVIDE : real;
  attribute DUTY_CYCLE_CORRECTION : boolean;
  attribute STARTUP_WAIT : boolean;

--signal ckX2: std_logic;

begin

--Bug in the WebPack 8.1. Without this "pointless" instantiation,
--which will be removed by minimization, the design is "unroutable"

   BUFG_inst1 : BUFG
   port map (
      O => open,   -- Clock buffer output
      I => ckOut      -- Clock buffer input
   );

   CLKDLL_inst : CLKDLL
   port map (
      CLK0 => CLK0DLL,   	  	-- 0 degree DLL CLK ouptput
      CLK180 => CLK180DLL, 		-- 180 degree DLL CLK output
      CLK270 => CLK270DLL, 		-- 270 degree DLL CLK output
      CLK2X => ckOut,   	-- 2X DLL CLK output
      CLK90 => CLK90DLL,   		-- 90 degree DLL CLK output
      CLKDV => CLKDVDLL,--ckDivOut,   -- Divided DLL CLK out (CLKDV_DIVIDE)
      LOCKED => LOCKEDDLL, 		-- DLL LOCK status output
      CLKFB => ckOut,   	-- DLL clock feedback
      CLKIN => ckIn,   		-- Clock input (from IBUFG, BUFG or DLL)
      RST => '0'        	-- DLL asynchronous reset input
   );

end Behavioral;




































































--			LIBRARY IEEE;
--USE IEEE.STD_LOGIC_1164.ALL;
----USE IEEE.NUMERIC_STD.ALL;
--USE IEEE.STD_LOGIC_UNSIGNED.ALL;
--USE IEEE.STD_LOGIC_ARITH.ALL;
---------------------------------------------------------------------------
--ENTITY TECLADO_PS2VHD IS
--			PORT	(	CLK50M	:	IN  STD_LOGIC;
--						DATA_PS2 :	IN STD_LOGIC;
--						CLK_PS2	:	IN STD_LOGIC;
--						BTN		:	IN STD_LOGIC;
--						LED		:	OUT  STD_LOGIC_VECTOR (7 DOWNTO 0);
--						
--						DISPLAY_ENABLE : OUT STD_LOGIC_VECTOR (3  DOWNTO 0);
--						DISPLAY_SEG		:	OUT  STD_LOGIC_VECTOR (7 DOWNTO 0)
--						);
--END TECLADO_PS2VHD;
---------------------------------------------------------------------------
--ARCHITECTURE BEHAVIORAL OF TECLADO_PS2VHD IS
--
--SIGNAL	CLK_P		:	STD_LOGIC := '0';
----SIGNAL RX_ON: STD_LOGIC := '0';
--SIGNAL	PAR_OK		:	STD_LOGIC := '0';
--SIGNAL	COUNTER_KB	:	NATURAL RANGE 0 TO 15;
--CONSTANT DEL_CLK		:	NATURAL := 8;
--
--SIGNAL	DATA_KEY		:	STD_LOGIC_VECTOR (7 DOWNTO 0) := "00000000";
--SIGNAL	KEY_UP		:	BOOLEAN	:=FALSE;
--SIGNAL	KEY_DOWN		:	BOOLEAN	:=FALSE;
--
--SIGNAL	WT_KB			:	BOOLEAN	:=FALSE;
--
--
--
----DISPLAY
--SIGNAL PRESCALER2: NATURAL RANGE 0 TO 49999:=0;
--
--
--SIGNAL SELECTOR: STD_LOGIC_VECTOR (1  DOWNTO 0):="01";
--
--SIGNAL VALUE: NATURAL RANGE 0 TO 10:=0;
--SIGNAL UNIDAD: NATURAL RANGE 0 TO 10:=0;
--SIGNAL DECENA: NATURAL RANGE 0 TO 9:=0;
--SIGNAL CENTENA: NATURAL RANGE 0 TO 9:=0;
--SIGNAL UMIL: NATURAL RANGE 0 TO 9:=0;
--
--
--BEGIN
--	DISPLAY_SEG(7)	<=	'1';
--	
--	PROCESS ( CLK50M ) IS
--	BEGIN
--		IF ( CLK50M = '1' AND CLK50M'EVENT )THEN
--
--			IF ( CLK_PS2 = '1' )THEN
--				CLK_P <= '1';
--			ELSE
--				CLK_P <= '0';
--			END IF;
--			
--			
--			IF ( BTN = '1' ) THEN
--				UNIDAD <= 0;
--				DECENA <= 0;
--				CENTENA <= 0;
--				UMIL <= 0;
--			END IF;
--			
--			
--			
--			IF ( COUNTER_KB = 9 ) THEN
--			
--				IF ( DATA_KEY = "11110000" OR DATA_KEY = "11100000" ) THEN
--					IF ( DATA_KEY = "11110000" ) THEN
--						KEY_UP	<=	TRUE;
--						KEY_DOWN <= FALSE;
--					END IF;
--				ELSIF ( ( NOT WT_KB ) AND ( NOT KEY_DOWN ) AND ( NOT KEY_UP ) ) THEN
--					KEY_DOWN	<=	TRUE;
--					WT_KB	<=	TRUE;
--					LED	<=	DATA_KEY;
--				ELSIF ( ( NOT WT_KB ) AND KEY_UP ) THEN
--					WT_KB	<=	TRUE;
--					LED	<=	DATA_KEY;
--				END IF;
--			ELSIF ( COUNTER_KB = 0 ) THEN
--			
--				IF ( WT_KB ) THEN
--				
--					IF ( KEY_DOWN ) THEN
--					
--						IF (CENTENA=9) THEN
--							IF (UMIL=9) THEN
--								UMIL<=0;
--							ELSE
--								UMIL<=UMIL+1;
--							END IF;
--							CENTENA<=0;
--						ELSE
--							CENTENA<=CENTENA+1;
--						END IF;
--						KEY_DOWN <= FALSE;
--						
--					ELSIF ( KEY_UP ) THEN
--					
--						IF (UNIDAD=9) THEN
--							IF (DECENA=9) THEN
--								DECENA<=0;
--							ELSE
--								DECENA<=DECENA+1;
--							END IF;
--							UNIDAD<=0;
--						ELSE
--								UNIDAD<=UNIDAD+1;
--						END IF;
--						
--						KEY_UP	<=	FALSE;
--					END IF;
--					
--					WT_KB	<=	FALSE;
--				END IF;
--				
--			END IF;
--			
--			
--			
--			
--			
--			
--			
--			
--			
--			CASE (SELECTOR) IS
--				WHEN "00" => DISPLAY_ENABLE <= "1110";VALUE<=UNIDAD;
--				WHEN "01" => DISPLAY_ENABLE <= "1101";VALUE<=DECENA;
--				WHEN "10" => DISPLAY_ENABLE <= "1011";VALUE<=CENTENA;
--				WHEN OTHERS => DISPLAY_ENABLE <= "0111";VALUE<=UMIL;
--			END CASE;
--			
--			
--			CASE (VALUE) IS           --PABCDEFG--
--				WHEN 0 => DISPLAY_SEG(6 DOWNTO 0)<= "0000001";--0
--				WHEN 1 => DISPLAY_SEG(6 DOWNTO 0)<= "1001111";--1
--				WHEN 2 => DISPLAY_SEG(6 DOWNTO 0)<= "0010010";--2
--				WHEN 3 => DISPLAY_SEG(6 DOWNTO 0)<= "0000110";--3
--				WHEN 4 => DISPLAY_SEG(6 DOWNTO 0)<= "1001100";--4
--				WHEN 5 => DISPLAY_SEG(6 DOWNTO 0)<= "0100100";--5
--				WHEN 6 => DISPLAY_SEG(6 DOWNTO 0)<= "0100000";--6
--				WHEN 7 => DISPLAY_SEG(6 DOWNTO 0)<= "0001111";--7
--				WHEN 8 => DISPLAY_SEG(6 DOWNTO 0)<= "0000000";--8
--				WHEN 9 => DISPLAY_SEG(6 DOWNTO 0)<= "0000100";--9
--				WHEN OTHERS => DISPLAY_SEG(6 DOWNTO 0) <= "1111111";--F
--			END CASE;
--			
--			
--			
--			
--			
--			
--			
--			
--			
--			
--			IF (PRESCALER2=49999) THEN
--				PRESCALER2<=0;
--				SELECTOR<=SELECTOR+1;
--			ELSE
--				PRESCALER2<=PRESCALER2+1;
--			END IF;
--			
--			
--			
--			
--			
--			
--			
--			
--			
--			
--			
--		END IF;
--	END PROCESS;
--	
--	
---------------------------RECEPCIÓN DE DATOS DEL TECLADO PS2-----------------------
--	PROCESS (CLK_P,DATA_PS2) IS
--	BEGIN
--		IF (CLK_P = '0' AND CLK_P'EVENT)THEN
--			CASE ( COUNTER_KB ) IS
--				WHEN	0	=>	PAR_OK <= '0';
--				WHEN	1	=>	DATA_KEY(0) <= DATA_PS2;
--				WHEN	2	=>	DATA_KEY(1) <= DATA_PS2;
--				WHEN	3	=> DATA_KEY(2) <= DATA_PS2;
--				WHEN	4	=> DATA_KEY(3) <= DATA_PS2;
--				WHEN	5	=> DATA_KEY(4) <= DATA_PS2;
--				WHEN	6	=> DATA_KEY(5) <= DATA_PS2;
--				WHEN	7	=> DATA_KEY(6) <= DATA_PS2;
--				WHEN	8	=> DATA_KEY(7) <= DATA_PS2;
--				WHEN	9	=> PAR_OK <= '1';
--				WHEN OTHERS =>	NULL;
--			END CASE;
--
--			COUNTER_KB	<=	COUNTER_KB + 1;
--			IF ( PAR_OK = '1' )THEN
--				PAR_OK		<=	'0';
--				COUNTER_KB	<=	0;
--			END IF;
--
--		END IF;		
--	END PROCESS;
---------------------------RECEPCIÓN DE DATOS DEL TECLADO PS2-----------------------
--END BEHAVIORAL;