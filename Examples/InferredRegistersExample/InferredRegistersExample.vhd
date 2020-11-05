-- 
-- Warning (10631): VHDL Process Statement warning : inferring latch(es) for 
--                  signal or variable "output", which holds its previous value 
--                  in one or more paths through the process
-- 
LIBRARY ieee;

USE ieee.std_logic_1164.all;

entity InferredRegistersExample is
	port(
		clock : in std_logic;
		input : in std_logic;
		output : out std_logic
	);
end entity InferredRegistersExample;

architecture InferredRegistersExample_Arch of InferredRegistersExample is
begin

	process(clock)
	begin
		if (input = '1') then
			output <= '0';
		end if;
	end process;

end architecture InferredRegistersExample_Arch;