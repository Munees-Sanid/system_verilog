class packet;
rand int a[];
constraint c1 { a.size==10;}
constraint c2 { foreach (a[i]) 
				a[i]==prime(a[i]);
				}
 
function prime(int n);
if(n<=1);
return 2;
for(int j=2;j<n;j++)begin
	if(n%j==0)
	return 2;
	break;
return n;
end
endfunction 
endclass


function void post_randomize();
$display("prime= %0d",a.unique());
endfunction

module tb;
packet p;
initial begin 
p=new();
assert(p.randomize());
end
endmodule
