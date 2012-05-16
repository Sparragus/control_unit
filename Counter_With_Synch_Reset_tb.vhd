--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:02:48 05/11/2012
-- Design Name:   
-- Module Name:   X:/Desktop/Proyecto_Nayda/Alu/Controlador/Counter_With_Synch_Reset_tb.vhd
-- Project Name:  Controlador
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Counter_With_Synch_Reset
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
 
ENTITY Counter_With_Synch_Reset_tb IS
END Counter_With_Synch_Reset_tb;
 
ARCHITECTURE behavior OF Counter_With_Synch_Reset_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Counter_With_Synch_Reset
    PORT(
         Count : IN  std_logic;
         Clk : IN  std_logic;
         Reset : IN  std_logic;
         A0 : OUT  std_logic;
         A1 : OUT  std_logic;
         A2 : OUT  std_logic;
         A3 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Count : std_logic := '0';
   signal Clk : std_logic := '0';
   signal Reset : std_logic := '0';

 	--Outputs
   signal A0 : std_logic;
   signal A1 : std_logic;
   signal A2 : std_logic;
   signal A3 : std_logic;

   -- Clock period definitions
--   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Counter_With_Synch_Reset PORT MAP (
          Count => Count,
          Clk => Clk,
          Reset => Reset,
          A0 => A0,
          A1 => A1,
          A2 => A2,
          A3 => A3
        );

   -- Clock process definitions
--   Clk_process :process
--   begin
--		Clk <= '0';
--		wait for Clk_period/2;
--		Clk <= '1';
--		wait for Clk_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;
	   
		Count <= '0';
		Clk <= '0';
		Reset <= '1';
		
		wait for 100 ns;
	   
		Count <= '0';
		Clk <= '1';
		Reset <= '1';
		
		wait for 100 ns;
	   
		Count <= '1';
		Clk <= '0';
		Reset <= '0';
		
		wait for 100 ns;
	   
		Count <= '1';
		Clk <= '1';
		Reset <= '0';
		
		wait for 100 ns;
	   
		Count <= '1';
		Clk <= '0';
		Reset <= '0';
		
		wait for 100 ns;
	   
		Count <= '1';
		Clk <= '1';
		Reset <= '0';		

		wait for 100 ns;
	   
		Count <= '1';
		Clk <= '0';
		Reset <= '0';
		
		wait for 100 ns;
	   
		Count <= '1';
		Clk <= '1';
		Reset <= '0';
		
		wait for 100 ns;
	   
		Count <= '1';
		Clk <= '0';
		Reset <= '0';
		
		wait for 100 ns;
	   
		Count <= '1';
		Clk <= '1';
		Reset <= '0';
		
		wait for 100 ns;
	   
		Count <= '1';
		Clk <= '0';
		Reset <= '0';
		
		wait for 100 ns;
	   
		Count <= '1';
		Clk <= '1';
		Reset <= '0';
--
--      wait for Clk_period*10;
--
--      -- insert stimulus here 
--
--      wait;
   end process;

END;
