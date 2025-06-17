`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"
`include "scoreboard.sv"

class environment;

	generator gen;
	driver drv;
	monitor mon;
	scoreboard scb;

	mailbox gen2drv;
	mailbox mon2scb;

	virtual mux_intf vif;

  function new(virtual mux_intf vif);
		this.vif = vif;

		gen2drv = new();
		mon2scb = new();

		gen = new(gen2drv);
		drv = new(gen2drv , vif); 
		mon = new(mon2scb , vif);
		scb = new(mon2scb);
		endfunction 

		task run();

		fork 
		gen.main();
		drv.main();
		mon.main();
		scb.main();
		join_any
		endtask
endclass


