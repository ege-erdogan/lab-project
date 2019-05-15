--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:14:29 05/15/2019
-- Design Name:   
-- Module Name:   G:/My Drive/ELEC/project/LabProject/BuzzerTest.vhd
-- Project Name:  LabProject
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: BuzzerInterface
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY BuzzerTest IS
END BuzzerTest;
 
ARCHITECTURE behavior OF BuzzerTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT BuzzerInterface
    PORT(
         data_in : IN  std_logic_vector(13 downto 0);
         clk : IN  std_logic;
			reg_out: out std_logic_vector(13 downto 0);
         data_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal data_in : std_logic_vector(13 downto 0) := (others => '0');
   signal clk : std_logic := '0';

 	--Outputs
   signal data_out : std_logic;
	signal reg_out : std_logic_vector(13 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: BuzzerInterface PORT MAP (
          data_in => data_in,
          clk => clk,
          data_out => data_out,
			 reg_out => reg_out
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		data_in <= "10101011100111";
      wait for clk_period*5;
		data_in <= "00000000000000";

      -- insert stimulus here 

      wait;
   end process;

END;
