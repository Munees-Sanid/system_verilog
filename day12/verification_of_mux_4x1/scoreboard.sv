class scoreboard;
  transaction tr;
  mailbox mon2scb;
  event done;
  int count;

  function new(mailbox mon2scb);
    this.mon2scb = mon2scb;
  endfunction

  task main();
    forever begin
      mon2scb.get(tr);  // Get transaction from monitor
      if (tr.y == tr.i[tr.s])
        begin
        $display("Test Passed");
          -> done;
        end
      else
        $error("Test Failed");
      count++;
      if(count == 10)
        $finish;
      
    end
  endtask
endclass

