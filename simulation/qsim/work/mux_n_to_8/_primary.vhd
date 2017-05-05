library verilog;
use verilog.vl_types.all;
entity mux_n_to_8 is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        data_all        : in     vl_logic_vector(15 downto 0);
        req_trigger     : in     vl_logic;
        req_out         : out    vl_logic;
        data_out        : out    vl_logic_vector(7 downto 0)
    );
end mux_n_to_8;
