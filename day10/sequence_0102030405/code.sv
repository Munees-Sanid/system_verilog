class packet;
rand int arr[10];
constraint c1 { foreach(arr[i])
				if(i%2==0)
				arr[i]==0;
				else 
				arr[i]==(i+1)/2 ; }

 function void post_randomize();
 $display("arr=%p",arr);
   
 endfunction
endclass

module tb;
packet p;
initial begin 
p=new();
assert(p.randomize());
end
endmodule			

