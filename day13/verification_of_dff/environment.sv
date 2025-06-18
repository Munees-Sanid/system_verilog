`include "transaction.sv"
`include "generator.sv"
`include "monitor.sv"
`include "driver.sv"
`include "scoreboard.sv"

class environment;
generator gen;
driver drv;
monitor mon;
scoreboard sco;
event next;
mailbox #(transaction) gdmbx;
mailbox #(transaction) msmbx;
mailbox #(transaction) mbxref;
virtual dff_if vif;

	function new(virtual dff_if vif);
		gdmbx = new();
		mbxref = new();
		gen = new(gdmbx, mbxref);
		drv = new(gdmbx);
		msmbx = new();
		mon = new(msmbx);
		sco = new(msmbx, mbxref);
		this.vif = vif;
		drv.vif = this.vif;
		mon.vif = this.vif;
		gen.sconext = next;
		sco.sconext = next;
	endfunction

	task pre_test();
		drv.reset();
	endtask

	task test();
		fork
		gen.run();
		drv.run();
		mon.run();
		sco.run();
		join_any
	endtask

	task post_test();
		wait(gen.done.triggered);
		$finish();
	endtask

	task run();
		pre_test();
		test();
		post_test();
	endtask

endclass

