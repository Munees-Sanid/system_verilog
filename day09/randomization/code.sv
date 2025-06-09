module tb;
int a;
initial begin
repeat(5)begin
a=$urandom_range(100); #1;
$display("a=%0d",a);
end
end
endmodule
