----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:06:27 05/15/2012 
-- Design Name: 
-- Module Name:    SignalGenerator - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SignalGenerator is
				--TIME STATE
    Port ( T0 : in STD_LOGIC;
			  T1 : in STD_LOGIC;
			  T2 : in STD_LOGIC;
			  T3 : in STD_LOGIC;
			  T4 : in STD_LOGIC;
			  T5 : in STD_LOGIC;
			  T6 : in STD_LOGIC;
			  T7 : in STD_LOGIC;
			  T8 : in STD_LOGIC;
				--OP INPUT SIGNALS
           AND_IN : in  STD_LOGIC;
           OR_IN : in  STD_LOGIC;
           XOR_IN : in  STD_LOGIC;
           ADDC_IN : in  STD_LOGIC;
           SUB_IN : in  STD_LOGIC;
           MAC_IN : in  STD_LOGIC;
           NEG_IN : in  STD_LOGIC;
           NOT_IN : in  STD_LOGIC;
           RLC_IN : in  STD_LOGIC;
           RRC_IN : in  STD_LOGIC;
           LDA_REG_IN : in  STD_LOGIC;
           STA_REG_IN : in  STD_LOGIC;
           LDA_ADDR_IN : in  STD_LOGIC;
           STA_ADDR_IN : in  STD_LOGIC;
           LDI_IN : in  STD_LOGIC;
           BRZ_IN : in  STD_LOGIC;
           BRC_IN : in  STD_LOGIC;
           BRN_IN : in  STD_LOGIC;
           BRO_IN : in  STD_LOGIC;
           NOP_IN : in  STD_LOGIC;
           STOP_IN : in  STD_LOGIC;
			  Carry_in : in  STD_LOGIC;
			  Zero_in : in  STD_LOGIC;
			  Vflow_in : in  STD_LOGIC;
			  Negative_in : in  STD_LOGIC;
			  --OP OUTPUT SIGNALS
			  AND_OUT : out  STD_LOGIC;
           OR_OUT : out  STD_LOGIC;
           XOR_OUT : out  STD_LOGIC;
           ADDC_OUT : out  STD_LOGIC;
           SUB_OUT : out  STD_LOGIC;
           MAC_OUT : out  STD_LOGIC;
           NEG_OUT : out  STD_LOGIC;
           NOT_OUT : out  STD_LOGIC;
           RLC_OUT : out  STD_LOGIC;
           RRC_OUT : out  STD_LOGIC;
           STOP_OUT : out  STD_LOGIC;
			  INC_OUT : out STD_LOGIC;
			  --PROGRAM COUNTER RELATED SIGNALS
           PC_in : out  STD_LOGIC;
           PC_out : out  STD_LOGIC;
			  --MEMORY RELATED SIGNALS
           MA_in : out  STD_LOGIC;
           MA_out : out  STD_LOGIC;
           MD_out : out  STD_LOGIC;
			  Read_out : out  STD_LOGIC;
           Wait_out : out  STD_LOGIC;
           Write_out : out  STD_LOGIC;
			  --C (ALU) REGISTER RELATED SIGNALS
           C_in : out  STD_LOGIC;
           C_out : out  STD_LOGIC;
			  -- INSTRUCTION REGISTER RELATED
           IR_hi_in : out  STD_LOGIC;
           IR_lo_in : out  STD_LOGIC;
			  --ACCUMULATOR RELATED SIGNALS
           A_in : out  STD_LOGIC;
           A_out : out  STD_LOGIC;
			  --FLAG RELATED SIGNALS
           Flags_out : out  STD_LOGIC;
           SR_in : out  STD_LOGIC;
           R_in : out  STD_LOGIC;
           R_out : out  STD_LOGIC;
           R7_out : out  STD_LOGIC;
		     End_out : out STD_LOGIC;
			  IR_lo_out : out STD_LOGIC);
end SignalGenerator;

architecture Behavioral of SignalGenerator is
	
