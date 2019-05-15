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


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

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
	
	process(read_enable, write_enable, reset, address)
	begin
		if read_enable = '1' then
			temp_out <= RAM(to_integer(unsigned(address)));
		elsif write_enable = '1' then
			RAM(to_integer(unsigned(address))) <= data_in;
		end if;
	end process;

	data_out <= temp_out;

end Behavioral;




















