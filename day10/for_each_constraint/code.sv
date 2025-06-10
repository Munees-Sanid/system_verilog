class packet;
rand int arr[10];
constraint c1{foreach(arr[i]) 
    			arr[i] inside {[0:100]};}
   
 function void post_randomize();
 $display("arr=%p",arr);
 endfunction 
 endclass
 
 
module tb;
packet p;
initial begin 
p=new();
repeat(2)
begin
assert(p.randomize());
end
end
endmodule
