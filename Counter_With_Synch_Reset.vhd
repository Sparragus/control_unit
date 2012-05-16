----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:48:21 05/11/2012 
-- Design Name: 
-- Module Name:    Counter_With_Synch_Reset - Behavioral 
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

entity Counter_With_Synch_Reset is
    Port ( Count : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           A0 : out  STD_LOGIC;
           A1 : out  STD_LOGIC;
           A2 : out  STD_LOGIC;
           A3 : out  STD_LOGIC);
end Counter_With_Synch_Reset;

architecture struct_Counter_With_Synch_Reset of Counter_With_Synch_Reset is
COMPONENT FlipFlopT is
    Port ( T : in  STD_LOGIC;
           Clk_enable : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Q_de_T : out  STD_LOGIC;
           Q_neg_de_T : out  STD_LOGIC);
END COMPONENT;
signal T0_out, T1_out, T2_out, T3_out: STD_LOGIC;
signal T0_out_neg, T1_out_neg, T2_out_neg, T3_out_neg: STD_LOGIC;
signal T0_in, T1_in, T2_in, T3_in: STD_LOGIC;

begin
T0_in <= Count;
T1_in <= Count and T0_out;
T2_in <= Count and (T0_out and T1_out);
T3_in <= Count and (T0_out and (T1_out and T2_out));


T0: FlipFlopT PORT MAP(T0_in, Clk, Reset, T0_out, T0_out_neg);
T1: FlipFlopT PORT MAP(T1_in, Clk, Reset, T1_out, T1_out_neg);
T2: FlipFlopT PORT MAP(T2_in, Clk, Reset, T2_out, T2_out_neg);
T3: FlipFlopT PORT MAP(T3_in, Clk, Reset, T3_out, T3_out_neg);

A0 <= T0_out;
A1 <= T1_out;
A2 <= T2_out;
A3 <= T3_out;

end struct_Counter_With_Synch_Reset;

