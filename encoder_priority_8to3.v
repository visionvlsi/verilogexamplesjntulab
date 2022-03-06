// Data flow  modeling 
`timescale 1ns/1ps
module prio_enco_8x3(d_out, d_in);

   output [2:0] d_out;
   input [7:0] d_in ;

assign d_out = (d_in[7] ==1'b1 ) ? 3'b111:
               (d_in[6] ==1'b1 ) ? 3'b110:
               (d_in[5] ==1'b1 ) ? 3'b101:
               (d_in[4] ==1'b1) ? 3'b100:
               (d_in[3] ==1'b1) ? 3'b011:
               (d_in[2] ==1'b1) ? 3'b010:
               (d_in[1] ==1'b1) ? 3'b001:
               (d_in[0] ==1'b1) ? 3'b000: 3'bxxx;

endmodule

// testbench

`timescale 1ns/1ps
module prio_enco_8x3_tst;
   reg [7:0] d_in;
   wire[2:0] d_out;

   prio_enco_8x3 u1 (.d_out(d_out), .d_in(d_in) );

   initial
     begin
    d_in=8'b11001100;
    #10;
    d_in=8'b01100110;
    #10;
    d_in=8'b00110011; 
    #10;
    d_in=8'b00010010;
    #10;
    d_in=8'b00001001;
    #10;
    d_in=8'b00000100;
    #10;
    d_in=8'b00000011;
    #10;
    d_in=8'b00000001;
    #10;
    d_in=8'b00000000;
    # 10; 
    $stop;
     end // initial begin
 endmodule
