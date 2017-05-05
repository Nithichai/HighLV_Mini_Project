library verilog;
use verilog.vl_types.all;
entity mux_n_to_8_vlg_check_tst is
    port(
        data_out        : in     vl_logic_vector(7 downto 0);
        req_out         : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end mux_n_to_8_vlg_check_tst;
