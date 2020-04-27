// 3:1 mux    
// CSE140L	  Fall 2018
module mux3 #(parameter WIDTH = 8)
             (input  [WIDTH-1:0] d0, d1, d2,   // data in
              input  [1:0]       s, 		   // control in
              output [WIDTH-1:0] y);		   // data out

// fill in guts
//  s1   s0    y
//  0     0   d0
//  0     1	  d1
//  1     0   d2
//  1     1	  d2
  logic [WIDTH-1:0] out;
  always_comb
	  case( s )
	    2'b00: 			out = d0;
		 2'b01: 			out = d1;
	    2'b10: 			out = d2;
	    2'b11: 			out = d2;
	  endcase
	  
	assign y = out;
  
endmodule


