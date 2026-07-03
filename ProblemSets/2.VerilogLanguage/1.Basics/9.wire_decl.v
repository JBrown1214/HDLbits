`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
    
    wire aAndB = (a&b);
    wire cAndD = (c&d);
    assign out = (aAndB)|(cAndD);
    assign out_n = !out;
endmodule
