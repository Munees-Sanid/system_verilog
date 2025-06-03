module dyn_array_methods;

  int arr[] = '{6, 2, 9, 4, 7};

  initial begin
    $display("Sum     = %0d", arr.sum());
    $display("Product = %0d", arr.product());
    $display("Min     = %0d", arr.min());
    $display("Max     = %0d", arr.max());
  end

endmodule

