module test;

  bit [1:0] a;
  bit [1:0] b;

covergroup cg;

cp1 : coverpoint a;
cp2 : coverpoint b;
cp3 : cross a,b ;
endgroup

cg cg1;

	initial begin

	cg1=new();

      repeat(20)
			begin

			a=$random;
			b=$random;

			cg1.sample();

			 $display("A = %0d B = %0d",a,b);

			end
	$display("The coverage of a = %0.2f",cg1.cp1.get_coverage());
	$display("The coverage of b = %0.2f",cg1.cp2.get_coverage());
      $display("The coverage of cross = %0.2f",cg1.cp3.get_coverage());
	$display("Total coverage  = %0.2f",cg1.get_coverage);
	

	end
endmodule

