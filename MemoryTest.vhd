--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:51:18 05/14/2019
-- Design Name:   
-- Module Name:   G:/My Drive/ELEC/project/LabProject/MemoryTest.vhd
-- Project Name:  LabProject
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Memory
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
 
ENTITY MemoryTest IS
END MemoryTest;
 
ARCHITECTURE behavior OF MemoryTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Memory
    PORT(
         data_in : IN  std_logic_vector(4 downto 0);
         read_enable : IN  std_logic;
         write_enable : IN  std_logic;
         address : IN  std_logic_vector(5 downto 0);
         data_out : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal data_in : std_logic_vector(4 downto 0) := (others => '0');
   signal read_enable : std_logic := '0';
   signal write_enable : std_logic := '0';
   signal address : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal data_out : std_logic_vector(4 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Memory PORT MAP (
          data_in => data_in,
          read_enable => read_enable,
          write_enable => write_enable,
          address => address,
          data_out => data_out
        );

   -- Clock process definitions

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		address <= "000000"; write_enable <= '1'; data_in <= "00000";
		wait for 10 ns;
		address <= "000001"; write_enable <= '1'; data_in <= "00001";
		wait for 10 ns;
		address <= "000010"; write_enable <= '1'; data_in <= "00010";
		wait for 10 ns;
		
		write_enable <= '0';
		address <= "000001"; read_enable <= '1';
		wait for 10 ns;
		address <= "000010";

      -- insert stimulus here 

      wait;
   end process;

END;
