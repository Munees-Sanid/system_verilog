module test;

  
  struct {
    string name;
    string f_name;
    string contact;
    string blood_group;
  } a[3]; 

  initial begin
   
    a[0] = '{"Munees", "XYZ", "949520865", "O_ve"};
    a[1] = '{"Sanid", "ABC", "4959295", "A+ve"};
    a[2] = '{"prakash", "PXD", "4848399", "B-ve"};

   
    $display("First Student details:");
    $display("%p", a[0]);

    $display("Second Student details:");
    $display("%p", a[1]);

    $display("Third Student details:");
    $display("%p", a[2]);
  end

endmodule
