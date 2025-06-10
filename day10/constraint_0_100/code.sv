class packet;
rand int arr[];
constraint c1{foreach(arr[i]) 
    			arr[i] inside {[0:100]};}
  constraint c2 {arr.size>=10; arr.size<=15;}
  constraint c3 {foreach (arr[i])  if(i>=1) arr[i-1]<arr[i];}
 function void post_randomize();
 $display("arr=%p",arr);
   
 endfunction 
 endclass
 
 
module tb;
packet p;
initial begin 
p=new();
  repeat(5)
begin
assert(p.randomize());
end
end
endmodule
