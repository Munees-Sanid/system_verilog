module tb;
int a,b,c;
function int add( int x,y);
  x= 50;
  y= 100;
  return x+y; 
endfunction
  
  
initial begin
    
  a=10;
  b=20;
  c= add(a,b);  
  $display("a=%0d, b= %0d, c= %0d",a,b,c);
    
end
endmodule
