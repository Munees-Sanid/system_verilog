module and_gate(input logic a, b, output logic y);
  assign y = a & b;
endmodule

module tb;
  logic a, b, y;

  and_gate uut (.a(a), .b(b), .y(y));

  initial begin
    $monitor("a=%b b=%b y=%b", a, b, y);
    a = 0; b = 0;
    #10 a = 1;
    #10 b = 1;
    #10;
  
    $finish;
  end
  
  initial begin
  $dumpfile("waves.vcd");
  $dumpvars(0, tb);
end

endmodule

