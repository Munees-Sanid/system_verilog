////  dynamic array declaration 

module test;
int a[][];
initial begin

$display("Array = %p",a);

a=new[3];

foreach(a[i])

a[i]=new[2];

foreach(a[i,j])

a[i][j]=new[2];
begin 
a[i][j]=$random%20;
end

$display("Array = %p",a);


end
endmodule


/*

////  dynamic array declaration 

module test;
  int a[][][];

initial begin

$display("Array = %p",a);

a=new[3];

foreach(a[i])

a[i]=new[2];

foreach(a[i,j])


  a[i][j]=new[2];


$display("Array = %p",a);


end
endmodule

*/
