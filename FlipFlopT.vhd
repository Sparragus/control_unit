----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:54:29 05/11/2012 
-- Design Name: 
-- Module Name:    FlipFlopT - Behavioral 
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

entity FlipFlopT is
    Port ( T : in  STD_LOGIC;
           Clk_enable : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Q_de_T : out  STD_LOGIC;
           Q_neg_de_T : out  STD_LOGIC);
end FlipFlopT;

architecture struct_FlipFlopT of FlipFlopT is
COMPONENT FlipFlopD is
    Port ( D : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Q_neg : out  STD_LOGIC);
END COMPONENT;
signal xor_out, T_out: STD_LOGIC;

begin
xor_out <= T xor T_out;
d_ff: FlipFlopD PORT MAP(xor_out, Clk_enable, Reset, T_out, Q_neg_de_T);
Q_de_T <= T_out;

end struct_FlipFlopT;

