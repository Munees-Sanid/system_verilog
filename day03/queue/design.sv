// array for queue

module tb;

int q1[$];
  int q2[$:5]; // maximum 6 slots

initial begin

  $display("Array \n q1= %p \n  q2 = %p",q1,q2);

  q1= {1,2,3,4,5,6,7,8};
  
  q2= {1,2,3,4,5,6,7,8};
  
  $display("Array \n q1 = %p \n q2 = %p",q1,q2);
  $display("size of q1 = %0d \n size of q2 = %0d",q1.size(),q2.size());
  
  q1.insert(3,14);
  
  $display("Array \n q1 = %p ",q1);
  $display("last element q1 = %p ",q1[$]);
  $display("last element q1 = %p ",q1[0]);
  
  q1.delete();
  q2.delete(2);
  
  $display("Array \n q1 = %p \n q2 = %p",q1,q2);
 
  q2={};
  
  $display("Array \n q2 = %p ",q2);
end
endmodule
