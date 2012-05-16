--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:03:16 05/11/2012
-- Design Name:   
-- Module Name:   X:/Desktop/Proyecto_Nayda/Alu/Controlador/FlipFlopD_tb.vhd
-- Project Name:  Controlador
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FlipFlopD
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
 
ENTITY FlipFlopD_tb IS
END FlipFlopD_tb;
 
ARCHITECTURE behavior OF FlipFlopD_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FlipFlopD
    PORT(
         D : IN  std_logic;
         Clk : IN  std_logic;
         Reset : IN  std_logic;
         Q : OUT  std_logic;
         Q_neg : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic := '0';
   signal Clk : std_logic := '0';
   signal Reset : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal Q_neg : std_logic;

   -- Clock period definitions
--   constant Clk_period : time := 10 ns;
-- 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FlipFlopD PORT MAP (
          D => D,
          Clk => Clk,
          Reset => Reset,
          Q => Q,
          Q_neg => Q_neg
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
		Clk <= '0';
		D <= '1';
		Reset <= '0';
		
		wait for 100 ns;
		Clk <= '1';
		D <= '1';
		Reset <= '1';
		
		wait for 100 ns;
		Clk <= '0';
		D <= '0';
		Reset <= '0';
		
		wait for 100 ns;
		Clk <= '1';
		D <= '0';
		Reset <= '0';
		
		wait for 100 ns;
		Clk <= '0';
		D <= '1';
		Reset <= '0';
		
		wait for 100 ns;
		Clk <= '1';
		D <= '1';
		Reset <= '0';
		
		wait for 100 ns;
		Clk <= '0';
		D <= '1';
		Reset <= '1';
		
		wait for 100 ns;
		Clk <= '1';
		D <= '1';
		Reset <= '1';
		
--
--      wait for Clk_period*10;
--
--      -- insert stimulus here 
--
--      wait;
   end process;

END;
