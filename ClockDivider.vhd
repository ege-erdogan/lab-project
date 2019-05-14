----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:42:16 05/13/2019 
-- Design Name: 
-- Module Name:    ClockDivider - Behavioral 
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

entity ClockDivider is
	Generic (N: INTEGER := 5 * 10**6); -- frequency
	Port (
		clk_in: in std_logic;
		clk_out: out std_logic
		);
end ClockDivider;

architecture Behavioral of ClockDivider is
	signal clk_div: std_logic := '0';

begin
	process(clk_in)
		variable counter : INTEGER range 0 to N;
		begin
			if rising_edge(clk_in) then
				counter := counter + 1;
				if (counter = n/1-1) then
					counter := 0;
					clk_div <= not clk_div;
				end if;
			end if;
		clk_out <= clk_div;
	end process;

end Behavioral;

