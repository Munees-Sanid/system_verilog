`include "interface.sv"
module dff(dff_if vif);
  
  always@(posedge vif.clk)
    begin
      if(vif.rst)
        vif.q <= 1'b0;
      else
        vif.q <= vif.d;
    end
endmodule

