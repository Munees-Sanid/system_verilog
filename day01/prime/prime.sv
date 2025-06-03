module prime_check;
int i, j, is_prime;

initial begin
$display("Prime numbers from 1 to 20:");
for (i = 2; i <= 20; i = i + 1) begin
  is_prime = 1;
  for (j = 2; j < i; j = j + 1) begin
    if (i % j == 0)
      is_prime = 0;
  end
  if (is_prime)
    $display("%0d is Prime", i);
end
end
endmodule

