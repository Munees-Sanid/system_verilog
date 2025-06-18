class generator;
rand transaction tr;
mailbox gen2drv;
event done;
function new(mailbox gen2drv,event done);

this.gen2drv = gen2drv;
this.done = done;
endfunction 

task main();
repeat(10)
begin
tr=new();
assert(tr.randomize());
gen2drv.put(tr);
tr.display("gen");
@done;
end
endtask
endclass
