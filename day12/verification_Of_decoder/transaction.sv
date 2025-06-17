class transaction;
rand bit [2:0]i;
bit [7:0]d;

// constraint if it required

function void display(string name);
$display("[%s]: i = %b | d = %b",name,i,d);
endfunction
endclass

