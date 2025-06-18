class transaction;
  rand bit t;
  bit q; 
  
  // constraint if needed
  
  function void display(input string tag);
    $display("[%s] : t = %b  ||  q = %b",tag,t,q);
  endfunction
  // deep copy function
  function transaction copy();
    copy = new();
    copy.t = this.t;
    copy.q = this.q;
  endfunction
  
endclass

