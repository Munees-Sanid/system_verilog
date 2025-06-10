class parent;
rand int a;
constraint c1 {a>100; a<200;};// between 101 to 199
endclass

class child extends parent;
constraint c2{ a>150; a<=190;}; // between 151 to 190 
endclass

module tb;
child c; // declaring the handle 
initial begin
c=new(); // create the memory for handle
repeat(5)
	begin
		assert(c.randomize());
		$display("a=%0d",c.a);
	end
end
endmodule
