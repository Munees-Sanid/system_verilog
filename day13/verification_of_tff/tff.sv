`include "interface.sv"
module tff(tff_if vif);
  logic temp;

  always@(posedge vif.clk)
  begin
    if (vif.rst)
      temp <= 1'b0;
    else
      temp <= ~temp;
  end

  assign vif.q = temp;
endmodule


