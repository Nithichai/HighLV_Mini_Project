library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity ultrasonic is
	generic (number_ultrasonic : integer := 3);
	port (
		clk     : in std_logic;
		rst	  : in std_logic;
		rx_in   : in std_logic;
		echo_in: in std_logic_vector(number_ultrasonic - 1 downto 0);
		ack_o   : out std_logic;
	   tx_out  : out std_logic;
		trigger_out : out std_logic;
		LCD_E  : OUT STD_LOGIC;
		LCD_RS : OUT STD_LOGIC;
		LCD_RW : OUT STD_LOGIC;
		LCD_DB : OUT STD_LOGIC_VECTOR(7 DOWNTO 4)
	);
end ultrasonic;

architecture behave of ultrasonic is
	component echo
		port(
			clk_i    : in std_logic;
			rst_i    : in std_logic;
			echo_in  : in std_logic;
			data_out : out std_logic_vector(7 downto 0)
		);
	end component;
--	component ram
--		port (
--			clk      : in std_logic;
--			rst      : in std_logic;
--			req_in   : in std_logic;
--			data_in  : in std_logic_vector(7 downto 0);		
--			req_out  : out std_logic;
--			data_out : out std_logic_vector(7 downto 0)
--	   );
--	end component;
	component mux_n_to_8
		port (
			clk         : in std_logic;
			rst         : in std_logic;
			data_all   	: in std_logic_vector((8 * number_ultrasonic) - 1 downto 0);							
			req_trigger : in std_logic;
			req_out     : out std_logic;
			data_out    : out std_logic_vector(7 downto 0)
	   );	
	end component;
	component trigger
		port(
			clk_i   : in std_logic;
			rst_i   : in std_logic;
			req_in  : in std_logic;
			data_in : in std_logic_vector(7 downto 0);
			req_out : out std_logic;
			trigger_out : out std_logic
		);
	end component;
	component tx
		port(
			clk_i  : in  std_logic;
			rst_i  : in  std_logic;
			req_i  : in  std_logic;
			ack_o  : out std_logic;
			data_i : in  std_logic_vector(7 downto 0);
			tx     : out std_logic 
		); 
	end component;	
	component rx
		port(
			clk_i  : in std_logic;
			rst_i  : in std_logic;
			req_o  : out std_logic; 
			data_o : out std_logic_vector(7 downto 0);
			rx     : in std_logic
		);
	end component;
	
	COMPONENT LCD IS
		GENERIC(
			ULTRA_NUMBER : INTEGER := 3;
			CLK_PERIOD_NS : POSITIVE := 20
		);
		PORT(
			CLK : IN STD_LOGIC;
			RST : IN STD_LOGIC;
			COUNT_IN : IN STD_LOGIC_VECTOR(ULTRA_NUMBER * 8 - 1 DOWNTO 0);
			LCD_E  : OUT STD_LOGIC;
			LCD_RS : OUT STD_LOGIC;
			LCD_RW : OUT STD_LOGIC;
			LCD_DB : OUT STD_LOGIC_VECTOR(7 DOWNTO 4)
		);
	END COMPONENT LCD;
	
	signal req_in, req_trigger, req_out, req_ram : std_logic := '0';
	signal data_in, data_echo : std_logic_vector(7 downto 0);
	signal full_data : std_logic_vector((number_ultrasonic * 8) - 1 downto 0);
	
	subtype byte is std_logic_vector(7 downto 0);
	type mem is array(0 to number_ultrasonic) of byte;
	signal data_out : mem;
Begin
	GET_TX : rx port map(clk, rst, req_in, data_in, rx_in);
	GEN_TRIGGER : trigger port map(clk, rst, req_in, data_in, req_trigger, trigger_out);
	
	SEND_DATA: for i in 0 to number_ultrasonic - 1 generate
	SEND_DATA: echo port map(clk, rst, echo_in(i), data_out(i));
	full_data(((i + 1) * 8) - 1 downto (i * 8) + 0) <= data_out(i);
   end generate;
	
	GET_DATA: mux_n_to_8 port map(clk, rst, full_data, req_trigger, req_out, data_echo);
--	SEND_RAM: ram port map(clk ,rst, req_out, data_echo, req_ram, tx_out);
	SEND_RX : tx port map(clk, rst, req_out, ack_o, data_echo, tx_out);
	LCD_BOX : LCD PORT MAP(clk, rst, full_data, LCD_E, LCD_RS, LCD_RW, LCD_DB);
end behave;