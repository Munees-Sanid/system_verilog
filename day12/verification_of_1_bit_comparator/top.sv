`include "interface.sv"
`include "comp.v"
`include "test.sv"
module top;
// instiatite the interface

comp_intf inf();

// instiatate the dut 

  comp dut(.a(inf.a),.b(inf.b),.eq(inf.eq),.gt(inf.gt) ,.lt(inf.lt));
  
// instiatate test
test tb(inf);

initial begin
$dumpfile("dump.vcd");
$dumpvars;
end
endmodule


