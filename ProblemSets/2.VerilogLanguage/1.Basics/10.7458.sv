module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
    
    wire TopRight = (p1a&p1b&p1c);
    wire BottomRight = (p1f&p1e&p1d);
    wire TopLeft = p2a&p2b;
    wire BottomLeft = p2c&p2d;
    
	assign p1y = TopRight|BottomRight;
    assign p2y = BottomLeft|TopLeft;
endmodule
