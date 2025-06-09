class packet;
rand bit[7:0]addr;
rand bit[7:0]data;
function void display();
$display("addr = %0d data = %0d",addr,data);
endfunction
endclass

module tb;
packet p;
initial begin 
p=new();
repeat(4)
begin 
if(p.randomize())
p.display();
end
end
endmodule

