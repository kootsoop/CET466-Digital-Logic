library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity Baseball_Counter is
				port (
						signal Strike, Ball, Clear : in std_logic;
                  signal Strike_Count : out std_logic_vector(1 downto 0);
						signal Ball_Count : out std_logic_vector(2 downto 0)
						);
end entity Baseball_Counter;

architecture Baseball_Counter_arch of Baseball_Counter is

begin -- begin architecture

process (Strike, Ball, Clear)
		variable num_strikes : integer := 0; -- integer to keep track of the number of strikes present
		variable num_balls : integer := 0; -- integer to keep track of the number of balls present
begin -- begin process

		if falling_edge(Strike) then
			num_strikes := num_strikes + 1;
		end if;
		
		if falling_edge(Ball) then --if the Ball button has been pressed, increment the internal num_balls counter
			num_balls := num_balls + 1;
		end if;
			
		-- Clears the LEDs if strike is max or if ball is max or if clear is pressed
		if ((num_strikes = 3) or (num_balls = 4) or ((Clear = '0'))) then --also try falling_edge CLEAR
			Strike_Count <= "00";
			Ball_Count <= "000";
			num_strikes := 0;
			num_balls := 0;
		end if;
		
		-- strike count output logic - converts the integer value to a binary value for illuminating the LEDs
		if num_strikes = 2 then
			Strike_Count <= "11";
		elsif num_strikes = 1 then
			Strike_Count <= "01";
		else 
			Strike_Count <= "00";
		end if;
		
		-- ball count output logic - converts the integer value to a binary value for illuminating the LEDs
		if num_balls = 3 then
			Ball_Count <= "111";
		elsif num_balls = 2 then
			Ball_Count <= "011";
		elsif num_balls = 1 then
			Ball_Count <= "001";
		else 
			Ball_Count <= "000";
		end if;
end process;

end architecture Baseball_Counter_arch;