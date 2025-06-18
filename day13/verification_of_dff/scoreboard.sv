class scoreboard;
  
  transaction tr;
  transaction trref;
  mailbox #(transaction) mbx;
  mailbox #(transaction) mbxref;
  event sconext;
 
 
  function new( mailbox #(transaction) mbx,  mailbox #(transaction) mbxref);
   this.mbx = mbx;
   this.mbxref = mbxref;
  endfunction
  
  task run();
    forever begin
      mbx.get(tr);
      mbxref.get(trref);
      tr.display("SCB");
      trref.display("REF");
      if(tr.dout == trref.din)
        $display("[SCO] : Data Matched");
      else
        $display("[SCO] : Data Mismatched"); 
      -> sconext;
    end
  endtask
  
  
endclass
