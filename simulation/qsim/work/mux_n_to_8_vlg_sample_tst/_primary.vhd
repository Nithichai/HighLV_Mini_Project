library verilog;
use verilog.vl_types.all;
entity mux_n_to_8_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        data_all        : in     vl_logic_vector(15 downto 0);
        req_trigger     : in     vl_logic;
        rst             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end mux_n_to_8_vlg_sample_tst;
