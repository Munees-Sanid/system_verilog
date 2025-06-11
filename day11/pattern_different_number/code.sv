class packet;
  rand int a[200];

  constraint c1 {
   
    foreach (a[i]) {
      
      a[i] inside {[1:37],127,[129:156],[192:202],211,234};
    };

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
