`include "interface.sv"
`include "enc.sv"
`include "test.sv"
module top;
// instiatite the interface

enc_intf inf();

// instiatate the dut 

encoder dut(.i(inf.i),.y(inf.y));
  
// instiatate test
test tb(inf);

initial begin
$dumpfile("dump.vcd");
$dumpvars;
end
endmodule




