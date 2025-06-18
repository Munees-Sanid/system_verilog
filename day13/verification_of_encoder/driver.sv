class driver;
transaction tr;
mailbox gen2drv;
virtual enc_intf vif;

	function new(mailbox gen2drv, virtual dec_intf vif);
		this.gen2drv = gen2drv;
		this.vif = vif;
	endfunction 

		task main();
			repeat(10);
			begin
				gen2drv.get(tr);

				vif.i = tr.i;

				#2;
				tr.display("drv");
			end
		endtask 
endclass
