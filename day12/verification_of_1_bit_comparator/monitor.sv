class monitor; 
transaction tr;
  mailbox mon2scb;
  virtual comp_intf vif;
  
  function new(mailbox mon2scb,virtual comp_intf vif);
    this.mon2scb=mon2scb;
    this.vif=vif;
  endfunction
  task main();
    forever
      begin
      
   #2;
        tr=new();
        tr.a=vif.a;
        tr.b=vif.b;
        tr.eq=vif.eq;
        tr.gt=vif.gt;
        tr.lt=vif.lt;
        mon2scb.put(tr);
        tr.display("mon");
        
      end
  endtask
endclass
