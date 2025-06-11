class packet;
  rand int a[20];

  constraint c1 {
   
    foreach (a[i]) {
      
      if(i%2==0 )
        a[i] == i/2;
        else 
          a[i]== a[i-1] ;}
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
