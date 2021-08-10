LIBRARY ieee;

USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
entity Display is
port(number: integer;
	ah: out std_logic_vector(0 to 7));
end entity;
Architecture display_arch of Display is
begin
with number select
	ah<=  "11000000" when 0,
			"11111001" when 1,
			"10100100" when 2,
			"10110000" when 3,
			"10011001" when 4,
			"11111111" when others;
end architecture;