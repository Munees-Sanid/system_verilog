`include "interface.sv"
`include "mux.v"
`include "test.sv"
module top;
// instiatite the interface

mux_intf inf();

// instiatate the dut 

  MUX dut(.i(inf.i),.s(inf.s),.y(inf.y));
  
// instiatate test
test tb(inf);

initial begin
$dumpfile("dump.vcd");
$dumpvars;
end
endmodule


