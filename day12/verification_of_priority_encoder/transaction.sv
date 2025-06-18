class transaction;
rand bit[7:0]i;
bit [2:0]y;

function void display(string name );
$display("[%s] : i = %b || y = %b ",name,i,y);

endfunction 
endclass
