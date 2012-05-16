--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:03:49 05/15/2012
-- Design Name:   
-- Module Name:   X:/Desktop/Proyecto_Nayda/Alu/Controlador/Controlador_tb.vhd
-- Project Name:  Controlador
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Controlador
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
 
ENTITY Controlador_tb IS
END Controlador_tb;
 
ARCHITECTURE behavior OF Controlador_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Controlador
    PORT(
         Start : IN  std_logic;
         MCK : IN  std_logic;
         MRESET : IN  std_logic;
			Done_From_Memory : in STD_LOGIC;
         I0 : IN  std_logic;
         I1 : IN  std_logic;
         I2 : IN  std_logic;
         I3 : IN  std_logic;
         I4 : IN  std_logic;
         ZeroFlag : IN  std_logic;
         NegativeFlag : IN  std_logic;
         OverflowFlag : IN  std_logic;
         CarryFlag : IN  std_logic;
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
         R7_out : out  STD_LOGIC;
		   End_out : out STD_LOGIC;
			IR_lo_out : out STD_LOGIC);
    END COMPONENT;
    

   --Inputs
   signal Start : std_logic := '0';
   signal MCK : std_logic := '0';
   signal MRESET : std_logic := '0';
	signal Done_From_Memory : std_logic := '0';
   signal I0 : std_logic := '0';
   signal I1 : std_logic := '0';
   signal I2 : std_logic := '0';
   signal I3 : std_logic := '0';
   signal I4 : std_logic := '0';
   signal ZeroFlag : std_logic := '0';
   signal NegativeFlag : std_logic := '0';
   signal OverflowFlag : std_logic := '0';
   signal CarryFlag : std_logic := '0';

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
	signal IR_lo_out : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Controlador PORT MAP (
          Start => Start,
          MCK => MCK,
          MRESET => MRESET,
			 Done_From_Memory => Done_From_Memory,
          I0 => I0,
          I1 => I1,
          I2 => I2,
          I3 => I3,
          I4 => I4,
          ZeroFlag => ZeroFlag,
          NegativeFlag => NegativeFlag,
          OverflowFlag => OverflowFlag,
          CarryFlag => CarryFlag,
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
			 End_out => End_out,
			 IR_lo_out => IR_lo_out
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      --MASTER RESET
		wait for 10 ns;	
		Start <= '0';
      MCK <= '0';
		MRESET <= '1';
		Done_From_Memory <= '1';
		I0 <= '0';
		I1 <= '0';
		I2 <= '0';
		I3 <= '0';
		I4 <= '0';
		ZeroFlag <= '0';
		NegativeFlag <= '0';
		OverflowFlag <= '0';
		CarryFlag <= '0';
		
		wait for 10 ns;	
      MCK <= '1';
		MRESET <= '0';

		-- Start
		wait for 10 ns;	
      MCK <= '0';
		Start <= '1';

		wait for 10 ns;	
      MCK <= '1';
		
		-- END START EVERYTHING
		
		-- START TEST AND INSTRUCTION
		--T0
		wait for 10 ns;	
		Start <= '0';
		MCK <= '0';
		MRESET <= '0';
		Done_From_Memory <= '1';
		I0 <= '0';
		I1 <= '0';
		I2 <= '0';
		I3 <= '0';
		I4 <= '0';
		ZeroFlag <= '0';
		NegativeFlag <= '0';
		OverflowFlag <= '0';
		CarryFlag <= '0';

		wait for 10 ns;	
      MCK <= '1';
	
		-- From T1 to T7
		for i in 1 to 7 loop
		  wait for 10 ns;
		  MCK <= not MCK; -- MCK = 0
		  wait for 10 ns;
		  MCK <= not MCK; -- MCK = 1
		  -- clock period = 20 ns
		end loop;
		
		-- END TEST AND INSTRUCTION
		
		-- START TEST BRZ INSTRUCTION
		--T0
		wait for 10 ns;	
		Start <= '0';
		MCK <= '0';
		MRESET <= '0';
		Done_From_Memory <= '1';
		I0 <= '0';
		I1 <= '0';
		I2 <= '0';
		I3 <= '0';
		I4 <= '1';
		ZeroFlag <= '1';
		NegativeFlag <= '0';
		OverflowFlag <= '0';
		CarryFlag <= '0';

		wait for 10 ns;	
      MCK <= '1';
	
		-- From T1 to T6
		for i in 1 to 6 loop
		  wait for 10 ns;
		  MCK <= not MCK; -- MCK = 0
		  wait for 10 ns;
		  MCK <= not MCK; -- MCK = 1
		  -- clock period = 20 ns
		end loop;
		-- END TEST BRZ INSTRUCTION
		
		-- START TEST RLC INSTRUCTION
		--T0
		wait for 10 ns;	
		Start <= '0';
		MCK <= '0';
		MRESET <= '0';
		Done_From_Memory <= '1';
		I0 <= '0';
		I1 <= '0';
		I2 <= '0';
		I3 <= '1';
		I4 <= '0';
		ZeroFlag <= '0';
		NegativeFlag <= '0';
		OverflowFlag <= '0';
		CarryFlag <= '0';

		wait for 10 ns;	
      MCK <= '1';
	
		-- From T1 to T8
		for i in 1 to 8 loop
		  wait for 10 ns;
		  MCK <= not MCK; -- MCK = 0
		  wait for 10 ns;
		  MCK <= not MCK; -- MCK = 1
		  -- clock period = 20 ns
		end loop;
		-- END TEST RLC INSTRUCTION
		
		-- START TEST LDA_ADDR INSTRUCTION
		--T0
		wait for 10 ns;	
		Start <= '0';
		MCK <= '0';
		MRESET <= '0';
		Done_From_Memory <= '1';
		I0 <= '0';
		I1 <= '0';
		I2 <= '1';
		I3 <= '1';
		I4 <= '0';
		ZeroFlag <= '0';
		NegativeFlag <= '0';
		OverflowFlag <= '0';
		CarryFlag <= '0';

		wait for 10 ns;	
      MCK <= '1';
	
		-- From T1 to T8
		for i in 1 to 8 loop
		  wait for 10 ns;
		  MCK <= not MCK; -- MCK = 0
		  wait for 10 ns;
		  MCK <= not MCK; -- MCK = 1
		  -- clock period = 20 ns
		end loop;
		
		
		-- END TEST RLC INSTRUCTION
		

--
--      wait for <clock>_period*10;
--
--      -- insert stimulus here 
--
--      wait;
   end process;

END;
