----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.11.2022 12:23:42
-- Design Name: 
-- Module Name: check_ip - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity check_ip is
  Port ( --clk , rst : in std_logic;
         Din   : in std_logic_vector (3 downto 0);
         Dout  : out std_logic_vector (7 downto 0) );
end check_ip;

architecture Behavioral of check_ip is

function hex_to_ascii(
        Data_in : in std_logic_vector(3 downto 0))
        return std_logic_vector is 
        variable Data_out : std_logic_vector(7 downto 0);
      begin
        if Data_in = "0000" then
            Data_out := x"30";
        elsif Data_in = "0001" then
            Data_out := x"31";
        elsif Data_in = "0010" then
            Data_out := x"32";
        elsif Data_in = "0011" then
            Data_out := x"33";
        elsif Data_in = "0100" then
            Data_out := x"34";
        elsif Data_in = "0101" then
            Data_out := x"35";
        elsif Data_in = "0110" then
            Data_out := x"36";
        elsif Data_in = "0111" then
            Data_out := x"37";
        elsif Data_in = "1000" then
            Data_out := x"38";
        elsif Data_in = "1001" then
            Data_out := x"39";
        end if;
           
         return std_logic_vector(Data_out);
       end;   
begin
        Dout <= hex_to_ascii(Din);


end Behavioral;
