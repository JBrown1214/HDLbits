module top_module (
    input a, b, c, d, e,
    output [24:0] out );//
	
    wire vec1[24:0] = {{5{~a}}, {5{~b}}, {5{~c}}, {5{~d}}, {5{~e}}};
    wire vec2[24:0] = {5{a,b,c,d,e}};
    assign out[24:0] = ~vec1 ^ vec2;
    // The output is XNOR of two vectors created by 
    // concatenating and replicating the five inputs.
    // assign out = ~{ ... } ^ { ... };

endmodule
