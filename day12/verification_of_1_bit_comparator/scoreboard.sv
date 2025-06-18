class scoreboard;
  transaction tr;
  mailbox mon2scb;
  event done;
  int count;

  function new(mailbox mon2scb);
    this.mon2scb = mon2scb;
  endfunction

  task main();
  bit temp_eq,temp_gt, temp_lt;
    forever begin
      mon2scb.get(tr);  // Get transaction from monitor
      temp_eq = (tr.a == tr.b);
      temp_gt = (tr.a > tr.b);
      temp_lt = (tr.a < tr.b);
      
      if (tr.eq == temp_eq  && tr.gt == temp_gt && tr.lt == temp_lt)
        $display("Test Passed");
        
        
      else
        $error("Test Failed");
        
        -> done;
      count++;
      if(count == 10)
        $finish;
      
    end
  endtask
endclass

