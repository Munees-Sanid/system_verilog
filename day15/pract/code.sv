/*
module tb;
int a[];
initial begin
a=new[5];
foreach(a[i])
a[i]= {$random}%21;
$display("%p",a);
a=new[7](a);
$display("%p",a);
end
endmodule


module tb;
  int q[$:10];

  initial begin
  q=new[6];
    foreach(q[i])begin
      q[i]=$random; end
      $display("%p",q);
  end
endmodule

module tb;
  int data[string]; // Associative array indexed by string

  initial begin
    data["apple"]  = 10;
    data["banana"] = 20;

    foreach (data[key])
      $display("Key: %s, Value: %0d", key, data[key]);
  end
endmodule




module tb;
function void modify(ref static int val);
  val = val + 5;
endfunction

initial begin
  int x = 10;
  modify(x);
  $display("x = %0d", x);  // Output: x = 15
end
endmodule
*/

  class sample;
    rand bit[2:0] a; //declaring 3 bit variable with rand --- 2**3 == 8 combinations
    static bit[2:0] my_Q[$:7]; // same as a to store in the queue
    constraint c1 { !(a inside {my_Q});} //Constraint to randomize the left over variables which are not covered in the queue
  
  	function void post_randomize();
      my_Q.push_back(a);//storing a values inside the queue
    begin
      if(my_Q.size==8) //2 power 3 == 8 combinations
      begin
        my_Q.delete(); // If all 8 combinations are covered then empty the queue
      end
    end
   	endfunction 
  endclass

  module tb;
  	sample s=new();
  
 	 initial begin
       repeat(16) // repeating "twice" just to confirm it is working or not.. NOTE: twice means 2 times repeating 8 combinations
      begin
        assert(s.randomize());
        $write ("a=%0d ",s.a);
        $display ("Number of Elements inside queue =%0p", s.my_Q.size());
      end
     $display ("----------------------------------------------------------");
     $display ("IMPLEMENTED RANDC without using RANDC keyword only with rand");
  	end           
  endmodule
             

             




