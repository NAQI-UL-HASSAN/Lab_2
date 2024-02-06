module Lab_2(
 input logic a,
 input logic b,
 input logic c,
 output logic x,
 output logic y
 );
 logic l;
 logic m;
 logic n;
 logic p;
 not(l,c);
 or(m,a,b);
 nand(n,a,b);
 xor(p,n,m);
 xor(x,l,m);
 xor(y,m,p);
 
 endmodule