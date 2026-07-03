module top_module( 
    input [7:0] in,
    output [7:0] out
);
    wire out7 = in[0];
    wire out6 = in[1];
    wire out5 = in[2];
    wire out4 = in[3];
    wire out3 = in[4];
    wire out2 = in[5];
    wire out1 = in[6];
    wire out0 = in[7];
    
    assign out[7:0] = {out7, out6, out5, out4, out3, out2, out1, out0};

endmodule