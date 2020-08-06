LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE WORK.PAQUETE.ALL;
-----------------------------------------------------------------------------
ENTITY USBRECEIVER IS
	PORT(	MCLK			:	IN STD_LOGIC;
			ABORT			:	IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			PDB			:	INOUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			ASTB			:	IN STD_LOGIC;
			DSTB			:	IN STD_LOGIC;
			PWRITE		:	IN STD_LOGIC;
			PWAIT			:	OUT STD_LOGIC;
			
			WORDDATA		:	OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			PUTDATA		:	OUT BOOLEAN;
			ABORTED		:	OUT BOOLEAN
			);
END USBRECEIVER;

ARCHITECTURE BEHAVIORAL OF USBRECEIVER IS
------------------------------------------------------------------------
--  CONSTANT DECLARATIONS
------------------------------------------------------------------------
	-- THE FOLLOWING CONSTANTS DEFINE STATE CODES FOR THE EPP PORT INTERFACE
	-- STATE MACHINE. THE HIGH ORDER BITS OF THE STATE NUMBER GIVE A UNIQUE
	-- STATE IDENTIFIER. THE LOW ORDER BITS ARE THE STATE MACHINE OUTPUTS FOR
	-- THAT STATE. THIS TYPE OF STATE MACHINE IMPLEMENTATION USES NO
	-- COMBINATION LOGIC TO GENERATE OUTPUTS WHICH SHOULD PRODUCE GLITCH
	-- FREE OUTPUTS.
	CONSTANT	STEPPREADY	: STD_LOGIC_VECTOR(7 DOWNTO 0) := "0000" & "0000";
	CONSTANT	STEPPAWRA	: STD_LOGIC_VECTOR(7 DOWNTO 0) := "0001" & "0100";
	CONSTANT	STEPPAWRB	: STD_LOGIC_VECTOR(7 DOWNTO 0) := "0010" & "0001";
	CONSTANT	STEPPARDA	: STD_LOGIC_VECTOR(7 DOWNTO 0) := "0011" & "0010";
	CONSTANT	STEPPARDB	: STD_LOGIC_VECTOR(7 DOWNTO 0) := "0100" & "0011";
	CONSTANT	STEPPDWRA	: STD_LOGIC_VECTOR(7 DOWNTO 0) := "0101" & "1000";
	CONSTANT	STEPPDWRB	: STD_LOGIC_VECTOR(7 DOWNTO 0) := "0110" & "0001";
	CONSTANT	STEPPDRDA	: STD_LOGIC_VECTOR(7 DOWNTO 0) := "0111" & "0010";
	CONSTANT	STEPPDRDB	: STD_LOGIC_VECTOR(7 DOWNTO 0) := "1000" & "0011";

------------------------------------------------------------------------
-- SIGNAL DECLARATIONS
------------------------------------------------------------------------

	-- STATE MACHINE CURRENT STATE REGISTER
	SIGNAL	STEPPCUR	: STD_LOGIC_VECTOR(7 DOWNTO 0) := STEPPREADY;

	SIGNAL	STEPPNEXT	: STD_LOGIC_VECTOR(7 DOWNTO 0);
	
	
--	ATTRIBUTE FSM_EXTRACT : STRING;
--	ATTRIBUTE FSM_EXTRACT OF STEPPCUR: SIGNAL IS "NO"; 
--	ATTRIBUTE FSM_EXTRACT OF STEPPNEXT: SIGNAL IS "NO"; 
--
--	ATTRIBUTE FSM_ENCODING : STRING;
--	ATTRIBUTE FSM_ENCODING OF STEPPCUR: SIGNAL IS "USER"; 
--	ATTRIBUTE FSM_ENCODING OF STEPPNEXT: SIGNAL IS "USER"; 
--
--	ATTRIBUTE SIGNAL_ENCODING : STRING;
--	ATTRIBUTE SIGNAL_ENCODING OF STEPPCUR: SIGNAL IS "USER"; 
--	ATTRIBUTE SIGNAL_ENCODING OF STEPPNEXT: SIGNAL IS "USER"; 
	
	
	
	SIGNAL	CLKMAIN		: STD_LOGIC;
	-- INTERNAL CONTROL SIGNALES
