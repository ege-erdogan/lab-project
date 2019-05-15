----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:38:52 05/13/2019 
-- Design Name: 
-- Module Name:    Memory - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- DEFINITION:
-- A memory unit with 64 words of storage 5 bits each
-- Used to store the letters as they are entered by the user
entity Memory is
	Port(
		data_in: in std_logic_vector(4 downto 0);
		read_enable: in std_logic;
		write_enable: in std_logic;
		address: in std_logic_vector(5 downto 0);
		data_out: out std_logic_vector(4 downto 0)
	);
end Memory;

architecture Behavioral of Memory is
	type mem is array(0 to 63) of std_logic_vector(4 downto 0);
	signal RAM : mem;
	
	signal temp_out : std_logic_vector(4 downto 0);

begin
	
	process(read_enable, write_enable, address)
	begin
		if read_enable = '1' then
			temp_out <= RAM(to_integer(unsigned(address)));
		elsif write_enable = '1' then
			RAM(to_integer(unsigned(address))) <= data_in;
		end if;
	end process;

	data_out <= temp_out;

end Behavioral;




















