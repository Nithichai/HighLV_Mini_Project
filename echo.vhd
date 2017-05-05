library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity echo is
	port(
		clk_i    : in std_logic;
		rst_i    : in std_logic;
		echo_in  : in std_logic;
		data_out : out std_logic_vector(7 downto 0)
	);
end echo;

architecture behave of echo is	
	type state_type is(
		WAIT_ECHO,
		COUNTER_TIME
	);
	signal state : state_type := WAIT_ECHO;
	constant number_count : integer := 5000;
	signal counter_number : integer range 0 to 5001 := 0;
	signal counter_pulse  : integer range 0 to 300  := 0;
begin	
	process(clk_i)
	begin
		if rising_edge(clk_i) then
			if rst_i = '0' then
				state <= WAIT_ECHO;
				data_out <= "00000000";
			else
				case state is
					when WAIT_ECHO =>
						if echo_in = '1' then
							state <= COUNTER_TIME;
							counter_pulse <= 0;
						end if;
					when COUNTER_TIME =>
					   if echo_in = '1' then
							if counter_number < number_count then
								counter_number <= counter_number + 1;
							else	
								counter_pulse <= counter_pulse + 1;
								counter_number <= 0;
							end if;
						elsif echo_in = '0' then
							state <= WAIT_ECHO;
							if counter_pulse > 256 then
								data_out <= "00000000";
							else
								data_out <= std_logic_vector(to_unsigned(counter_pulse, 8));
							end if;
						end if;
				end case;
			end if;
		end if;
	end process;
end behave;
					
			
	