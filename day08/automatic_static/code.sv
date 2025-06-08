// automatic
module tb;
int svar=1;
initial begin
for(int i=0;i<3;i++) 
       begin : l1
			automatic int loop3=0;
            for(int k=0;k<3;k++) 
	             begin : l2
					loop3++;
					$display(loop3);
                  end :l2
       end :l1
end
endmodule
// here new memory is created, because of keyword automatic, where memory is invoked each time it call


/*
module tb;
int svar=1;
initial begin
for(int i=0;i<3;i++) 
       begin : l1
			static int loop3=0;
            for(int k=0;k<3;k++) 
	             begin : l2
					loop3++;
					$display(loop3);
                  end :l2
       end :l1
end
endmodule
// here memory is static, it won't create seperate memory

*/
