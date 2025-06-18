class generator;
rand transaction tr;
mailbox gen2drv;
event done;
int count;
function new(mailbox gen2drv);

this.gen2drv = gen2drv;
endfunction 

task main();
  repeat(count)
begin
tr=new();
assert(tr.randomize());
gen2drv.put(tr);
tr.display("gen");
@done;
end
endtask
endclass

