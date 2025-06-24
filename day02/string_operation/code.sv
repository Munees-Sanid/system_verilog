module tb;
initial begin
string msg="SYSTEMVERILOG";
$display("string = %s " ,msg);
$display("string = %d " ,msg.len());
$display("string = %s " ,msg.tolower());
$display("string = %s " ,msg.substr(0,6));
end
endmodule
