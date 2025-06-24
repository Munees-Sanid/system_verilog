class packet;
rand bit [31:0]a;
constraint c1 { a inside {[0:100]};
			prime(a)==1;	};
				
function int prime(int value);
  int i;
  if(value<2)
    return 0;
  for(i=2;i<value/2;i++) begin
    if(value%i==0)
      return 0;
  end
  return 1;
endfunction

endclass
	
	
module tb;
packet p;
initial begin
p=new();
repeat(4)
	begin 
	assert(p.randomize());
	end
end
endmodule		
