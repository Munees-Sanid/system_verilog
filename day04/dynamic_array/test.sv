module dyn_array_methods;

  int arr[] = '{6, 2, 9, 4, 7};
  int min[$],max[$];

  initial begin
    $display("Sum     = %0d", arr.sum());
    $display("Product = %0d", arr.product());
    min=arr.min();
    $display("Min     = %0p", min);
    max=arr.max();
    $display("Max     = %0p", max);
  end

endmodule

