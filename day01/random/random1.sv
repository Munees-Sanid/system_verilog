module random_test;

  class RandomGen;
    rand int a, b;
    
    constraint valid_range {
      a inside {[1:100]};
      b inside {[1:100]};
    }

    function void display();
      $display("Random Values => a = %0d, b = %0d", a, b);
    endfunction
  endclass

  RandomGen obj;

  initial begin
    obj = new();
    repeat (5) begin
      if (obj.randomize())
        obj.display();
      else
        $display("Randomization failed!");
    end
  end
endmodule

