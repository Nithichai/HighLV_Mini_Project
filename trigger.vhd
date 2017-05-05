library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity trigger is
	port(
		clk_i   : in std_logic;
		rst_i   : in std_logic;
		req_in  : in std_logic;
		data_in : in std_logic_vector(7 downto 0);
		req_out : out std_logic;
		trigger_out : out std_logic
	);
end trigger;

architecture behave of trigger is
	type state_type is(
		WAIT_DATA,
		CHECK_DATA,
		GEN_TRIGGER,
		DELAY_TRIGGER
	);
	signal state : state_type := WAIT_DATA;
	constant number_gen : integer := 500;
	constant number_delay : integer := 5e7; 
	signal counter_number : integer range 0 to 501 := 0;
	signal counter_delay  : integer range 0 to 5e8 := 0;
begin
	process(clk_i)
	begin
		if rising_edge(clk_i) then
			if rst_i = '0' then
				state <= WAIT_DATA;
				trigger_out <= '0';
				req_out <= '0';
			else
				case state is
					when WAIT_DATA =>
						if req_in = '1' then
							state <= CHECK_DATA;
						end if;
					when CHECK_DATA =>
						if data_in = "01000001" then
							state <= GEN_TRIGGER;
						end if;
					when GEN_TRIGGER =>
						if counter_number < number_gen then
							trigger_out <= '1';
							counter_number <= counter_number + 1;
						else
							trigger_out <= '0';
							counter_number <= 0;
							state <= DELAY_TRIGGER;
							req_out <= '1';
						end if;
					when DELAY_TRIGGER =>
						if counter_delay < number_delay then
							counter_delay <= counter_delay + 1;
						else
							counter_delay <= 0;
							state <= GEN_TRIGGER;
							req_out <= '0';
						end if;
				end case;
			end if;
		end if;
	end process;
end behave;
					
	