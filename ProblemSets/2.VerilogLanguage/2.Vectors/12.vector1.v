`default_nettype none     // Disable implicit nets. Reduces some types of bugs.
module top_module( 
    input wire [15:0] in,
    output wire [7:0] out_hi,
    output wire [7:0] out_lo );
	
    wire [7:0]hi = in[15:8]; 	// not necessary middle explicit wires (debugging)
    wire [7:0]lo = in[7:0];
    
    assign out_hi = hi;
    assign out_lo = lo;
endmodule
