--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:20:45 05/11/2012
-- Design Name:   
-- Module Name:   X:/Desktop/Proyecto_Nayda/Alu/Controlador/Decoder_4X16_tb.vhd
-- Project Name:  Controlador
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Decoder_4X16
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
 
ENTITY Decoder_4X16_tb IS
END Decoder_4X16_tb;
 
ARCHITECTURE behavior OF Decoder_4X16_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Decoder_4X16
    PORT(
         Ain_0 : IN  std_logic;
         Ain_1 : IN  std_logic;
         Ain_2 : IN  std_logic;
         Ain_3 : IN  std_logic;
         T0 : OUT  std_logic;
         T1 : OUT  std_logic;
         T2 : OUT  std_logic;
         T3 : OUT  std_logic;
         T4 : OUT  std_logic;
         T5 : OUT  std_logic;
         T6 : OUT  std_logic;
         T7 : OUT  std_logic;
         T8 : OUT  std_logic;
         T9 : OUT  std_logic;
         T10 : OUT  std_logic;
         T11 : OUT  std_logic;
         T12 : OUT  std_logic;
         T13 : OUT  std_logic;
         T14 : OUT  std_logic;
         T15 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Ain_0 : std_logic := '0';
   signal Ain_1 : std_logic := '0';
   signal Ain_2 : std_logic := '0';
   signal Ain_3 : std_logic := '0';

 	--Outputs
   signal T0 : std_logic;
   signal T1 : std_logic;
   signal T2 : std_logic;
   signal T3 : std_logic;
   signal T4 : std_logic;
   signal T5 : std_logic;
   signal T6 : std_logic;
   signal T7 : std_logic;
   signal T8 : std_logic;
   signal T9 : std_logic;
   signal T10 : std_logic;
   signal T11 : std_logic;
   signal T12 : std_logic;
   signal T13 : std_logic;
   signal T14 : std_logic;
   signal T15 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Decoder_4X16 PORT MAP (
          Ain_0 => Ain_0,
          Ain_1 => Ain_1,
          Ain_2 => Ain_2,
          Ain_3 => Ain_3,
          T0 => T0,
          T1 => T1,
          T2 => T2,
          T3 => T3,
          T4 => T4,
          T5 => T5,
          T6 => T6,
          T7 => T7,
          T8 => T8,
          T9 => T9,
          T10 => T10,
          T11 => T11,
          T12 => T12,
          T13 => T13,
          T14 => T14,
          T15 => T15
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
      wait for 100 ns;	
		Ain_0 <= '0';
		Ain_1 <= '0';
      Ain_2 <= '0';
      Ain_3 <= '0';
		
		wait for 100 ns;	
		Ain_0 <= '1';
		Ain_1 <= '0';
      Ain_2 <= '0';
      Ain_3 <= '0';
		
		wait for 100 ns;	
		Ain_0 <= '0';
		Ain_1 <= '1';
      Ain_2 <= '0';
      Ain_3 <= '0';
		
		wait for 100 ns;	
		Ain_0 <= '1';
		Ain_1 <= '1';
      Ain_2 <= '0';
      Ain_3 <= '0';
		
		wait for 100 ns;	
		Ain_0 <= '0';
		Ain_1 <= '0';
      Ain_2 <= '1';
      Ain_3 <= '0';
		
		wait for 100 ns;	
		Ain_0 <= '1';
		Ain_1 <= '0';
      Ain_2 <= '1';
      Ain_3 <= '0';
		
		wait for 100 ns;	
		Ain_0 <= '0';
		Ain_1 <= '1';
      Ain_2 <= '1';
      Ain_3 <= '0';
		
		wait for 100 ns;	
		Ain_0 <= '1';
		Ain_1 <= '1';
      Ain_2 <= '1';
      Ain_3 <= '0';
		
		wait for 100 ns;	
		Ain_0 <= '0';
		Ain_1 <= '0';
      Ain_2 <= '0';
      Ain_3 <= '1';
		
		wait for 100 ns;	
		Ain_0 <= '1';
		Ain_1 <= '0';
      Ain_2 <= '0';
      Ain_3 <= '1';
		
		wait for 100 ns;	
		Ain_0 <= '0';
		Ain_1 <= '1';
      Ain_2 <= '0';
      Ain_3 <= '1';
		
		wait for 100 ns;	
		Ain_0 <= '1';
		Ain_1 <= '1';
      Ain_2 <= '0';
      Ain_3 <= '1';
		
		wait for 100 ns;	
		Ain_0 <= '0';
		Ain_1 <= '0';
      Ain_2 <= '1';
      Ain_3 <= '1';
		
		wait for 100 ns;	
		Ain_0 <= '1';
		Ain_1 <= '0';
      Ain_2 <= '1';
      Ain_3 <= '1';
		
		wait for 100 ns;	
		Ain_0 <= '0';
		Ain_1 <= '1';
      Ain_2 <= '1';
      Ain_3 <= '1';
		
		wait for 100 ns;	
		Ain_0 <= '1';
		Ain_1 <= '1';
      Ain_2 <= '1';
      Ain_3 <= '1';
		
--
--      wait for <clock>_period*10;
--
--      -- insert stimulus here 
--
--      wait;
   end process;

END;
