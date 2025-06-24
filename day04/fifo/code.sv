module fifo;

  int q[$];
  int data[] = '{10, 20, 30, 40};
  int val;

  initial begin

    foreach (data[i])
      q.push_front(data[i]);

    while (q.size())
    begin
      val = q.pop_back();
      $display("val = %0d", val);
      end
  end

endmodule

