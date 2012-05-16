--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:25:32 05/15/2012
-- Design Name:   
-- Module Name:   X:/Desktop/Proyecto_Nayda/Alu/Controlador/Clock_Logic_Circuit_tb.vhd
-- Project Name:  Controlador
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Clock_Logic_Circuit
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
 
ENTITY Clock_Logic_Circuit_tb IS
END Clock_Logic_Circuit_tb;
 
ARCHITECTURE behavior OF Clock_Logic_Circuit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Clock_Logic_Circuit
    PORT(
         Start : IN  std_logic;
         Stop : IN  std_logic;
         Mck : IN  std_logic;
			MRESET : IN std_logic;
         Read_IN : IN  std_logic;
         Write_IN : IN  std_logic;
         Done : IN  std_logic;
         Wait_IN : IN  std_logic;
         Enable : OUT  std_logic;
         R : OUT  std_logic;
         W : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Start : std_logic := '0';
   signal Stop : std_logic := '0';
   signal Mck : std_logic := '0';
	signal MReset : std_logic := '0';
   signal Read_IN : std_logic := '0';
   signal Write_IN : std_logic := '0';
   signal Done : std_logic := '0';
   signal Wait_IN : std_logic := '0';

 	--Outputs
   signal Enable : std_logic;
   signal R : std_logic;
   signal W : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Clock_Logic_Circuit PORT MAP (
          Start => Start,
          Stop => Stop,
          Mck => Mck,
			 MReset => MRESET,
          Read_IN => Read_IN,
          Write_IN => Write_IN,
          Done => Done,
          Wait_IN => Wait_IN,
          Enable => Enable,
          R => R,
          W => W
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
	-- MASTER RESET	
   wait for 10 ns;	
	Start <= '0';
	Stop <= '0';
   Mck <= '0';
	Mreset <= '1';
   Read_IN <= '0';
   Write_IN <= '0';
   Done <= '1';
   Wait_IN <= '0';
	
	wait for 10 ns;	
	Start <= '0';
   Stop <= '0';
   Mck <= '1';
	Mreset <= '0';
   Read_IN <= '0';
   Write_IN <= '0';
   Done <= '1';
   Wait_IN <= '0';
	-- END MASTER RESET
	
	--START EVERYTHING
	 wait for 10 ns;	
	Start <= '1';
   Stop <= '0';
   Mck <= '0';
	Mreset <= '0';
   Read_IN <= '0';
   Write_IN <= '0';
   Done <= '1';
   Wait_IN <= '0';
	
	wait for 10 ns;	
	Start <= '0';
   Stop <= '0';
   Mck <= '1';
	Mreset <= '0';
   Read_IN <= '0';
   Write_IN <= '0';
   Done <= '1';
   Wait_IN <= '0';
	-- END START EVERYTHING
	
	--RUN FOR A WHILE
	wait for 10 ns;	
	Start <= '0';
   Stop <= '0';
   Mck <= '0';
	Mreset <= '0';
   Read_IN <= '0';
   Write_IN <= '0';
   Done <= '1';
   Wait_IN <= '0';
	
	wait for 10 ns;	
	Start <= '0';
   Stop <= '0';
   Mck <= '1';
	Mreset <= '0';
   Read_IN <= '0';
   Write_IN <= '0';
   Done <= '1';
   Wait_IN <= '0';
	--END RUN FOR A WHILE
	
	--Simulate Reading from Memory
		--RUN FOR A WHILE
	wait for 10 ns;	
	Start <= '0';
   Stop <= '0';
   Mck <= '0';
	Mreset <= '0';
   Read_IN <= '1';
   Write_IN <= '0';
   Done <= '0';
   Wait_IN <= '1';
	
	wait for 10 ns;	
	Start <= '0';
   Stop <= '0';
   Mck <= '1';
	Mreset <= '0';
   Read_IN <= '1';
   Write_IN <= '0';
   Done <= '0';
   Wait_IN <= '1';
	--END RUN FOR A WHILE
	
	--RUN FOR A WHILE
	wait for 10 ns;	
	Start <= '0';
   Stop <= '0';
   Mck <= '0';
	Mreset <= '0';
   Read_IN <= '1';
   Write_IN <= '0';
   Done <= '0';
   Wait_IN <= '1';
	
	wait for 10 ns;	
	Start <= '0';
   Stop <= '0';
   Mck <= '1';
	Mreset <= '0';
   Read_IN <= '1';
   Write_IN <= '0';
   Done <= '0';
   Wait_IN <= '1';
	--END RUN FOR A WHILE
	
	--Memory Finished
	--RUN FOR A WHILE
	wait for 10 ns;	
	Start <= '0';
   Stop <= '0';
   Mck <= '0';
	Mreset <= '0';
   Read_IN <= '1';
   Write_IN <= '0';
   Done <= '1';
   Wait_IN <= '1';
	
	wait for 10 ns;	
	Start <= '0';
   Stop <= '0';
   Mck <= '1';
	Mreset <= '0';
   Read_IN <= '0';
   Write_IN <= '0';
   Done <= '1';
   Wait_IN <= '0';
	--END RUN FOR A WHILE
	
	
	
--      wait for <clock>_period*10;
--
--      -- insert stimulus here 
--
--      wait;
   end process;

END;
