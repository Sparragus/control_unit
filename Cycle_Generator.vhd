----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:31:32 05/11/2012 
-- Design Name: 
-- Module Name:    Cycle_Generator - struct_Cycle_Generator 
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

entity Cycle_Generator is
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
end Cycle_Generator;

architecture struct_Cycle_Generator of Cycle_Generator is
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
 COMPONENT Decoder_4X16 is
    Port ( Ain_0 : in  STD_LOGIC;
           Ain_1 : in  STD_LOGIC;
           Ain_2 : in  STD_LOGIC;
           Ain_3 : in  STD_LOGIC;
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
signal sig_A0, sig_A1, sig_A2, sig_a3: STD_LOGIC;
signal sig_T0, sig_T1, sig_T2, sig_T3, sig_T4, sig_T5, sig_T6, sig_T7, sig_T8,sig_T9, sig_T10, sig_T11, sig_T12, sig_T13, sig_T14, sig_T15: STD_LOGIC;
begin
counter : Counter_With_Synch_Reset PORT MAP(Count, Clk, Reset, sig_A0, sig_A1, sig_A2, sig_a3);
decoder : Decoder_4X16 PORT MAP(sig_A0, sig_A1, sig_A2, sig_a3, sig_T0, sig_T1, sig_T2, sig_T3, sig_T4, sig_T5, sig_T6, sig_T7, sig_T8,sig_T9, sig_T10, sig_T11, sig_T12, sig_T13, sig_T14, sig_T15);
T0 <= sig_T0;
T1 <= sig_T1;
T2 <= sig_T2;
T3 <= sig_T3;
T4 <= sig_T4;
T5 <= sig_T5;
T6 <= sig_T6;
T7 <= sig_T7;
T8 <= sig_T8;
T9 <= sig_T9;
T10 <= sig_T10;
T11 <= sig_T11;
T12 <= sig_T12;
T13 <= sig_T13;
T14 <= sig_T14;
T15 <= sig_T15;
end struct_Cycle_Generator;