--	SIGNAL	CTLEPPWAIT	: STD_LOGIC;
	SIGNAL	CTLEPPASTB	: STD_LOGIC;
	SIGNAL	CTLEPPDSTB	: STD_LOGIC;
	SIGNAL	CTLEPPDIR	: STD_LOGIC;
	SIGNAL	CTLEPPWR	: STD_LOGIC;
	SIGNAL	CTLEPPAWR	: STD_LOGIC;
	SIGNAL	CTLEPPDWR	: STD_LOGIC;
	SIGNAL	BUSEPPIN	: STD_LOGIC_VECTOR(7 DOWNTO 0);

	
	
	
	SIGNAL	ABORTEDSN: BOOLEAN:=FALSE;
------------------------------------------------------------------------
-- MODULE IMPLEMENTATION
------------------------------------------------------------------------






-- DATA INFO.
SIGNAL	REGDATA	: STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	LOBYTE	: STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	HIBYTE	: STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	DATAOK	: BOOLEAN:=FALSE;

SIGNAL	CNTWORD	:	NATURAL RANGE 0 TO 1:=0;


BEGIN
	WORDDATA(15 DOWNTO 8)	<=	HIBYTE;
	WORDDATA( 7 DOWNTO 0)	<=	LOBYTE;
	PUTDATA	<=	DATAOK;
	ABORTED	<=	ABORTEDSN;
    ------------------------------------------------------------------------
	-- MAP BASIC STATUS AND CONTROL SIGNALS
    ------------------------------------------------------------------------
	
	
	
	
	CLKMAIN <= MCLK;
	
	
	
	CTLEPPASTB <= ASTB;
	CTLEPPDSTB <= DSTB;
	CTLEPPWR   <= PWRITE;
	--PWAIT      <= CTLEPPWAIT;	-- DRIVE WAIT FROM STATE MACHINE OUTPUT
	-- DATA BUS DIRECTION CONTROL. THE INTERNAL INPUT DATA BUS ALWAYS
	-- GETS THE PORT DATA BUS. THE PORT DATA BUS DRIVES THE INTERNAL
	-- OUTPUT DATA BUS ONTO THE PINS WHEN THE INTERFACE SAYS WE ARE DOING
	-- A READ CYCLE AND WE ARE IN ONE OF THE READ CYCLES STATES IN THE
	-- STATE MACHINE.
	
	
	PDB	<=	"000"&ABORT(4 DOWNTO 0)	WHEN PWRITE='1' OR (CTLEPPWR = '1' AND CTLEPPDIR = '1') ELSE "ZZZZZZZZ";
	
	
	
	
	
	BUSEPPIN <= PDB;
------------------------------------------------------------------------------------------
	PROCESS (CLKMAIN)
		BEGIN
			IF CLKMAIN = '1' AND CLKMAIN'EVENT THEN
				
				IF DATAOK THEN
					DATAOK	<=	FALSE;
				END IF;
				
				IF CTLEPPAWR = '1' THEN
					REGDATA	<=	BUSEPPIN;
				END IF;
				
				
				
				IF CTLEPPDWR = '1' THEN
					CASE REGDATA	IS
						WHEN x"00" =>
							IF CNTWORD=0 THEN
								CNTWORD	<=	1;
								HIBYTE	<=	BUSEPPIN;
							ELSE
								CNTWORD	<=	0;
								DATAOK	<=	TRUE;
								LOBYTE	<=	BUSEPPIN;
							END IF;
						
						
						WHEN x"01" =>
							ABORTEDSN<= TRUE;
							DATAOK	<=	FALSE;
						WHEN x"02" =>
							ABORTEDSN	<= FALSE;
						
						
						
						WHEN x"03" =>
							CNTWORD	<=	0;
						
						
						WHEN OTHERS =>
							NULL;
					END CASE;
				END IF;
				
				
				

				
				
				
				
			END IF;
		END PROCESS;
