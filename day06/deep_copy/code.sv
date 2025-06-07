class A;
int a;

	function A copy();
		copy=new();
		copy.a = this.a;
		return copy;
	endfunction

endclass

class B;
int b;
A h_a;

function new();
h_a = new();
endfunction 
	function B copy();
		copy=new();
		copy.b = this.b;
		copy.h_a = h_a.copy();
		return copy;
	endfunction 

endclass

class C;
int c;
B h_b;
function new();
h_b = new();
endfunction 
	
	function C copy();
		copy = new();
		copy.c = this.c;
		copy.h_b = h_b.copy();
		copy.h_b.h_a = h_b.h_a.copy();
		return copy;
	endfunction 
	
endclass




module tb;
C h_c1, h_c2;  // declaring the handle for class c
initial begin
h_c1=new();    // creating the memory for handle
h_c1.c=70;
h_c1.h_b.b=50;
h_c1.h_b.h_a.a=100;

h_c2 = h_c1.copy();

h_c1.c=700;
h_c1.h_b.b=500;
h_c1.h_b.h_a.a=1000;

$display("h_c2 copied using deep copy");
$display("a = %0d b = %0d c = %0d",h_c2.c,h_c2.h_b.b,h_c2.h_b.h_a.a);

$display(" original ");
$display("a = %0d b = %0d c = %0d",h_c1.c,h_c1.h_b.b,h_c1.h_b.h_a.a);

end
endmodule


