class packet;
rand reg a;
constraint c{a inside {1'b0,1'b1,1'bx,1'bz};};
endclass

module tb;
packet p;
initial begin
p=new();
repeat(4)
begin
assert(p.randomize());
$display("a = %0d ",p.a);
end
end
endmodule
