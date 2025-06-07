class parent;
local int x;
function new(int x);
this.x=x;
$display("x=%0d ",this.x);
endfunction 
endclass

class child extends parent;
local int y;
function new(int x, int y);
 super.new(x);
 this.y=y;
 $display(" y=%0d",this.y);
endfunction
endclass 

module tb;
child c;
initial begin
c=new(100,200);
end
endmodule
