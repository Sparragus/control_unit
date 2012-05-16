----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:14:22 05/11/2012 
-- Design Name: 
-- Module Name:    Decoder_4X16 - Behavioral 
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

entity Decoder_4X16 is
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
end Decoder_4X16;

architecture struct_Decoder_4X16 of Decoder_4X16 is

begin
T0 <= ((not Ain_0) and (not Ain_1)) and ((not Ain_2) and (not Ain_3));
T1 <= ((Ain_0) and (not Ain_1)) and ((not Ain_2) and (not Ain_3));
T2 <= ((not Ain_0) and (Ain_1)) and ((not Ain_2) and (not Ain_3));
T3 <= ((Ain_0) and (Ain_1)) and ((not Ain_2) and (not Ain_3));
T4 <= ((not Ain_0) and (not Ain_1)) and ((Ain_2) and (not Ain_3));
T5 <= ((Ain_0) and (not Ain_1)) and ((Ain_2) and (not Ain_3));
T6 <= ((not Ain_0) and (Ain_1)) and ((Ain_2) and (not Ain_3));
T7 <= ((Ain_0) and (Ain_1)) and ((Ain_2) and (not Ain_3));
T8 <= ((not Ain_0) and (not Ain_1)) and ((not Ain_2) and (Ain_3));
T9 <= ((Ain_0) and (not Ain_1)) and ((not Ain_2) and (Ain_3));
T10 <= ((not Ain_0) and (Ain_1)) and ((not Ain_2) and (Ain_3));
T11 <= ((Ain_0) and (Ain_1)) and ((not Ain_2) and (Ain_3));
T12 <= ((not Ain_0) and (not Ain_1)) and ((Ain_2) and (Ain_3));
T13 <= ((Ain_0) and (not Ain_1)) and ((Ain_2) and (Ain_3));
T14 <= ((not Ain_0) and (Ain_1)) and ((Ain_2) and (Ain_3));
T15 <= ((Ain_0) and (Ain_1)) and ((Ain_2) and (Ain_3));


end struct_Decoder_4X16;

