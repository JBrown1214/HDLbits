module Mux4to1_1bitData(
    input [1:0] sel, 
    input data0,     
    input data1, 
    input data2, 
    input data3, 
    output dataOUT_1bit
);
assign dataOUT_1bit = (data0&&(~sel[1])&&(~sel[0])) | (data1&&(~sel[1])&&(sel[0])) | (data2&&(sel[1])&&(~sel[0])) | (data3&&(sel[1])&&(sel[0]));

endmodule


module Mux4to1_8bitData (
    input [1:0] sel, 
    input [7:0] data0,
    input [7:0] data1,
    input [7:0] data2,
    input [7:0] data3,
    output [7:0] dataOUT
);
    Mux4to1_1bitData(sel[1:0], data0[0], data1[0], data2[0], data3[0], dataOUT[0]);
    Mux4to1_1bitData(sel[1:0], data0[1], data1[1], data2[1], data3[1], dataOUT[1]);
    Mux4to1_1bitData(sel[1:0], data0[2], data1[2], data2[2], data3[2], dataOUT[2]);
    Mux4to1_1bitData(sel[1:0], data0[3], data1[3], data2[3], data3[3], dataOUT[3]);
    Mux4to1_1bitData(sel[1:0], data0[4], data1[4], data2[4], data3[4], dataOUT[4]);
    Mux4to1_1bitData(sel[1:0], data0[5], data1[5], data2[5], data3[5], dataOUT[5]);
    Mux4to1_1bitData(sel[1:0], data0[6], data1[6], data2[6], data3[6], dataOUT[6]);
    Mux4to1_1bitData(sel[1:0], data0[7], data1[7], data2[7], data3[7], dataOUT[7]);

endmodule


module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);

    wire [7:0] q1;
    wire [7:0] q2;
    wire [7:0] q3;

    my_dff8(clk, d[7:0], q1[7:0]);
    my_dff8(clk, q1[7:0], q2[7:0]);
    my_dff8(clk, q2[7:0], q3[7:0]);

    Mux4to1_8bitData(sel[1:0], d[7:0], q1[7:0], q2[7:0], q3[7:0], q[7:0]);

endmodule
