module tb;
  
int a,b,c;
  	

function int add(int a=0,b=0);
  $display("Hi I am in Function");
  return a+b;
endfunction
  
  
initial begin
    
  a= 10;
  b=20;
  c= add(a,b);  
    $display("a=%0d, b= %0d, c= %0d",a,b,c);
  c= add(a); 
  $display("a=%0d, b= %0d, c= %0d",a,b,c);
  c= add(,b); 
  $display("a=%0d, b= %0d, c= %0d",a,b,c);
  c= add();
   $display("a=%0d, b= %0d, c= %0d",a,b,c);
end
endmodule

