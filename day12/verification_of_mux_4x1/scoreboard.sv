class scoreboard;
  transaction tr;
  mailbox mon2scb;

  function new(mailbox mon2scb);
    this.mon2scb = mon2scb;
  endfunction

  task main();
    repeat (10) begin
      mon2scb.get(tr);  // Get transaction from monitor
      if (tr.y == tr.i[tr.s])
        $display("Test Passed");
      else
        $error("Test Failed");
      tr.display("scb");
    end
  endtask
endclass
