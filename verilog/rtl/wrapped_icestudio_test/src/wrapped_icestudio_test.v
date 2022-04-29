`default_nettype none

module wrapped_icestudio_test (
`ifdef USE_POWER_PINS
    inout vccd1,
    inout vssd1,
`endif

    input wire [7:0] io_in,
    inout wire [7:0] io_out,
    input wire active,
    input wire wb_clk_i
    );

    wire [7:0] buf_io_out;
    assign io_out = active ? buf_io_out : 8'bz; 

 icestudio_test icestudio_test(
    .ve6d5a4(io_in[0]), 
    .v09bfd5(io_in[1]), 
    .v364b64(buf_io_out[0])
    );

endmodule
