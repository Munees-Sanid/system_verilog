////  dynamic array declaration 

module test;
  int a[][];

initial begin

$display("Array = %p",a);

a=new[3];

foreach(a[i])

  a[i]=new[2];

 foreach(a[i])
  a[i] = {$random}%20;


$display("Array = %p",a);


end
endmodule
