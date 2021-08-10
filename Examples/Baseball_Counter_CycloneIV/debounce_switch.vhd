LIBRARY ieee;

USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;

entity debounce_switch is
	port(clock : in std_logic;
		input : in std_logic;
		output : out std_logic);
end entity debounce_switch;


architecture debounce_switch_arch of debounce_switch is
constant DEBOUNCE_COUNT : integer := 5000000;
signal count : integer := 0;
signal state : std_logic := '1';
begin

	process (clock)
	begin
		if (clock'event and clock = '1') then
			if (state /= input and count < DEBOUNCE_COUNT and input /= input'last_value) then 
				count <= count + 1;
			elsif (count = DEBOUNCE_COUNT) then
				count <= 0;
				state <= input;
			else
				count <= 0;
			end if;
		end if;
	end process;
	
	output <= state;
	
end architecture debounce_switch_arch;