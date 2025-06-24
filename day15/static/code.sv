class packet;
static bit [7:0]data;
static bit [7:0]addr;

static function void display();
$display("data = %d addr = %d",data, addr);
endfunction

endclass


module tb;
packet p1,p2;
initial begin 
p1 = new();
p2 = new();

p1.data=100;
p2.addr=200;

p1.display();
p2.display();
end
endmodule
