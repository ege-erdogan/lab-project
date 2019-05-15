----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:39:36 05/13/2019 
-- Design Name: 
-- Module Name:    Counter - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.NUMERIC_STD.ALL;


-- DEFINITION:
-- A simple counter to count from 0 to 63 and then repeat
entity Counter is
	Port(
		clk: in std_logic;
		reset: in std_logic;
		count: out std_logic_vector(5 downto 0)
	);
end Counter;

architecture Behavioral of Counter is
	signal c: std_logic_vector(5 downto 0) := "000000";

begin
	
	process(clk, reset)
	begin
		if reset = '1' then
			c <= "000000";
		elsif rising_edge(clk) then
			if c = "111111" then
				c <= "000000";
			else 
				c <= c + 1;
			end if;
		end if;
	end process;
	
	count <= c;
			
end Behavioral;

