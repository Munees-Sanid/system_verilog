class packet;
rand int arr[1000];
real arr2[$];
constraint c1 { foreach(arr[i])
				arr[i] inside { [1000:1999]};};
function void post_randomize();
foreach(arr[i])
		arr2=real'(arr[i])/1000);
	   
foreach(arr[i])
		 $display("arr = %d",arr2);
endfunction
endclass
	  
module tb;
packet p;
initial begin
p=new();
assert(p.randomize());
end
endmodule	  
