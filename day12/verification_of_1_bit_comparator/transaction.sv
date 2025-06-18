class transaction;
 randc bit a,b;
 bit eq,gt,lt;
 function void display(string name);
   $display("[%s]: a=%b  || b=%b || eq = %b  gt = %b lt = %b",name,a,b,eq,gt,lt);
  endfunction
endclass

