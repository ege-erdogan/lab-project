----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:42:51 05/13/2019 
-- Design Name: 
-- Module Name:    BuzzerInterface - Behavioral 
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
-- Universal shift register with parallel load that transfers
--   the 14-bit Morse code representations to the buzzer bit by bit.
entity BuzzerInterface is
	Port(
		data_in: in std_logic_vector(13 downto 0) := "00000000000000";
		clk: in std_logic;
		reg_out: out std_logic_vector(13 downto 0); -- used for debugging
		data_out: out std_logic;
		ready: out std_logic := '1' -- 1 if input can change
	);
end BuzzerInterface;

architecture Behavioral of BuzzerInterface is
	signal reg : std_logic_vector(13 downto 0) := "00000000000000";
	signal shift_ctrl: std_logic := '1';
	signal out_temp: std_logic := '0';
	
	-- Word ends when there are three zeros back to back. 
	-- Used to keep the last two bits in memory. 
	signal last1: std_logic;
	signal last2: std_logic;
	
begin
	process(clk)
	begin
		if rising_edge(clk) then
			if shift_ctrl = '1' then
				if last1 = '0' and last2 = '0' and reg(13) = '0' then
					-- word ends, ready to receive new input.
					out_temp <= '0';
					shift_ctrl <= '0';
					ready <= '1';
				else 
					-- shifting operation
					ready <= '0';
					out_temp <= reg(13);
					last2 <= last1;
					last1 <= reg(13);
					reg(13) <= reg(12);
					reg(12) <= reg(11);
					reg(11) <= reg(10);
					reg(10) <= reg(9);
					reg(9) <= reg(8);
					reg(8) <= reg(7);
					reg(7) <= reg(6);
					reg(6) <= reg(5);
					reg(5) <= reg(4);
					reg(4) <= reg(3);
					reg(3) <= reg(2);
					reg(2) <= reg(1);
					reg(1) <= reg(0);
					reg(0) <= '0';
				end if;
			else
				reg <= data_in;
				shift_ctrl <= '1';
			end if;
		end if;
	end process;
			
	reg_out <= reg;
	data_out <= out_temp;


end Behavioral;

