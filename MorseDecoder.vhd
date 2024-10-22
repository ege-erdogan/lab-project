----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:39:23 05/13/2019 
-- Design Name: 
-- Module Name:    MorseDecoder - Behavioral 
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


-- DEFINITION:
-- Combinational logic decoder to convert the given 5-bit letters to their 14-bit Morse representations.
entity MorseDecoder is
	port (
		bit5Rep: in STD_LOGIC_VECTOR(4 downto 0);
		bitRepOfMorse : out STD_LOGIC_VECTOR(13 downto 0)
	);
end MorseDecoder;

architecture Behavioral of MorseDecoder is

begin

	process(bit5Rep)
	begin
		case bit5Rep is
			when "00000" => 
				bitRepOfMorse <= "00000000000000"; --SPACE
			when "00001" => 
				bitRepOfMorse <= "10111000000000"; --A
			when "00010" => 
				bitRepOfMorse <= "11101010100000"; --B
			when "00011" =>	
				bitRepOfMorse <= "11101011101000"; --C
			when "00100" => 
				bitRepOfMorse <= "11101010100000"; --D
			when "00101" => 
				bitRepOfMorse <= "10000000000000"; --E
			when "00110" => 
				bitRepOfMorse <= "10101110100000"; --F
			when "00111" => 
				bitRepOfMorse <= "11101110100000"; --G
			when "01000" => 
				bitRepOfMorse <= "10101010000000"; --H
			when "01001" => 
				bitRepOfMorse <= "10100000000000"; --I
			when "01010" =>
				bitRepOfMorse <= "10111011101110"; --J
			when "01011" => 
				bitRepOfMorse <= "11101011100000"; --K
			when "01100" => 
				bitRepOfMorse <= "10111010100000"; --L
			when "01101" => 
				bitRepOfMorse <= "11101110000000"; --M
			when "01110" => 
				bitRepOfMorse <= "11101000000000"; --N
			when "01111" => 
				bitRepOfMorse <= "11101110111000"; --O
			when "10000" => 
				bitRepOfMorse <= "10111011101000"; --P	
			when "10001" => 
				bitRepOfMorse <= "11101110101110"; --Q
			when "10010" => 
				bitRepOfMorse <= "10111010000000"; --R
			when "10011" => 
				bitRepOfMorse <= "10101000000000"; --S
			when "10100" => 
				bitRepOfMorse <= "11100000000000"; --T
			when "10101" => 
				bitRepOfMorse <= "10101110000000"; --U
			when "10110" => 
				bitRepOfMorse <= "10101011100000"; --V
			when "10111" => 
				bitRepOfMorse <= "10111011100000"; --W
			when "11000" => 
				bitRepOfMorse <= "11101010111000"; --X
			when "11001" => 
				bitRepOfMorse <= "11101011101110"; --Y
			when "11010" => 
				bitRepOfMorse <= "11101110101000"; --Z		
			when others =>
				bitRepOfMorse <= "00000000000000";
		end case;
	end process;

end Behavioral;