------------------------------------------------------------------------------------------


	
	
	------------------|
	--			USB PROC.|
	------------------V
	

	-- MAP CONTROL SIGNALS FROM THE CURRENT STATE
	--PWAIT <= '1' WHEN ASTB = '0' OR DSTB = '0' ELSE (ABORT(7) AND ABORT(6) AND ABORT(5));
	PWAIT <= STEPPCUR(0) OR (ABORT(7) AND ABORT(6) AND ABORT(5));
	CTLEPPDIR  <= STEPPCUR(1);
	CTLEPPAWR  <= STEPPCUR(2);
	CTLEPPDWR  <= STEPPCUR(3);-----
	-- THIS PROCESS MOVES THE STATE MACHINE TO THE NEXT STATE
	-- ON EACH CLOCK CYCLE
	PROCESS (CLKMAIN)
		BEGIN
			IF CLKMAIN = '1' AND CLKMAIN'EVENT THEN
				STEPPCUR <= STEPPNEXT;
			END IF;
		END PROCESS;
	-- THIS PROCESS DETERMINES THE NEXT STATE MACHINE STATE BASED
	-- ON THE CURRENT STATE AND THE STATE MACHINE INPUTS.
	PROCESS (STEPPCUR, STEPPNEXT, CTLEPPASTB, CTLEPPDSTB, CTLEPPWR)
		BEGIN
			CASE STEPPCUR IS
				-- IDLE STATE WAITING FOR THE BEGINNING OF AN EPP CYCLE
				WHEN STEPPREADY =>
					IF CTLEPPASTB = '0' THEN
						-- ADDRESS READ OR WRITE CYCLE
						IF CTLEPPWR = '0' THEN
							STEPPNEXT <= STEPPAWRA;
						ELSE
							STEPPNEXT <= STEPPARDA;
						END IF;

					ELSIF CTLEPPDSTB = '0' THEN
						-- DATA READ OR WRITE CYCLE
						IF CTLEPPWR = '0' THEN
							STEPPNEXT <= STEPPDWRA;
						ELSE
							STEPPNEXT <= STEPPDRDA;
						END IF;

					ELSE
						-- REMAIN IN READY STATE
						STEPPNEXT <= STEPPREADY;
					END IF;											

				-- WRITE ADDRESS REGISTER
				WHEN STEPPAWRA =>
					STEPPNEXT <= STEPPAWRB;

				WHEN STEPPAWRB =>
					IF CTLEPPASTB = '0' THEN
						STEPPNEXT <= STEPPAWRB;
					ELSE
						STEPPNEXT <= STEPPREADY;
					END IF;		

				-- READ ADDRESS REGISTER
				WHEN STEPPARDA =>
					STEPPNEXT <= STEPPARDB;

				WHEN STEPPARDB =>
					IF CTLEPPASTB = '0' THEN
						STEPPNEXT <= STEPPARDB;
					ELSE
						STEPPNEXT <= STEPPREADY;
					END IF;

				-- WRITE DATA REGISTER
				WHEN STEPPDWRA =>
					STEPPNEXT <= STEPPDWRB;

				WHEN STEPPDWRB =>
					IF CTLEPPDSTB = '0' THEN
						STEPPNEXT <= STEPPDWRB;
					ELSE
 						STEPPNEXT <= STEPPREADY;
					END IF;

				-- READ DATA REGISTER
				WHEN STEPPDRDA =>
					STEPPNEXT <= STEPPDRDB;
										
				WHEN STEPPDRDB =>
					IF CTLEPPDSTB = '0' THEN
						STEPPNEXT <= STEPPDRDB;
					ELSE
				  		STEPPNEXT <= STEPPREADY;
					END IF;

				-- SOME UNKNOWN STATE				
				WHEN OTHERS =>
					STEPPNEXT <= STEPPREADY;
			END CASE;
		END PROCESS;
END BEHAVIORAL;
