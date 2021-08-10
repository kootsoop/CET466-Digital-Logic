LIBRARY ieee;

USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;
entity BaseballCounter is
port(
clock, IBC, ISC, NB: in std_logic;
dig:out std_logic_vector(1 downto 0);
output: out std_logic_vector(7 downto 0);
leds: out std_logic_vector(3 downto 0)
);
end entity;

Architecture BaseballCounter_arch of BaseballCounter is
component clockdivider is
port(
	clk : in STD_LOGIC;
	newclk : out STD_LOGIC
);
end component;
component debounce_switch is
	port(clock : in std_logic;
		input : in std_logic;
		output : out std_logic);
end component;
component Display  
port
(number: in integer;
ah: out std_logic_vector(7 downto 0));
end component;

signal balls: integer := 0;
signal strikes: integer := 0;
signal bout, sout: std_logic_vector(7 downto 0);
signal digsel: std_logic:= '0';
Signal divclock : STD_LOGIC;
signal db_s, db_b : std_logic;
signal reset_s, reset_b : std_logic;
signal flash_b, flash_s : std_logic := '0';
signal doing_flash_b : boolean := false;
signal doing_flash_s : boolean := false;
signal flash_counter : integer := 0;
signal flash_counter_s : integer := 0;
signal leds_output : std_logic_vector(3 downto 0) := "1111";
signal leds_output_s : std_logic_vector(3 downto 0) := "1111";
begin

bdis: Display
port map(
number => balls,
ah => bout
);
sdis: Display
port map(
number => strikes,
ah => sout
);

clkdiv: clockdivider
port map(
clk => clock,
newclk => divclock
);

deboubce_balls : debounce_switch 
port map(clock => clock,
		input => IBC,
		output => db_b);

deboubce_strikes : debounce_switch 
port map(clock => clock,
		input => ISC,
		output => db_s);

display_one_digit: process(divclock, digsel)
begin
	if(divclock'event and divclock = '0') then
		if(digsel = '0') then
			output <= bout;
			dig(0) <= '1';
			dig(1) <= '0';
			digsel <= '1';
		else
			output <= sout;
			dig(1) <= '1';
			dig(0) <= '0';
			digsel <= '0';
		end if;
	end if;
end process display_one_digit;

do_balls: process(divclock)
begin
	if(divclock'event and divclock = '0') then
		reset_b <= '0';
		if (balls > 3) or (nb = '0') or (strikes > 2) then
			reset_b <= '1';
		end if;
	end if;
end process do_balls;

do_strikes: process(divclock) 
begin
	if(divclock'event and divclock = '0') then
		reset_s <= '0';
		if (strikes > 2) or (nb = '0') or (balls > 3) then
			reset_s <= '1';
		end if;
	end if;
end process do_strikes;

increment_strikes: process(db_s)
begin
	if (reset_s = '1') then
		strikes <= 0;
	elsif (db_s = '0' and db_s'event) then
		strikes <= strikes + 1;
	end if;
end process increment_strikes;

increment_balls: process(db_b)
begin
	if (reset_b = '1') then
		balls <= 0;
	elsif (db_b = '0' and db_b'event) then
		balls <= balls + 1;
	end if;
end process increment_balls;


do_flash_ball: process(divclock)
begin
	if(divclock'event and divclock = '0') then
		flash_b <= '0';
		if (balls > 3) then
			flash_b <= '1';
		end if;
	end if;
end process do_flash_ball;

do_flash_strike: process(divclock)
begin
	if(divclock'event and divclock = '0') then
		flash_s <= '0';
		if (strikes > 2) then
			flash_s <= '1';
		end if;
	end if;
end process do_flash_strike;

flash_for_ball: process(divclock)
begin
	if(divclock'event and divclock = '0') then
		if (flash_b = '1') then
			doing_flash_b <= true;
		end if;
		if (doing_flash_b) then 
			flash_counter <= flash_counter + 1;
			if (flash_counter = 100) then
				leds_output <= "0000";		
			elsif (flash_counter = 200) then
				leds_output <= "1111";		
			elsif (flash_counter = 300) then
				leds_output <= "0000";		
			elsif (flash_counter > 400) then
				leds_output <= "1111";
				flash_counter <= 0;
				doing_flash_b <= false;
			end if;	
		end if;
	end if;
end process flash_for_ball;

flash_for_strike: process(divclock)
begin
	if(divclock'event and divclock = '0') then
		if (flash_s = '1') then
			doing_flash_s <= true;
		end if;
		if (doing_flash_s) then 
			flash_counter_s <= flash_counter_s + 1;
			if (flash_counter_s = 100) then
				leds_output_s <= "0000";		
			elsif (flash_counter_s = 200) then
				leds_output_s <= "1111";		
			elsif (flash_counter_s = 300) then
				leds_output_s <= "0000";		
			elsif (flash_counter_s = 400) then
				leds_output_s <= "1111";		
			elsif (flash_counter_s = 500) then
				leds_output_s <= "0000";		
			elsif (flash_counter_s > 600) then
				leds_output_s <= "1111";
				flash_counter_s <= 0;
				doing_flash_s <= false;
			end if;	
		end if;
	end if;
end process flash_for_strike;

	with doing_flash_b select 
		leds <= 
			leds_output when true,
			leds_output_s when false;

end Architecture; 