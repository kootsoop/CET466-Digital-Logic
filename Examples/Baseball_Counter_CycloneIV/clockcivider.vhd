LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

entity clockdivider is
port(
	clk : in STD_LOGIC;
	newclk : out STD_LOGIC
);
end entity;

architecture clockdivider_arch of clockdivider is
Signal count : STD_LOGIC_VECTOR(25 downto 0);
Signal divclk : STD_LOGIC := '0';
begin 
process (clk)
	begin
		if (clk'event and clk='0') 
			then
				if (count = 50000)
					then count <= "00000000000000000000000000";
					else count <= count + "1";
				end if; 
			if (count = 49999) 
				then divclk <= not divclk;
				else divclk <= divclk;
			end if;
			newclk <= divclk;
		end if;
end process;
end architecture; 