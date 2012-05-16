----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:23:13 05/11/2012 
-- Design Name: 
-- Module Name:    Decorder_5X32 - Behavioral 
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

entity Decorder_5X32 is
    Port ( Ain_0 : in  STD_LOGIC;
           Ain_1 : in  STD_LOGIC;
           Ain_2 : in  STD_LOGIC;
           Ain_3 : in  STD_LOGIC;
           Ain_4 : in  STD_LOGIC;
           B0_out : out  STD_LOGIC;
           B1_out : out  STD_LOGIC;
           B2_out : out  STD_LOGIC;
           B3_out : out  STD_LOGIC;
           B4_out : out  STD_LOGIC;
           B5_out : out  STD_LOGIC;
           B6_out : out  STD_LOGIC;
           B7_out : out  STD_LOGIC;
           B8_out : out  STD_LOGIC;
           B9_out : out  STD_LOGIC;
           B10_out : out  STD_LOGIC;
           B11_out : out  STD_LOGIC;
           B12_out : out  STD_LOGIC;
           B13_out : out  STD_LOGIC;
           B14_out : out  STD_LOGIC;
           B15_out : out  STD_LOGIC;
           B16_out : out  STD_LOGIC;
           B17_out : out  STD_LOGIC;
           B18_out : out  STD_LOGIC;
           B19_out : out  STD_LOGIC;
           B20_out : out  STD_LOGIC;
           B21_out : out  STD_LOGIC;
           B22_out : out  STD_LOGIC;
           B23_out : out  STD_LOGIC;
           B24_out : out  STD_LOGIC;
           B25_out : out  STD_LOGIC;
           B26_out : out  STD_LOGIC;
           B27_out : out  STD_LOGIC;
           B28_out : out  STD_LOGIC;
           B29_out : out  STD_LOGIC;
           B30_out : out  STD_LOGIC;
           B31_out : out  STD_LOGIC);
end Decorder_5X32;

architecture struct_Decorder_5X32 of Decorder_5X32 is

begin
B0_out <= (((not Ain_0) and (not Ain_1)) and ((not Ain_2) and (not Ain_3)) and (not Ain_4));
B1_out <= (((Ain_0) and (not Ain_1)) and ((not Ain_2) and (not Ain_3)) and (not Ain_4));
B2_out <= (((not Ain_0) and (Ain_1)) and ((not Ain_2) and (not Ain_3)) and (not Ain_4));
B3_out <= (((Ain_0) and (Ain_1)) and ((not Ain_2) and (not Ain_3)) and (not Ain_4));
B4_out <= (((not Ain_0) and (not Ain_1)) and ((Ain_2) and (not Ain_3)) and (not Ain_4));
B5_out <= (((Ain_0) and (not Ain_1)) and ((Ain_2) and (not Ain_3)) and (not Ain_4));
B6_out <= (((not Ain_0) and (Ain_1)) and ((Ain_2) and (not Ain_3)) and (not Ain_4));
B7_out <= (((Ain_0) and (Ain_1)) and ((Ain_2) and (not Ain_3)) and (not Ain_4));
B8_out <= (((not Ain_0) and (not Ain_1)) and ((not Ain_2) and (Ain_3)) and (not Ain_4));
B9_out <= (((Ain_0) and (not Ain_1)) and ((not Ain_2) and (Ain_3)) and (not Ain_4));
B10_out <= (((not Ain_0) and (Ain_1)) and ((not Ain_2) and (Ain_3)) and (not Ain_4));
B11_out <= (((Ain_0) and (Ain_1)) and ((not Ain_2) and (Ain_3)) and (not Ain_4));
B12_out <= (((not Ain_0) and (not Ain_1)) and ((Ain_2) and (Ain_3)) and (not Ain_4));
B13_out <= (((Ain_0) and (not Ain_1)) and ((Ain_2) and (Ain_3)) and (not Ain_4));
B14_out <= (((not Ain_0) and (Ain_1)) and ((Ain_2) and (Ain_3)) and (not Ain_4));
B15_out <= (((Ain_0) and (Ain_1)) and ((Ain_2) and (Ain_3)) and (not Ain_4));
B16_out <= (((not Ain_0) and (not Ain_1)) and ((not Ain_2) and (not Ain_3)) and (Ain_4));
B17_out <= (((Ain_0) and (not Ain_1)) and ((not Ain_2) and (not Ain_3)) and (Ain_4));
B18_out <= (((not Ain_0) and (Ain_1)) and ((not Ain_2) and (not Ain_3)) and (Ain_4));
B19_out <= (((Ain_0) and (Ain_1)) and ((not Ain_2) and (not Ain_3)) and (Ain_4));
B20_out <= (((not Ain_0) and (not Ain_1)) and ((Ain_2) and (not Ain_3)) and (Ain_4));
B21_out <= (((Ain_0) and (not Ain_1)) and ((Ain_2) and (not Ain_3)) and (Ain_4));
B22_out <= (((not Ain_0) and (Ain_1)) and ((Ain_2) and (not Ain_3)) and (Ain_4));
B23_out <= (((Ain_0) and (Ain_1)) and ((Ain_2) and (not Ain_3)) and (Ain_4));
B24_out <= (((not Ain_0) and (not Ain_1)) and ((not Ain_2) and (Ain_3)) and (Ain_4));
B25_out <= (((Ain_0) and (not Ain_1)) and ((not Ain_2) and (Ain_3)) and (Ain_4));
B26_out <= (((not Ain_0) and (Ain_1)) and ((not Ain_2) and (Ain_3)) and (Ain_4));
B27_out <= (((Ain_0) and (Ain_1)) and ((not Ain_2) and (Ain_3)) and (Ain_4));
B28_out <= (((not Ain_0) and (not Ain_1)) and ((Ain_2) and (Ain_3)) and (Ain_4));
B29_out <= (((Ain_0) and (not Ain_1)) and ((Ain_2) and (Ain_3)) and (Ain_4));
B30_out <= (((not Ain_0) and (Ain_1)) and ((Ain_2) and (Ain_3)) and (Ain_4));
B31_out <= (((Ain_0) and (Ain_1)) and ((Ain_2) and (Ain_3)) and (Ain_4));

end struct_Decorder_5X32;

