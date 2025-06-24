module tb;
bit clk;
logic a=0,b=0,c=0;

always #5 clk = ~clk;
property abc;
@(posedge clk) a ##1 b ##1 c;
endproperty 

assert property(abc)
$info("sequence occured ");

endmodule 

program assert_t test;
initial begin
# a=1;
#10 a=0; b=1;
#10 b=0; c=1;
#10 c=0;
#10 a=1;
#20 b=1;
#10 c=1;
#10 ;
end
endprogram
