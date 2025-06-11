class packet;
  rand int a[10];

  constraint c1 {
   
    foreach (a[i]) {
      
      if(i%4==0 || i%4==1)
        a[i]==0;
      else 
        a[i]==1;
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
    repeat (2) begin
      assert(p.randomize());
    end
  end
endmodule
