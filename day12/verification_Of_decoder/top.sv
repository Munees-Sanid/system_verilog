`include "interface.sv"
`include "dec.v"
`include "test.sv"

module top;

dec_intf inf();

DEC dut (.i(inf.a=i),.d(inf.d));

test tb (inf);

endmodule
