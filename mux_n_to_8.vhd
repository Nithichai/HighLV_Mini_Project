library ieee;														
use ieee.std_logic_1164.all;									
	
entity mux_n_to_8 is												
	generic (number_ultrasonic : integer := 3);
	port (
			clk         : in std_logic;
			rst         : in std_logic;
			data_all   	: in std_logic_vector((8 * number_ultrasonic) - 1 downto 0);									
			req_trigger : in std_logic;
			req_out     : out std_logic;
			data_out    : out std_logic_vector(7 downto 0) := ("01100001")
	);		
end mux_n_to_8;

architecture behave of mux_n_to_8 is	
	type state_type is (
		WAIT_REQ,
		CHECK_NUMBER,
		SEND_DATA,
		DELAY
	);
	signal state : state_type := WAIT_REQ;
	constant number_ultra : integer := number_ultrasonic;
	signal counter_number : integer range 0 to 100 := 0;
	constant number_delay : integer := 5e5;
	signal counter_delay  : integer range 0 to 5e6 := 0;
	begin
		process(clk)
			begin
				if rising_edge(clk) then
					if rst = '0' then
						state <= WAIT_REQ;
						data_out <= (others => '0');
						req_out <= '0';
					else
						case state is
							when WAIT_REQ =>
								if req_trigger = '1' then
									state <= CHECK_NUMBER;
								end if;
							when CHECK_NUMBER =>
								if counter_number < number_ultra then
									req_out <= '1';
									state <= SEND_DATA;
								else
									counter_number <= 0;
									req_out <= '0';
									state <= WAIT_REQ;
								end if;
							when SEND_DATA =>
								data_out <= data_all(((counter_number + 1) * 8) - 1 downto 0 + (counter_number * 8));
								counter_number <= counter_number + 1;
								state <= DELAY;
							when DELAY =>
								req_out <= '0';
								if counter_delay < number_delay then
									counter_delay <= counter_delay + 1;
								else
									counter_delay <= 0;
									state <= CHECK_NUMBER;
								end if;
						end case;
				   end if;
				end if;
		end process;
end behave;
						