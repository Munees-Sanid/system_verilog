module symbol;
reg [3:0] i, j;
reg [3:0] n = 5;

initial begin
$display("Pattern:");
for (i = 0; i < n; i = i + 1) begin
for (j = 0; j < n - i - 1; j = j + 1)
$write(" ");
for (j = 0; j <= i; j = j + 1)
$write("* ");
$display("");
end
end
endmodule

