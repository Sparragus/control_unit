--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:07:25 05/11/2012
-- Design Name:   
-- Module Name:   X:/Desktop/Proyecto_Nayda/Alu/Controlador/FlipFlopT_tb.vhd
-- Project Name:  Controlador
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FlipFlopT
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
 
ENTITY FlipFlopT_tb IS
END FlipFlopT_tb;
 
ARCHITECTURE behavior OF FlipFlopT_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FlipFlopT
    PORT(
         T : IN  std_logic;
         Clk_enable : IN  std_logic;
         Reset : IN  std_logic;
         Q_de_T : OUT  std_logic;
         Q_neg_de_T : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal T : std_logic := '0';
   signal Clk_enable : std_logic := '0';
   signal Reset : std_logic := '0';

 	--Outputs
   signal Q_de_T : std_logic;
   signal Q_neg_de_T : std_logic;

--   -- Clock period definitions
--   constant Clk_enable_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FlipFlopT PORT MAP (
          T => T,
          Clk_enable => Clk_enable,
          Reset => Reset,
          Q_de_T => Q_de_T,
          Q_neg_de_T => Q_neg_de_T
        );

   -- Clock process definitions
--   Clk_enable_process :process
--   begin
--		Clk_enable <= '0';
--		wait for Clk_enable_period/2;
--		Clk_enable <= '1';
--		wait for Clk_enable_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		T <= '0';
		Clk_enable <= '0';
		Reset <= '1';
		
		wait for 100 ns;	
		
		T <= '0';
		Clk_enable <= '1';
		Reset <= '1';
		
		wait for 100 ns;	
		
		T <= '1';
		Clk_enable <= '0';
		Reset <= '0';
		
		wait for 100 ns;	
		
		T <= '1';
		Clk_enable <= '1';
		Reset <= '0';
		
		wait for 100 ns;	
		
		T <= '1';
		Clk_enable <= '0';
		Reset <= '0';
		
		wait for 100 ns;	
		
		T <= '1';
		Clk_enable <= '1';
		Reset <= '0';
		
		wait for 100 ns;	
		
		T <= '1';
		Clk_enable <= '0';
		Reset <= '0';
		
		wait for 100 ns;	
		
		T <= '1';
		Clk_enable <= '1';
		Reset <= '0';
		
		wait for 100 ns;	
		
		T <= '0';
		Clk_enable <= '0';
		Reset <= '1';
		
		wait for 100 ns;	
		
		T <= '0';
		Clk_enable <= '1';
		Reset <= '1';


--      wait for Clk_enable_period*10;
--
--      -- insert stimulus here 
--
--      wait;
   end process;

END;
