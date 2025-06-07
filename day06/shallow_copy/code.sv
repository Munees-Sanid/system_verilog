class A;
int a;
endclass

class B;
int b;
A h_a;
function new();
h_a=new();
endfunction 
endclass

class C;
int c;
B h_b;
function new();
h_b=new();
endfunction 
endclass


module tb;
C h_c1, h_c2;  // declaring the handle for class c
initial begin
h_c1=new();    // creating the memory for handle
h_c1.c=70;
h_c1.h_b.b=50;
h_c1.h_b.h_a.a=100;

h_c2 = new h_c1;

h_c1.c=700;
h_c1.h_b.b=500;
h_c1.h_b.h_a.a=1000;

$display("h_c2 copied using shallow copy");
$display("a = %0d b = %0d c = %0d",h_c2.c,h_c2.h_b.b,h_c2.h_b.h_a.a);

$display(" original ");
$display("a = %0d b = %0d c = %0d",h_c1.c,h_c1.h_b.b,h_c1.h_b.h_a.a);

end
endmodule


