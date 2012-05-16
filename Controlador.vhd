----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:01:35 05/15/2012 
-- Design Name: 
-- Module Name:    Controlador - struct_Controlador 
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

entity Controlador is
    Port ( Start : in  STD_LOGIC;
			  MCK : in STD_LOGIC;
			  MRESET : in  STD_LOGIC;
			  Done_From_Memory : in STD_LOGIC;
           I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           I2 : in  STD_LOGIC;
           I3 : in  STD_LOGIC;
           I4 : in  STD_LOGIC;
           ZeroFlag : in  STD_LOGIC;
           NegativeFlag : in  STD_LOGIC;
           OverflowFlag : in  STD_LOGIC;
           CarryFlag : in  STD_LOGIC;
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
end Controlador;

architecture struct_Controlador of Controlador is
COMPONENT Clock_Logic_Circuit is
    Port ( Start : in  STD_LOGIC;
           Stop : in  STD_LOGIC;
           Mck : in  STD_LOGIC;
			  MRESET : in  STD_LOGIC;
           Read_IN : in  STD_LOGIC;
           Write_IN : in  STD_LOGIC;
           Done : in  STD_LOGIC;
           Wait_IN : in  STD_LOGIC;
           Enable : out  STD_LOGIC;
           R : out  STD_LOGIC;
           W : out  STD_LOGIC);
END COMPONENT;
COMPONENT Cycle_Generator is
    Port ( Count : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           T0 : out  STD_LOGIC;
           T1 : out  STD_LOGIC;
           T2 : out  STD_LOGIC;
           T3 : out  STD_LOGIC;
           T4 : out  STD_LOGIC;
           T5 : out  STD_LOGIC;
           T6 : out  STD_LOGIC;
           T7 : out  STD_LOGIC;
           T8 : out  STD_LOGIC;
           T9 : out  STD_LOGIC;
           T10 : out  STD_LOGIC;
           T11 : out  STD_LOGIC;
           T12 : out  STD_LOGIC;
           T13 : out  STD_LOGIC;
           T14 : out  STD_LOGIC;
           T15 : out  STD_LOGIC);
END COMPONENT;
COMPONENT Decorder_5X32 is
    Port ( Ain_0 : in  STD_LOGIC;
           Ain_1 : in  STD_LOGIC;
           Ain_2 : in  STD_LOGIC;
           Ain_3 : in  STD_LOGIC;
           Ain_4 : in  STD_LOGIC;
           B0_out : out  STD_LOGIC;
           B1_out : out  STD_LOGIC;
           B2_out : out  STD_LOGIC;
           B3_out : out  STD_LOGIC;
           B4_out : out  STD_LOGIC;
           B5_out : out  STD_LOGIC;
           B6_out : out  STD_LOGIC;
           B7_out : out  STD_LOGIC;
           B8_out : out  STD_LOGIC;
           B9_out : out  STD_LOGIC;
           B10_out : out  STD_LOGIC;
           B11_out : out  STD_LOGIC;
           B12_out : out  STD_LOGIC;
           B13_out : out  STD_LOGIC;
           B14_out : out  STD_LOGIC;
           B15_out : out  STD_LOGIC;
           B16_out : out  STD_LOGIC;
           B17_out : out  STD_LOGIC;
           B18_out : out  STD_LOGIC;
           B19_out : out  STD_LOGIC;
           B20_out : out  STD_LOGIC;
           B21_out : out  STD_LOGIC;
           B22_out : out  STD_LOGIC;
           B23_out : out  STD_LOGIC;
           B24_out : out  STD_LOGIC;
           B25_out : out  STD_LOGIC;
           B26_out : out  STD_LOGIC;
           B27_out : out  STD_LOGIC;
           B28_out : out  STD_LOGIC;
           B29_out : out  STD_LOGIC;
           B30_out : out  STD_LOGIC;
           B31_out : out  STD_LOGIC);
END COMPONENT;  
COMPONENT SignalGenerator is
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
END COMPONENT;  
signal Stop_Signal, Read_Signal, Write_Signal, Done_Signal, Wait_Signal, Enable_Signal, To_Memory_Read, To_Memory_Write, Reset_Signal, T0_Signal, T1_Signal, T2_Signal, T3_Signal, T4_Signal, T5_Signal, T6_Signal, T7_Signal, T8_Signal, T9_Signal, T10_Signal, T11_Signal, T12_Signal, T13_Signal, T14_Signal, T15_Signal : STD_LOGIC;
signal Instruct_AND, Instruct_OR, Instruct_XOR, Instruct_ADDC, Instruct_SUB, Instruct_MAC, Instruct_NEG, Instruct_NOT, Instruct_RLC, Instruct_RRC, Instruct_LDAREG, Instruct_STAREG, Instruct_LADADD, Instruct_STAADD, Instruct_LDI, Instruct_BRZ, Instruct_BRC, Instruct_BRN, Instruct_BRO, Instruct_STOP, Instruct_NOP : STD_LOGIC;
signal AND_out_Signal , OR_out_Signal , XOR_out_Signal , ADDC_out_Signal , SUB_out_Signal , MAC_out_Signal , NEG_out_Signal , NOT_out_Signal , RLC_out_Signal , RRC_out_Signal , LDA_REG_out_Signal , STA_REG_out_Signal , LDA_ADDR_out_Signal , STA_ADDR_out_Signal , LDI_out_Signal ,  BRZ_out_Signal , BRC_out_Signal , BRN_out_Signal , BRO_out_Signal , NOP_out_Signal , STOP_out_Signal , INC_OUT_Signal , PC_in_Signal , PC_out_Signal , MA_in_Signal , MA_out_Signal , MD_out_Signal , Read_out_Signal , Wait_out_Signal , Write_out_Signal ,  C_in_Signal ,  C_out_Signal , IR_hi_in_Signal ,IR_lo_in_Signal , A_in_Signal , A_out_Signal, Flags_out_Signal , SR_in_Signal , R_in_Signal , R_out_Signal , R7_out_Signal, End_out_Signal, IR_lo_out_Signal : STD_LOGIC;
signal Instruct_T15, Instruct_T20, Instruct_T21, Instruct_T22, Instruct_T23, Instruct_T25, Instruct_T26, Instruct_T27, Instruct_T28, Instruct_T29, Instruct_T30 : STD_LOGIC;
begin
clocklogic : Clock_Logic_Circuit PORT MAP(Start, Stop_Signal, MCK, MRESET, Read_Signal, Write_Signal, Done_Signal, Wait_Signal, Enable_Signal, To_Memory_Read, To_Memory_Write);
cyclegen : Cycle_Generator PORT MAP(Enable_Signal, MCK, Reset_Signal, T0_Signal, T1_Signal, T2_Signal, T3_Signal, T4_Signal, T5_Signal, T6_Signal, T7_Signal, T8_Signal, T9_Signal, T10_Signal, T11_Signal, T12_Signal, T13_Signal, T14_Signal, T15_Signal);
instrucdecoder : Decorder_5X32 PORT MAP(I0, I1, I2, I3, I4, Instruct_AND, Instruct_OR, Instruct_XOR, Instruct_ADDC, Instruct_SUB, Instruct_MAC, Instruct_NEG, Instruct_NOT, Instruct_RLC, Instruct_RRC, Instruct_LDAREG, Instruct_STAREG, Instruct_LADADD, Instruct_STAADD, Instruct_LDI, Instruct_T15, Instruct_BRZ, Instruct_BRC, Instruct_BRN, Instruct_BRO, Instruct_T20, Instruct_T21, Instruct_T22, Instruct_T23, Instruct_NOP, Instruct_T25, Instruct_T26, Instruct_T27, Instruct_T28, Instruct_T29, Instruct_T30, Instruct_STOP);
signalgen : SignalGenerator PORT MAP(T0_Signal, T1_Signal, T2_Signal, T3_Signal, T4_Signal, T5_Signal, T6_Signal, T7_Signal, T8_Signal, Instruct_AND, Instruct_OR, Instruct_XOR, Instruct_ADDC, Instruct_SUB, Instruct_MAC, Instruct_NEG, Instruct_NOT, Instruct_RLC, Instruct_RRC, Instruct_LDAREG, Instruct_STAREG, Instruct_LADADD, Instruct_STAADD, Instruct_LDI, Instruct_BRZ, Instruct_BRC, Instruct_BRN, Instruct_BRO, Instruct_NOP, Instruct_STOP, CarryFlag, ZeroFlag, OverflowFlag, NegativeFlag, AND_out_Signal , OR_out_Signal , XOR_out_Signal , ADDC_out_Signal , SUB_out_Signal , MAC_out_Signal , NEG_out_Signal , NOT_out_Signal , RLC_out_Signal , RRC_out_Signal , STOP_out_Signal , INC_OUT_Signal , PC_in_Signal , PC_out_Signal , MA_in_Signal , MA_out_Signal , MD_out_Signal , Read_out_Signal , Wait_out_Signal , Write_out_Signal ,  C_in_Signal ,  C_out_Signal , IR_hi_in_Signal ,IR_lo_in_Signal , A_in_Signal , A_out_Signal, Flags_out_Signal , SR_in_Signal , R_in_Signal , R_out_Signal , R7_out_Signal, End_out_Signal, IR_lo_out_Signal);
Reset_Signal <= MRESET or End_out_Signal;
AND_OUT <= AND_out_Signal;
OR_OUT <= OR_out_Signal;
XOR_OUT <= XOR_out_Signal;
ADDC_OUT <= ADDC_out_Signal;
SUB_OUT <= SUB_out_Signal;
MAC_OUT <= MAC_out_Signal;
NEG_OUT <= NEG_out_Signal;
NOT_OUT <= NOT_out_Signal;
RLC_OUT <= RLC_out_Signal;
RRC_OUT <= RRC_out_Signal;
STOP_OUT <= STOP_out_Signal;
INC_OUT <= INC_OUT_Signal;
PC_in <= PC_in_Signal;
PC_out <= PC_out_Signal;
MA_in <= MA_in_Signal;
MA_out <= MA_out_Signal;
MD_out <= MD_out_Signal;
Read_out <= Read_out_Signal;
Wait_out <= Wait_out_Signal;
Write_out <= Write_out_Signal;
C_in <= C_in_Signal;
C_out <= C_out_Signal;
IR_hi_in <= IR_hi_in_Signal;
IR_lo_in <= IR_lo_in_Signal;
A_in <= A_in_Signal;
A_out <= A_out_Signal;
Flags_out <= Flags_out_Signal;
SR_in <= SR_in_Signal;
R_in <= R_in_Signal;
R_out <= R_out_Signal; 
R7_out <= R7_out_Signal;
End_out <= End_out_Signal;
Done_Signal <= Done_From_Memory;
Stop_Signal <= STOP_out_Signal;
IR_lo_out <= IR_lo_out_Signal;
end struct_Controlador;

