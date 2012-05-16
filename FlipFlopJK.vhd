----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:58:12 05/11/2012 
-- Design Name: 
-- Module Name:    FlipFlopJK - struct_FlipFlopJK 
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

entity FlipFlopJK is
    Port ( J : in  STD_LOGIC;
           K : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Q_neg : out  STD_LOGIC);
end FlipFlopJK;

architecture struct_FlipFlopJK of FlipFlopJK is

COMPONENT FlipFlopD is
    Port ( D : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Q_neg : out  STD_LOGIC);
END COMPONENT;

signal and1_out, and2_out, or1_out, sig_Q, sig_Q_neg : STD_LOGIC;
begin
and1_out <= J and sig_Q_neg;
and2_out <= (not K) and sig_Q;
or1_out <= and1_out or and2_out;

ffd : FlipFlopD PORT MAP(or1_out, Clk, Reset, sig_Q, sig_Q_neg);
Q <= sig_Q;
Q_neg <= sig_Q_neg;


end struct_FlipFlopJK;