begin
	-- T0 or T3
	PC_out <= T0 or T3;
	
	-- T0 or T3 or (T6 and (LDA_REG or LDA_ADDR or STA_ADDR))
	MA_in <= T0 or ( T3 or ( T6 and ( LDA_REG_IN or ( LDA_ADDR_IN or STA_ADDR_IN ) ) ) );
	
	-- T0 or T3
	INC_OUT <= T0 or T3;
	
	--  T0 or T3 or (T6 and (AND or OR or XOR or ADDC or SUB or MAC or NEG or NOT or RRC or RLC))
	C_in <= T0 or ( T3 or ( T6 and ( AND_IN or ( OR_IN or ( XOR_IN or ( ADDC_IN or ( SUB_IN or ( MAC_IN or ( NEG_IN or ( NOT_IN or ( RRC_IN or RLC_IN ) ) ) ) ) ) ) ) ) ) );
	
	-- T1 or T4 or [ T7 and ( AND or OR or XOR or ADDC or SUB or MAC or NEG or NOT or RLC or RRC ) ]
	C_out <= T1 or ( T4 or ( T7 and ( AND_IN or ( OR_IN or ( XOR_IN or ( ADDC_IN or ( SUB_IN or ( MAC_IN or ( NEG_IN or ( NOT_IN or ( RLC_IN or RRC_IN ) ) ) ) ) ) ) ) ) ) );
	
	
	--  T1 or T4 or [ T7 and ( AND or OR or XOR or ADDC or SUB or MAC or NEG or NOT or RLC or RRC ) ]
	C_out <= T1 or ( T4 or ( T7 and ( AND_IN or ( OR_IN or ( XOR_IN or ( ADDC_IN or ( SUB_IN or ( MAC_IN or ( NEG_IN or ( NOT_IN or ( RRC_IN or RLC_IN ) ) ) ) ) ) ) ) ) ) );

	-- T1 or T4 or [ T6 and ( BRZ or BRC or BRO or BRN ) ]
	PC_in <= T1 or ( T4 or ( T6 and ( ( BRZ_IN and Zero_in ) or ( ( BRC_IN and Carry_in ) or ( ( BRO_IN and Vflow_in )  or ( BRN_IN and Negative_in ) ) ) ) ) );

	-- Read_out T1 or T4 or ( T7 and LDA )
	Read_out <= T1 or ( T4 or ( T7 and LDA_ADDR_IN ) );
	
	--Wait_out T1 or T4 or [ T7 and ( LDA or STA ) ]
	Wait_out <= T1 or ( T4 or ( T7 and ( LDA_ADDR_IN or STA_ADDR_IN ) ) );
	
	--MD_out T2 or T5 or ( T8 and LDA )
	MD_out <= T2 or ( T5 or ( T8 and LDA_ADDR_IN ) );
	
	-- IR_hi_in T2
	IR_hi_in <= T2;
	
	-- IR_lo_in T5 or [ T6 and ( LDA or STA or LDI ) ]
	IR_lo_in <= T5;
	
	-- R_out T6 and ( AND or OR or XOR or ADDC or SUB or MAC or LDA )
	R_out <= T6 and ( AND_IN or ( OR_IN or ( XOR_IN or ( ADDC_IN or ( SUB_IN or ( MAC_IN or LDA_REG_IN ) ) ) ) ) );
	
	-- AND T6 and AND
	AND_OUT <= T6 and AND_IN;
	
	--A_in  [ T6 and ( LDA_REG or LDI ) ] or [ T7 and ( AND or OR or XOR or ADDC or SUB or MAC or NEG or NOT or RLC or RRC ) ] or [ T8 and LDA_ADDR ]
	A_in <= ( T6 and ( LDA_REG_IN or LDI_IN ) ) or ( ( T7 and ( (AND_IN or OR_IN) or (XOR_IN or (ADDC_IN or (SUB_IN or (MAC_IN or (NEG_IN or (NOT_IN or (RLC_IN or RRC_IN) ) ) ) ) ) ) ) ) or ( T8 and LDA_ADDR_IN ) );
	
	-- OR T6 and OR
	OR_OUT <= T6 and OR_IN;
	
	-- ADDC  T6 and ADDC
	ADDC_OUT <= T6 and ADDC_IN;
	
	XOR_OUT <= T6 and XOR_IN;
	
	--Flags_out T8 and ( ADDC or SUB or MAC or RLC or RRC )
	Flags_out <= T8 and ( ADDC_IN or (SUB_IN or (MAC_IN or (RLC_IN or RRC_IN) ) ) );
	
	-- SR_in T8 and ( ADDC or SUB or MAC or RLC or RRC )
	SR_in <= T8 and ( ADDC_IN or (SUB_IN or (MAC_IN or (RLC_IN or RRC_IN) ) ) );
	
	-- SUB T6 and SUB
	SUB_OUT <= T6 and SUB_IN;
	
	-- MAC T6 and MAC
	MAC_OUT <= T6 and MAC_IN;
	
	-- NEG T6 and NEG
	NEG_OUT <= T6 and NEG_IN;
	
	-- A_out T6 and ( NEG or NOT or STA_REG ) or ( T7 and STA_ADDR )
	A_out <= ( T6 and ( NEG_IN or (NOT_IN or STA_REG_IN) ) ) or ( T7 and STA_ADDR_IN );
	
	-- NOT  T6 and NOT
	NOT_OUT <= T6 and NOT_IN;
	
	-- T6 and STA_REG
	R_in <= T6 and STA_REG_IN;
	
	--  T7 and LDA_ADDR
	MA_out <= T7 and LDA_ADDR_IN;
	
	-- T7 and STA_ADDR
	Write_out <= T7 and STA_ADDR_IN;
	
	-- T6 and ( BRZ or BRC or BRO or BRN )
	R7_out <= T6 and ( ( BRZ_IN and Zero_in ) or ( (BRC_IN and Carry_in ) or ( ( BRO_IN and Vflow_in ) or ( BRN_IN and Negative_in ) ) ) );
	
	-- [ T6 and ( LDA or STA or LDI or BRZ or BRC or BRO or BRN or NOP or STOP ) ] or [ T7 and ( AND or OR or XOR or NEG or NOT ) ] or [ T8 and ( ADDC or SUB or MAC or RLC or RRC or LDA or STA ) ]
	End_out <= ( T6 and ( LDA_REG_IN or (STA_REG_IN or (LDI_IN or (BRZ_IN or (BRC_IN or (BRO_IN or (BRN_IN or (NOP_IN or STOP_IN) ) ) ) ) ) ) ) ) or ( T7 and ( AND_IN or (OR_IN or (XOR_IN or (NEG_IN or NOT_IN) ) ) ) ) or ( T8 and ( ADDC_IN or (SUB_IN or (MAC_IN or (RLC_IN or (RRC_IN or (LDA_ADDR_IN or STA_ADDR_IN) ) ) ) ) ) );
	
	RRC_OUT <= T6 and RRC_IN;
	
	RLC_OUT <= T6 and RLC_IN;
	
	STOP_OUT <= T6 and STOP_IN;
	
	IR_lo_out <= T6 and (LDI_IN or (LDA_ADDR_IN or STA_ADDR_IN));
end Behavioral;

