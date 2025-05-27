//  dynamic array declaration 

module test;
int a[];
int temp[];
initial begin

$display("Array = %p",a);

a=new[5];

$display("Array = %p",a); // {0,0,0,0,0}

a= '{5,10,25,12,15};

$display("Array = %p",a);

a=new[7](a);

$display("Array = %p ",a);

a=new[10];
$display("Array = %p ",a); // {0,0,0,0,0,0,0,0,0..}

a='{1,2,3,4,5};

$display("Array = %p ",a);
  
a={a[0:1],a[3:4]};
  
  
$display("Array = %p ",a);

a.delete(); // its only for dynamic but fixed not allowing to delete in fixed array

$display("Array = %p ",a);


end
endmodule
