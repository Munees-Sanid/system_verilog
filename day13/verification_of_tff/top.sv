`include "tff.sv"
`include "test.sv"
module top;
  tff_if vif();
  tff dut(vif);
  test tb(vif);
  
   initial begin
    
    vif.clk = 1'b0;
  end
  
  always #10 vif.clk <= ~vif.clk;
  
   initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
  
endmodule

