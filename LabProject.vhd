----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:38:03 05/13/2019 
-- Design Name: 
-- Module Name:    LabProject - Behavioral 
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

entity LabProject is
	Port(
		char: in std_logic_vector(4 downto 0);
		save: in std_logic;
		start_read: in std_logic;
		clk: in std_logic;
		p_out: out std_logic;
		mem_out_add: out std_logic_vector(5 downto 0)
	);
end LabProject;

architecture Behavioral of LabProject is
	
	component ClockDivider is
		Generic (N: INTEGER := 10**7); -- frequency
		Port (
			clk_in: in std_logic;
			clk_out: out std_logic
			);
	end component ClockDivider;
	
	component Counter is 
		Port (
			clk: in std_logic;
			reset: in std_logic;
			count: out std_logic_vector(5 downto 0)
		);
	end component Counter;
	
	component Memory is 
		Port (
			data_in: in std_logic_vector(4 downto 0);
			read_enable: in std_logic;
			write_enable: in std_logic;
			address: in std_logic_vector(5 downto 0);
			data_out: out std_logic_vector(4 downto 0)
		);
	end component Memory;
	
	component MorseDecoder is 
		Port (
			bit5Rep: in STD_LOGIC_VECTOR(4 downto 0);
			bitRepOfMorse : out STD_LOGIC_VECTOR(13 downto 0)
		);
	end component MorseDecoder;
	
	component BuzzerInterface is 
		Port (
			data_in: in std_logic_vector(13 downto 0) := "00000000000000";
			clk: in std_logic;
			data_out: out std_logic;
			ready: out std_logic := '1'
		);
	end component BuzzerInterface;
	
	signal clk_div: std_logic;
	
	signal write_address: std_logic_vector(5 downto 0);
	signal read_address: std_logic_vector(5 downto 0);	
	signal mem_address: std_logic_vector(5 downto 0);
	
	signal buzzer_rdy: std_logic;
	
	-- 1 if currently reading out the word
	signal reading: std_logic;
	
	signal mem_out: std_logic_vector(4 downto 0);
	
	signal morse: std_logic_vector(13 downto 0);
	
begin

	DIV1: ClockDivider port map( clk_in => clk, 
										  clk_out => clk_div);
	
	-- two counters since write and read addresses
	-- are controlled with different signals
	write_address_counter: Counter port map( clk => save, 
														  reset => start_read, 
														  count => write_address);

	read_address_counter: Counter port map( clk => buzzer_rdy, 
														 reset => start_read, 
														 count => read_address); 
	
	mem: Memory port map( data_in => char, 
								 read_enable => reading, 
								 write_enable => save, 
								 address => mem_address, 
								 data_out => mem_out);
	
	decoder: MorseDecoder port map( bit5Rep => mem_out, 
											  bitRepOfMorse => morse);
	
	buzzer: BuzzerInterface port map( data_in => morse, 
												 clk => clk_div, 
												 data_out => p_out, 
												 ready => buzzer_rdy);
							
	-- control the activation of the reading process							
	process(start_read, save)
	begin
		if start_read = '1' then
			reading <= '1';
		elsif save = '1' then
			reading <= '0';
		end if;
	end process;
	
	-- controls which memory address to use depending on
	-- whether a reading process is taking place or not
	process(write_address, read_address)
	begin
		if reading = '1' then
			mem_address <= read_address;
		else 
			mem_address <= write_address;
		end if;
	end process;
	
	-- to display the read memory address with FPGA LEDs
	mem_out_add <= read_address;

end Behavioral;























