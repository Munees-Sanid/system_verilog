class transaction;
  rand bit din;
  bit dout; 
  
  // constraint if needed
  
  function void display(input string tag);
    $display("[%s] : d_in : %b : d_out : %b",tag,din,dout);
  endfunction
  // deep copy function
  function transaction copy();
    copy = new();
    copy.din = this.din;
    copy.dout = this.dout;
  endfunction
  
endclass
