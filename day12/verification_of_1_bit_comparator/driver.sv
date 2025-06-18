class driver;
  transaction tr;
  mailbox gen2drv;
  virtual comp_intf vif;
  function new(mailbox gen2drv,virtual comp_intf vif);
    this.gen2drv =gen2drv;
    this.vif=vif;
  endfunction
  
    task main();
      forever
        begin
          gen2drv.get(tr);
          vif.a <=tr.a;
          vif.b <=tr.b;
        
          tr.display("drv");
            #2;
        end
    endtask

endclass


