class driver;
  transaction tr;
  mailbox gen2drv;
  virtual mux_intf vif;
  function new(mailbox gen2drv,virtual mux_intf vif);
    this.gen2drv =gen2drv;
    this.vif=vif;
  endfunction
  
    task main();
      forever
        begin
          tr=new();
          gen2drv.get(tr);
          vif.i <=tr.i;
          vif.s <=tr.s;
        
          tr.display("drv");
            #2;
        end
    endtask

endclass


