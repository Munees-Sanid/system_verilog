class packet;
int a;
extern function void display();

endclass

function void packet :: display();
$display("this is inside function");
endfunction 

module tb;
packet p;
initial begin
p=new();
p.display();
end
endmodule
