module tb;

  int q[$] = '{7, 14, 21, 5, 18, 26, 33, 11, 60, 2};

  initial begin
    q = {q[0:2], q[4], q[6:$]};
    $display("q after delete: %p", q);

    q = {q, 99};
    $display("q after append: %p", q);

    q = {42, q};
    $display("q after prepend: %p", q);
  end

endmodule

