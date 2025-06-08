module tb;
  
task display();
  $display("Hi I am in task");
   return;
  $display("Hi After Return");
 endtask
   
initial begin
    
  display();
end
endmodule
