--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:32:46 05/16/2012
-- Design Name:   
-- Module Name:   X:/Desktop/Proyecto_Nayda/Alu/Controlador/SignalGenerator_tb.vhd
-- Project Name:  Controlador
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SignalGenerator
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY SignalGenerator_tb IS
END SignalGenerator_tb;
 
ARCHITECTURE behavior OF SignalGenerator_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SignalGenerator
    PORT(
         T0 : IN  std_logic;
         T1 : IN  std_logic;
         T2 : IN  std_logic;
         T3 : IN  std_logic;
         T4 : IN  std_logic;
         T5 : IN  std_logic;
         T6 : IN  std_logic;
         T7 : IN  std_logic;
         T8 : IN  std_logic;
         AND_IN : IN  std_logic;
         OR_IN : IN  std_logic;
         XOR_IN : IN  std_logic;
         ADDC_IN : IN  std_logic;
         SUB_IN : IN  std_logic;
         MAC_IN : IN  std_logic;
         NEG_IN : IN  std_logic;
         NOT_IN : IN  std_logic;
         RLC_IN : IN  std_logic;
         RRC_IN : IN  std_logic;
         LDA_REG_IN : IN  std_logic;
         STA_REG_IN : IN  std_logic;
         LDA_ADDR_IN : IN  std_logic;
         STA_ADDR_IN : IN  std_logic;
         LDI_IN : IN  std_logic;
         BRZ_IN : IN  std_logic;
         BRC_IN : IN  std_logic;
         BRN_IN : IN  std_logic;
         BRO_IN : IN  std_logic;
         NOP_IN : IN  std_logic;
         STOP_IN : IN  std_logic;
			Carry_in : in  STD_LOGIC;
			  Zero_in : in  STD_LOGIC;
			  Vflow_in : in  STD_LOGIC;
			  Negative_in : in  STD_LOGIC;
         AND_OUT : OUT  std_logic;
         OR_OUT : OUT  std_logic;
         XOR_OUT : OUT  std_logic;
         ADDC_OUT : OUT  std_logic;
         SUB_OUT : OUT  std_logic;
         MAC_OUT : OUT  std_logic;
         NEG_OUT : OUT  std_logic;
         NOT_OUT : OUT  std_logic;
         RLC_OUT : OUT  std_logic;
         RRC_OUT : OUT  std_logic;
         STOP_OUT : OUT  std_logic;
         INC_OUT : OUT  std_logic;
         PC_in : OUT  std_logic;
         PC_out : OUT  std_logic;
         MA_in : OUT  std_logic;
         MA_out : OUT  std_logic;
         MD_out : OUT  std_logic;
         Read_out : OUT  std_logic;
         Wait_out : OUT  std_logic;
         Write_out : OUT  std_logic;
         C_in : OUT  std_logic;
         C_out : OUT  std_logic;
         IR_hi_in : OUT  std_logic;
         IR_lo_in : OUT  std_logic;
         A_in : OUT  std_logic;
         A_out : OUT  std_logic;
         Flags_out : OUT  std_logic;
         SR_in : OUT  std_logic;
         R_in : OUT  std_logic;
         R_out : OUT  std_logic;
         R7_out : OUT  std_logic;
         End_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal T0 : std_logic := '0';
   signal T1 : std_logic := '0';
   signal T2 : std_logic := '0';
   signal T3 : std_logic := '0';
   signal T4 : std_logic := '0';
   signal T5 : std_logic := '0';
   signal T6 : std_logic := '0';
   signal T7 : std_logic := '0';
   signal T8 : std_logic := '0';
   signal AND_IN : std_logic := '0';
   signal OR_IN : std_logic := '0';
   signal XOR_IN : std_logic := '0';
   signal ADDC_IN : std_logic := '0';
   signal SUB_IN : std_logic := '0';
   signal MAC_IN : std_logic := '0';
   signal NEG_IN : std_logic := '0';
   signal NOT_IN : std_logic := '0';
   signal RLC_IN : std_logic := '0';
   signal RRC_IN : std_logic := '0';
   signal LDA_REG_IN : std_logic := '0';
   signal STA_REG_IN : std_logic := '0';
   signal LDA_ADDR_IN : std_logic := '0';
   signal STA_ADDR_IN : std_logic := '0';
   signal LDI_IN : std_logic := '0';
   signal BRZ_IN : std_logic := '0';
   signal BRC_IN : std_logic := '0';
   signal BRN_IN : std_logic := '0';
   signal BRO_IN : std_logic := '0';
   signal NOP_IN : std_logic := '0';
   signal STOP_IN : std_logic := '0';
	signal Carry_in : STD_LOGIC := '0';
	signal Zero_in : STD_LOGIC := '0';
	signal Vflow_in : STD_LOGIC := '0';
	signal Negative_in : STD_LOGIC := '0';

 	--Outputs
   signal AND_OUT : std_logic;
   signal OR_OUT : std_logic;
   signal XOR_OUT : std_logic;
   signal ADDC_OUT : std_logic;
   signal SUB_OUT : std_logic;
   signal MAC_OUT : std_logic;
   signal NEG_OUT : std_logic;
   signal NOT_OUT : std_logic;
   signal RLC_OUT : std_logic;
   signal RRC_OUT : std_logic;
   signal STOP_OUT : std_logic;
   signal INC_OUT : std_logic;
   signal PC_in : std_logic;
   signal PC_out : std_logic;
   signal MA_in : std_logic;
   signal MA_out : std_logic;
   signal MD_out : std_logic;
   signal Read_out : std_logic;
   signal Wait_out : std_logic;
   signal Write_out : std_logic;
   signal C_in : std_logic;
   signal C_out : std_logic;
   signal IR_hi_in : std_logic;
   signal IR_lo_in : std_logic;
   signal A_in : std_logic;
   signal A_out : std_logic;
   signal Flags_out : std_logic;
   signal SR_in : std_logic;
   signal R_in : std_logic;
   signal R_out : std_logic;
   signal R7_out : std_logic;
   signal End_out : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SignalGenerator PORT MAP (
          T0 => T0,
          T1 => T1,
          T2 => T2,
          T3 => T3,
          T4 => T4,
          T5 => T5,
          T6 => T6,
          T7 => T7,
          T8 => T8,
          AND_IN => AND_IN,
          OR_IN => OR_IN,
          XOR_IN => XOR_IN,
          ADDC_IN => ADDC_IN,
          SUB_IN => SUB_IN,
          MAC_IN => MAC_IN,
          NEG_IN => NEG_IN,
          NOT_IN => NOT_IN,
          RLC_IN => RLC_IN,
          RRC_IN => RRC_IN,
          LDA_REG_IN => LDA_REG_IN,
          STA_REG_IN => STA_REG_IN,
          LDA_ADDR_IN => LDA_ADDR_IN,
          STA_ADDR_IN => STA_ADDR_IN,
          LDI_IN => LDI_IN,
          BRZ_IN => BRZ_IN,
          BRC_IN => BRC_IN,
          BRN_IN => BRN_IN,
          BRO_IN => BRO_IN,
          NOP_IN => NOP_IN,
          STOP_IN => STOP_IN,
			 Carry_in => Carry_in,
			 Zero_in => Zero_in,
			 Vflow_in => Vflow_in,
			 Negative_in => Negative_in,
			 
          AND_OUT => AND_OUT,
          OR_OUT => OR_OUT,
          XOR_OUT => XOR_OUT,
          ADDC_OUT => ADDC_OUT,
          SUB_OUT => SUB_OUT,
          MAC_OUT => MAC_OUT,
          NEG_OUT => NEG_OUT,
          NOT_OUT => NOT_OUT,
          RLC_OUT => RLC_OUT,
          RRC_OUT => RRC_OUT,
          STOP_OUT => STOP_OUT,
          INC_OUT => INC_OUT,
          PC_in => PC_in,
          PC_out => PC_out,
          MA_in => MA_in,
          MA_out => MA_out,
          MD_out => MD_out,
          Read_out => Read_out,
          Wait_out => Wait_out,
          Write_out => Write_out,
          C_in => C_in,
          C_out => C_out,
          IR_hi_in => IR_hi_in,
          IR_lo_in => IR_lo_in,
          A_in => A_in,
          A_out => A_out,
          Flags_out => Flags_out,
          SR_in => SR_in,
          R_in => R_in,
          R_out => R_out,
          R7_out => R7_out,
          End_out => End_out
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
-- 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;
		 T0 <=  '1';
    T1 <=  '0';
    T2 <=  '0';
    T3 <=  '0';
    T4 <=  '0';
    T5 <=  '0';
    T6 <=  '0';
    T7 <=  '0';
    T8 <=  '0';
    AND_IN <=  '1';
    OR_IN <=  '0';
    XOR_IN <=  '0';
    ADDC_IN <=  '0';
    SUB_IN <=  '0';
    MAC_IN <=  '0';
    NEG_IN <=  '0';
    NOT_IN <=  '0';
    RLC_IN <=  '0';
    RRC_IN <=  '0';
    LDA_REG_IN <=  '0';
    STA_REG_IN <=  '0';
    LDA_ADDR_IN <=  '0';
    STA_ADDR_IN <=  '0';
    LDI_IN <=  '0';
    BRZ_IN <=  '0';
    BRC_IN <=  '0';
    BRN_IN <=  '0';
    BRO_IN <=  '0';
    NOP_IN <=  '0';
    STOP_IN <=  '0';
	
	wait for 100 ns;
		 T0 <=  '0';
    T1 <=  '1';
    T2 <=  '0';
    T3 <=  '0';
    T4 <=  '0';
    T5 <=  '0';
    T6 <=  '0';
    T7 <=  '0';
    T8 <=  '0';
    AND_IN <=  '1';
    OR_IN <=  '0';
    XOR_IN <=  '0';
    ADDC_IN <=  '0';
    SUB_IN <=  '0';
    MAC_IN <=  '0';
    NEG_IN <=  '0';
    NOT_IN <=  '0';
    RLC_IN <=  '0';
    RRC_IN <=  '0';
    LDA_REG_IN <=  '0';
    STA_REG_IN <=  '0';
    LDA_ADDR_IN <=  '0';
    STA_ADDR_IN <=  '0';
    LDI_IN <=  '0';
    BRZ_IN <=  '0';
    BRC_IN <=  '0';
    BRN_IN <=  '0';
    BRO_IN <=  '0';
    NOP_IN <=  '0';
    STOP_IN <=  '0';
			

--      wait for <clock>_period*10;
--
--      -- insert stimulus here 
--
--      wait;
   end process;

END;
