--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:12:29 05/16/2012
-- Design Name:   
-- Module Name:   X:/Desktop/Proyecto_Nayda/Alu/Controlador/Decoder_5X32_tb.vhd
-- Project Name:  Controlador
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Decorder_5X32
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
 
ENTITY Decoder_5X32_tb IS
END Decoder_5X32_tb;
 
ARCHITECTURE behavior OF Decoder_5X32_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Decorder_5X32
    PORT(
         Ain_0 : IN  std_logic;
         Ain_1 : IN  std_logic;
         Ain_2 : IN  std_logic;
         Ain_3 : IN  std_logic;
         Ain_4 : IN  std_logic;
         B0_out : OUT  std_logic;
         B1_out : OUT  std_logic;
         B2_out : OUT  std_logic;
         B3_out : OUT  std_logic;
         B4_out : OUT  std_logic;
         B5_out : OUT  std_logic;
         B6_out : OUT  std_logic;
         B7_out : OUT  std_logic;
         B8_out : OUT  std_logic;
         B9_out : OUT  std_logic;
         B10_out : OUT  std_logic;
         B11_out : OUT  std_logic;
         B12_out : OUT  std_logic;
         B13_out : OUT  std_logic;
         B14_out : OUT  std_logic;
         B15_out : OUT  std_logic;
         B16_out : OUT  std_logic;
         B17_out : OUT  std_logic;
         B18_out : OUT  std_logic;
         B19_out : OUT  std_logic;
         B20_out : OUT  std_logic;
         B21_out : OUT  std_logic;
         B22_out : OUT  std_logic;
         B23_out : OUT  std_logic;
         B24_out : OUT  std_logic;
         B25_out : OUT  std_logic;
         B26_out : OUT  std_logic;
         B27_out : OUT  std_logic;
         B28_out : OUT  std_logic;
         B29_out : OUT  std_logic;
         B30_out : OUT  std_logic;
         B31_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Ain_0 : std_logic := '0';
   signal Ain_1 : std_logic := '0';
   signal Ain_2 : std_logic := '0';
   signal Ain_3 : std_logic := '0';
   signal Ain_4 : std_logic := '0';

 	--Outputs
   signal B0_out : std_logic;
   signal B1_out : std_logic;
   signal B2_out : std_logic;
   signal B3_out : std_logic;
   signal B4_out : std_logic;
   signal B5_out : std_logic;
   signal B6_out : std_logic;
   signal B7_out : std_logic;
   signal B8_out : std_logic;
   signal B9_out : std_logic;
   signal B10_out : std_logic;
   signal B11_out : std_logic;
   signal B12_out : std_logic;
   signal B13_out : std_logic;
   signal B14_out : std_logic;
   signal B15_out : std_logic;
   signal B16_out : std_logic;
   signal B17_out : std_logic;
   signal B18_out : std_logic;
   signal B19_out : std_logic;
   signal B20_out : std_logic;
   signal B21_out : std_logic;
   signal B22_out : std_logic;
   signal B23_out : std_logic;
   signal B24_out : std_logic;
   signal B25_out : std_logic;
   signal B26_out : std_logic;
   signal B27_out : std_logic;
   signal B28_out : std_logic;
   signal B29_out : std_logic;
   signal B30_out : std_logic;
   signal B31_out : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Decorder_5X32 PORT MAP (
          Ain_0 => Ain_0,
          Ain_1 => Ain_1,
          Ain_2 => Ain_2,
          Ain_3 => Ain_3,
          Ain_4 => Ain_4,
          B0_out => B0_out,
          B1_out => B1_out,
          B2_out => B2_out,
          B3_out => B3_out,
          B4_out => B4_out,
          B5_out => B5_out,
          B6_out => B6_out,
          B7_out => B7_out,
          B8_out => B8_out,
          B9_out => B9_out,
          B10_out => B10_out,
          B11_out => B11_out,
          B12_out => B12_out,
          B13_out => B13_out,
          B14_out => B14_out,
          B15_out => B15_out,
          B16_out => B16_out,
          B17_out => B17_out,
          B18_out => B18_out,
          B19_out => B19_out,
          B20_out => B20_out,
          B21_out => B21_out,
          B22_out => B22_out,
          B23_out => B23_out,
          B24_out => B24_out,
          B25_out => B25_out,
          B26_out => B26_out,
          B27_out => B27_out,
          B28_out => B28_out,
          B29_out => B29_out,
          B30_out => B30_out,
          B31_out => B31_out
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
      wait for 1 ns;	
		Ain_0 <= '0';
		Ain_1 <= '0';
		Ain_2 <= '0';
		Ain_3 <= '0';
		Ain_4 <= '0';
		
		wait for 1 ns;	
		Ain_0 <= '1';
		Ain_1 <= '0';
		Ain_2 <= '0';
		Ain_3 <= '0';
		Ain_4 <= '0';
		
		wait for 1 ns;	
		Ain_0 <= '0';
		Ain_1 <= '1';
		Ain_2 <= '0';
		Ain_3 <= '0';
		Ain_4 <= '0';
		
		wait for 1 ns;	
		Ain_0 <= '1';
		Ain_1 <= '1';
		Ain_2 <= '0';
		Ain_3 <= '0';
		Ain_4 <= '0';
		
		wait for 1 ns;	
		Ain_0 <= '0';
		Ain_1 <= '0';
		Ain_2 <= '1';
		Ain_3 <= '0';
		Ain_4 <= '0';
		
		wait for 1 ns;	
		Ain_0 <= '1';
		Ain_1 <= '0';
		Ain_2 <= '1';
		Ain_3 <= '0';
		Ain_4 <= '0';
		
		wait for 1 ns;	
		Ain_0 <= '0';
		Ain_1 <= '1';
		Ain_2 <= '1';
		Ain_3 <= '0';
		Ain_4 <= '0';
		
		wait for 1 ns;	
		Ain_0 <= '1';
		Ain_1 <= '1';
		Ain_2 <= '1';
		Ain_3 <= '0';
		Ain_4 <= '0';
		
		wait for 1 ns;	
		Ain_0 <= '0';
		Ain_1 <= '0';
		Ain_2 <= '0';
		Ain_3 <= '1';
		Ain_4 <= '0';
		
		wait for 1 ns;	
		Ain_0 <= '1';
		Ain_1 <= '0';
		Ain_2 <= '0';
		Ain_3 <= '1';
		Ain_4 <= '0';
		
		wait for 1 ns;	
		Ain_0 <= '0';
		Ain_1 <= '1';
		Ain_2 <= '0';
		Ain_3 <= '1';
		Ain_4 <= '0';
		
		wait for 1 ns;	
		Ain_0 <= '1';
		Ain_1 <= '1';
		Ain_2 <= '0';
		Ain_3 <= '1';
		Ain_4 <= '0';
		
		wait for 1 ns;	
		Ain_0 <= '0';
		Ain_1 <= '0';
		Ain_2 <= '1';
		Ain_3 <= '1';
		Ain_4 <= '0';
		
		wait for 1 ns;	
		Ain_0 <= '1';
		Ain_1 <= '0';
		Ain_2 <= '1';
		Ain_3 <= '1';
		Ain_4 <= '0';
		
		wait for 1 ns;	
		Ain_0 <= '0';
		Ain_1 <= '1';
		Ain_2 <= '1';
		Ain_3 <= '1';
		Ain_4 <= '0';
		
		wait for 1 ns;	
		Ain_0 <= '1';
		Ain_1 <= '1';
		Ain_2 <= '1';
		Ain_3 <= '1';
		Ain_4 <= '0';
		
		wait for 1 ns;	
		Ain_0 <= '0';
		Ain_1 <= '0';
		Ain_2 <= '0';
		Ain_3 <= '0';
		Ain_4 <= '1';
		
		wait for 1 ns;	
		Ain_0 <= '1';
		Ain_1 <= '0';
		Ain_2 <= '0';
		Ain_3 <= '0';
		Ain_4 <= '1';
		
		wait for 1 ns;	
		Ain_0 <= '0';
		Ain_1 <= '1';
		Ain_2 <= '0';
		Ain_3 <= '0';
		Ain_4 <= '1';
		
		wait for 1 ns;	
		Ain_0 <= '1';
		Ain_1 <= '1';
		Ain_2 <= '0';
		Ain_3 <= '0';
		Ain_4 <= '1';
		
		wait for 1 ns;	
		Ain_0 <= '0';
		Ain_1 <= '0';
		Ain_2 <= '1';
		Ain_3 <= '0';
		Ain_4 <= '1';
		
		wait for 1 ns;	
		Ain_0 <= '1';
		Ain_1 <= '0';
		Ain_2 <= '1';
		Ain_3 <= '0';
		Ain_4 <= '1';
		
		wait for 1 ns;	
		Ain_0 <= '0';
		Ain_1 <= '1';
		Ain_2 <= '1';
		Ain_3 <= '0';
		Ain_4 <= '1';
		
		wait for 1 ns;	
		Ain_0 <= '1';
		Ain_1 <= '1';
		Ain_2 <= '1';
		Ain_3 <= '0';
		Ain_4 <= '1';
		
		wait for 1 ns;	
		Ain_0 <= '0';
		Ain_1 <= '0';
		Ain_2 <= '0';
		Ain_3 <= '1';
		Ain_4 <= '1';
		
		wait for 1 ns;	
		Ain_0 <= '1';
		Ain_1 <= '0';
		Ain_2 <= '0';
		Ain_3 <= '1';
		Ain_4 <= '1';
		
		wait for 1 ns;	
		Ain_0 <= '0';
		Ain_1 <= '1';
		Ain_2 <= '0';
		Ain_3 <= '1';
		Ain_4 <= '1';
		
		wait for 1 ns;	
		Ain_0 <= '1';
		Ain_1 <= '1';
		Ain_2 <= '0';
		Ain_3 <= '1';
		Ain_4 <= '1';
		
		wait for 1 ns;	
		Ain_0 <= '0';
		Ain_1 <= '0';
		Ain_2 <= '1';
		Ain_3 <= '1';
		Ain_4 <= '1';
		
		wait for 1 ns;	
		Ain_0 <= '1';
		Ain_1 <= '0';
		Ain_2 <= '1';
		Ain_3 <= '1';
		Ain_4 <= '1';
		
		wait for 1 ns;	
		Ain_0 <= '0';
		Ain_1 <= '1';
		Ain_2 <= '1';
		Ain_3 <= '1';
		Ain_4 <= '1';
		
		wait for 1 ns;	
		Ain_0 <= '1';
		Ain_1 <= '1';
		Ain_2 <= '1';
		Ain_3 <= '1';
		Ain_4 <= '1';
--      wait for <clock>_period*10;
--
--      -- insert stimulus here 
--
--      wait;
   end process;

END;
