library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity ram is
	generic(
		number_ultrasonic : integer := 2);
	port (
		clk      : in std_logic;
		rst      : in std_logic;
		req_in   : in std_logic;
		data_in  : in std_logic_vector(7 downto 0);		
		req_out  : out std_logic;
		data_out : out std_logic_vector(7 downto 0)
	);
end ram;

architecture behave of ram is
	type state_type is (
		WAIT_START,
		WRITE_RAM,
		READ_RAM
	);
	signal state : state_type := WAIT_START;
	
	subtype byte is std_logic_vector(7 downto 0);
	type mem is array(0 to number_ultrasonic) of byte;
	signal ramnx8 : mem;
	
	signal index : integer range 0 to number_ultrasonic - 1 := 0;
	
	begin
		process(clk)
			begin
				if rst = '0' then
				   state <= WAIT_START;
					data_out <= (others => '0');
					req_out  <= '0';
					index <= 0;
				elsif rising_edge(clk) then
					case state is
						when WAIT_START =>
							if req_in = '1' then
								state <= WRITE_RAM;
							end if;
						when WRITE_RAM =>
							for i in 0 to number_ultrasonic - 1 loop
								ramnx8(i) <= data_in;
							end loop;
							state <= READ_RAM;
						when READ_RAM =>
							data_out <= ramnx8(number_ultrasonic - 1);
							state <= WAIT_START;
					end case;
				end if;
		end process;
end behave;