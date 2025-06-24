module tb;
reg signed [7:0]a=-7;
byte b=-7;
initial begin
$display("a = %0d",a);
$display("b = %0d",b);
end
endmodule

