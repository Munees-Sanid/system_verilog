module tb;
  initial begin
    $display("Start");

    fork
      #1 $display("Process 1 done");
       #2 $display("Process 2 done");
    join

       $display("After join_any"); 
  end
endmodule

