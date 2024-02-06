module full_adder_tb();
 logic a1;
 logic b1;
 logic c1;
 logic sum1;
 full_adder DUT(
 .a(a1),
 .b(b1),
 .c(c1),
 .sum(sum1),
 .carry(carry1)
 );
 initial
 begin
 // Provide different combinations of the inputs to check validity of code
 a1 = 0; b1 = 0; c1 = 0;
 #10;
 a1 = 0; b1 = 0; c1 = 1;
 #20;
 a1 = 0; b1 = 1; c1 = 0;
 #30;
 a1 = 0; b1 = 1; c1 = 1;
 #40;
 a1 = 1; b1 = 0; c1 = 0;
 #50;
 a1 = 1; b1 = 0; c1 = 1;
 #60;
 a1 = 1; b1 = 1; c1 = 0;
 #70
 a1 = 1; b1 = 1; c1 = 1;
 #80;
 $stop;
 end
 endmodule