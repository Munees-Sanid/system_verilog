class parent;
int x;
  function void display_p();
$display("hi, iam in parent");
  endfunction
endclass

class child extends parent;
int y;
  function void display_c();
$display("hi, iam in child");
endfunction
endclass

module test;
parent p;
child c;
initial begin
p=new();
c=new();

p.x=100;
c.x=20;
c.y=30;
c.display_p();
c.display_c();
end
endmodule
