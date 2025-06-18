class transaction;
  rand bit d;
  bit q; 
  
  // constraint if needed
  
  function void display(input string tag);
    $display("[%s] : d = %b  ||  q = %b",tag,d,q);
  endfunction
  // deep copy function
  function transaction copy();
    copy = new();
    copy.d = this.d;
    copy.q = this.q;
  endfunction
  
endclass

