----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:46:21 05/11/2012 
-- Design Name: 
-- Module Name:    FlipFlopD - Behavioral 
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

entity FlipFlopD is
    Port ( D : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Q_neg : out  STD_LOGIC);
end FlipFlopD;

architecture struct_FlipFlopD of FlipFlopD is
signal nandout1, nandout2, nandout3, nandout4, nandout5, nandout6,D_real: STD_LOGIC; 
begin
D_real <= D and (not Reset);
nandout1 <= nandout2 nand nandout4;
nandout2 <= nandout1 nand Clk;
nandout3 <= not( nandout2 and (Clk and nandout4));
nandout4 <= nandout3 nand D_real;
nandout5 <= nandout2 nand nandout6;
nandout6 <= nandout5 nand nandout3;
Q <= nandout5;
Q_neg <= nandout6;

end struct_FlipFlopD;

