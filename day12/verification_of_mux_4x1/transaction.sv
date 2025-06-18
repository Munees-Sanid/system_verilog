class transaction;
 randc bit [3:0]i;
 randc bit [1:0]s;
 bit y;
 function void display(string name);
   $display("[%s]: i=%b  || s=%b || y = %b ",name,i,s,y);
  endfunction
endclass

