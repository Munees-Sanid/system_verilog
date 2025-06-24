class packet;
  rand int a[10];

  constraint c1 {
   
    foreach (a[i]) {
      a[i] == (i*10)+9;
    }
  }
      
  function void post_randomize();
    $display("data = %p", a);
  endfunction
endclass

module tb;
  packet p;
  initial begin
    p = new();
    repeat (1) begin
      assert(p.randomize());
    end
  end
endmodule
