 module Lab_2_tb();
 logic a1, 
 logic b1, 
 logic c1, 
 logic x1, 
 logic y1;
 Lab_2  DUT(
 .a(a1),
 .b(b1),
 .c(c1),
 .x(x1),
 .y(y1)
 );
 initial 
 begin
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
 #70;
 a1 = 1; b1 = 1; c1 = 1;
 #80;
 $stop;
 end
 initial
 begin
 /*the following system task will print out the signal values
 every time they change on the Transcript Window */
 $monitor("Time=%0t: y=%b, x=%b, a=%b, b=%b, c=%b", $time, y1,x1,a1,b1,c1);
 end
 endmodule