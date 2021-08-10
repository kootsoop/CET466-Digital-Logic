-- Copyright (C) 1991-2014 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "11/17/2018 15:41:32"
                                                            
-- Vhdl Test Bench template for design  :  Baseball_Counter
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Baseball_Counter_vhd_tst IS
END Baseball_Counter_vhd_tst;
ARCHITECTURE Baseball_Counter_arch OF Baseball_Counter_vhd_tst IS
-- constants                                                 
-- signals 
                                                
SIGNAL Ball : STD_LOGIC := '1'; -- initialize HIGH
SIGNAL Ball_Count : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL Clear : STD_LOGIC := '1';
SIGNAL Strike : STD_LOGIC := '1';
SIGNAL Strike_Count : STD_LOGIC_VECTOR(1 DOWNTO 0);

COMPONENT Baseball_Counter
	PORT (
	Ball : IN STD_LOGIC;
	Ball_Count : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	Clear : IN STD_LOGIC;
	Strike : IN STD_LOGIC;
	Strike_Count : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;

BEGIN
	i1 : Baseball_Counter
	PORT MAP (
-- list connections between master ports and signals
	Ball => Ball,
	Ball_Count => Ball_Count,
	Clear => Clear,
	Strike => Strike,
	Strike_Count => Strike_Count
	);
init : PROCESS                                               
-- variable declarations 

                                  
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS  --(Strike, Ball, Clear, strike_count, ball_count)         -- *WRITE OUR TESTING CODE HERE*                                   
-- optional sensitivity list                                  
-- (        )   

-- variable declarations
variable s : integer := 0;

variable b : integer := 0;   
                                    
BEGIN                                                         
        -- code executes for every event on sensitivity list
        
-- Strike_Count rollover test
		  while (s < 3) loop
				s := s + 1;
				wait for 1000 ns;	
				Strike <= '0'; -- toggle Strike to LOW (button press)
				wait for 1000 ns;
				Strike <= '1';	-- toggle Strike back to HIGH (button released)
				wait for 10 ns;
				if (s = 3) then	-- after 3 Strike button presses, the counter should be zero
					 assert (strike_count = "00") report "Strike Counter did NOT roll over!" severity error;
					 report " Strike Count rollover test finished" severity note;
			   end if;				
			end loop;
			s := 0; -- reset s counter
			wait for 3000 ns; -- wait for a period of time to leave a gap in the waveform between tests
		  
-- Ball_Count rollover test
		  while (b < 4) loop
				b := b + 1;
				wait for 1000 ns;	
				Ball <= '0';
				wait for 1000 ns;
				Ball <= '1';
				wait for 10 ns;
				if (b = 4) then
					 assert (ball_count = "000") report "Ball Counter did NOT roll over!" severity error;
					 report " Ball Count rollover test finished" severity note;
			   end if;				
			end loop;
			-- reset b counter
			b := 0;
		  wait for 3000 ns; -- wait for a period of time to leave a gap in the waveform between tests

--Clear button test
			--load one strike button presses
			Strike <= not Strike;
			wait for 500 ns;
			Strike <= not Strike;
			wait for 500 ns;
			-- load two Ball button presses
			while (b < 2) loop
				b := b + 1;
				Ball <= '0';
				wait for 500 ns;
				Ball <= '1';
				wait for 500 ns;
			end loop;
			--reset b counter
			b := 0;
			wait for 500 ns;
			Clear <= '0';
			wait for 500 ns;
			Clear <= '1';
			wait for 10 ns;
			assert (ball_count = "000") report "Ball Counter did not reset when Clear button was pressed!" severity error;
			assert (strike_count = "00") report "Strike Counter did not reset when Clear button was pressed!" severity error;
			report "Clear button test finished" severity note;
			wait for 3000 ns;	-- create a delay before the next test
			
-- Ball_count reset on Strike_count rollover test
		  -- make sure ball_count resets to "000" when strike_count hits "11" then rolls over to "00"
		  -- load two Ball button presses
			while (b < 2) loop
				b := b + 1;
				Ball <= '0';
				wait for 500 ns;
				Ball <= '1';
				wait for 500 ns;
			end loop;
        --reset b counter
			b := 0;
			-- test for ball_counter reset on Strike_counter rollover
			while (s < 3) loop
				s := s + 1;
				Strike <= '0'; --toggle Strike to LOW
				wait for 1000 ns;	
				if (strike_count = "00") then
					 assert (ball_count = "000") report "Ball Counter did not reset when Strike Counter rolled over!" severity error;
			   end if;
				Strike <= '1'; -- toggle Strike back to HIGH
				wait for 1000 ns;
			end loop;
				report "Ball_count reset on Strike_count rollover test finished" severity note;
			-- reset s counter
			s := 0;
			wait for 3000 ns; -- wait for a period of time to leave a gap in the waveform between tests
			
			
-- Strike_Count reset on Ball_Count rollover test
			-- load a Strike button press
			strike <= '0';
			wait for 500 ns;
			strike <= '1';
			wait for 500 ns;
			-- input ball button presses and check if rollover of ball_count clears strike_count
			while (b < 5) loop
				b := b + 1;
				Ball <= '0';
				wait for 1000 ns;
				if (ball_count = "000") then
					 assert (Strike_count = "00") report "Strike Counter did not reset when Ball Counter rolled over!" severity error;
			   end if;
				Ball <= '1';
				wait for 1000 ns;	
			end loop;
			report "Ball_count reset on Strike_count rollover test finished" severity note;
		
			
WAIT;                                                        
END PROCESS always;                     
END Baseball_Counter_arch;
