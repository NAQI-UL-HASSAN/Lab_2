module Lab_2(
 input logic a,
 input logic b,
 input logic c,
 output logic x,
 output logic y
 );
 always_comb begin
 x = (~c) ^ (a + b);
 y = (a + b) & ((~(a & b)) ^ (a + b));
 end
 endmodule