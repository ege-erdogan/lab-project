--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:07:09 05/15/2019
-- Design Name:   
-- Module Name:   G:/My Drive/ELEC/project/LabProject/ProjTest.vhd
-- Project Name:  LabProject
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: LabProject
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
 
ENTITY ProjTest IS
END ProjTest;
 
ARCHITECTURE behavior OF ProjTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT LabProject
    PORT(
         char : IN  std_logic_vector(4 downto 0);
         save : IN  std_logic;
         start_read : IN  std_logic;
         clk : IN  std_logic;
         p_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal char : std_logic_vector(4 downto 0) := (others => '0');
   signal save : std_logic := '0';
   signal start_read : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal p_out : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: LabProject PORT MAP (
          char => char,
          save => save,
          start_read => start_read,
          clk => clk,
          p_out => p_out
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
      char <= "00001";
		wait for 5 ns;
		save <= '1';
		wait for 15 ns;
		save <= '0';
		wait for 15 ns;
		
		start_read <= '1';
		wait for 15 ns;
		start_read <= '0';

      -- insert stimulus here 

      wait;
   end process;

END;
