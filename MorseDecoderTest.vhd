--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:01:43 05/14/2019
-- Design Name:   
-- Module Name:   G:/My Drive/ELEC/project/LabProject/MorseDecoderTest.vhd
-- Project Name:  LabProject
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MorseDecoder
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
 
ENTITY MorseDecoderTest IS
END MorseDecoderTest;
 
ARCHITECTURE behavior OF MorseDecoderTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MorseDecoder
    PORT(
         bit5Rep : IN  std_logic_vector(4 downto 0);
         bitRepOfMorse : OUT  std_logic_vector(13 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal bit5Rep : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal bitRepOfMorse : std_logic_vector(13 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MorseDecoder PORT MAP (
          bit5Rep => bit5Rep,
          bitRepOfMorse => bitRepOfMorse
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.	

      
		wait for 10ns;
		bit5Rep <= "00001"; --A

		wait for 10ns;
		bit5Rep <= "00011"; -- C
		
		wait for 10ns;
		bit5Rep <= "10000"; --P
		
		wait for 10ns;
		bit5Rep <= "10111"; --W
		
		wait for 10ns;
		bit5Rep <= "01111"; --O

      -- insert stimulus here 

      wait;
   end process;

END;
