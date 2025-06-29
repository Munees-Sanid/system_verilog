class packet;
  rand bit [15:0]a;

  constraint no_consecutive_ones {
    (a.countones() == 5);
    foreach (a[i]) {
      if (i >= 1)
        !(a[i] == 1 && a[i-1] == 1);
    }
  }

  function void post_randomize();
    $display("data = %b", a);
  endfunction
endclass

module tb;
  packet p;
  initial begin
    p = new();
    repeat (5) begin
      assert(p.randomize());
    end
