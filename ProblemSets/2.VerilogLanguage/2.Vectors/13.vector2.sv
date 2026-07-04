module top_module( 
    input [31:0] in,
    output [31:0] out );//

    // assign out[31:24] = ...;
    wire [7:0] InLL = in[31:24];
    wire [7:0] InL = in[23:16];
    wire [7:0] InR = in[15:8];
    wire [7:0] InRR = in[7:0];
    
    assign out[31:24] = InRR;
    assign out[23:16] = InR;
    assign out[15:8] = InL;
    assign out[7:0] = InLL;

endmodule
