----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:07:41 05/11/2012 
-- Design Name: 
-- Module Name:    Clock_Logic_Circuit - struct_Clock_Logic_Circuit 
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

entity Clock_Logic_Circuit is
    Port ( Start : in  STD_LOGIC;
           Stop : in  STD_LOGIC;
           Mck : in  STD_LOGIC;
			  MRESET : in  STD_LOGIC;
           Read_IN : in  STD_LOGIC;
           Write_IN : in  STD_LOGIC;
           Done : in  STD_LOGIC;
           Wait_IN : in  STD_LOGIC;
           Enable : out  STD_LOGIC;
           R : out  STD_LOGIC;
           W : out  STD_LOGIC);
end Clock_Logic_Circuit;

architecture struct_Clock_Logic_Circuit of Clock_Logic_Circuit is
COMPONENT FlipFlopJK is
    Port ( J : in  STD_LOGIC;
           K : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Q_neg : out  STD_LOGIC);
END COMPONENT;

COMPONENT FlipFlopD is
    Port ( D : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Q_neg : out  STD_LOGIC);
END COMPONENT;

signal ff1_q_out, ff1_q_neg_out, ff2_q_out, ff2_q_neg_out, ff3_q_out, ff3_q_neg_out, ffd1_q_out, ffd1_q_neg_out, or1_out, or2_out : STD_LOGIC;

begin
ff1 : FlipFlopJK PORT MAP(Start, Stop, Mck, MRESET , ff1_q_out, ff1_q_neg_out);
ffd : FlipFlopD PORT MAP(Done, Mck, MRESET, ffd1_q_out, ffd1_q_neg_out);
ff2 : FlipFlopJK PORT MAP(Read_IN, ffd1_q_out, Mck, MRESET, ff2_q_out, ff2_q_neg_out);
ff3 : FlipFlopJK PORT MAP(Write_IN, ffd1_q_out, Mck, MRESET, ff3_q_out, ff3_q_neg_out);

R <= ff2_q_out;
W <= ff3_q_out;
or1_out <= ff2_q_out or ff3_q_out;
or2_out <= (not or1_out) or ((not Wait_IN)or(ffd1_q_out));
Enable <= or2_out and ff1_q_out;





end struct_Clock_Logic_Circuit;

