module tb;
int a,b,c;
  	
  
//Function pass by reference
function  automatic void add(int a, const ref int b, output int c);
  a= 50;

 c= a+b; 
    
endfunction
  
  
initial begin
    
  a=10;
  b=20;
  add(a,b,c);  
  $display("a=%0d, b= %0d, c= %0d",a,b,c);
    
end
endmodule
