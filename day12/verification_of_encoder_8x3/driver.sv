class driver;
transaction tr;
mailbox gen2drv;
virtual enc_intf vif;

  function new(mailbox gen2drv, virtual enc_intf vif);
		this.gen2drv = gen2drv;
		this.vif = vif;
	endfunction 

		task main();
			forever
			begin
				gen2drv.get(tr);

				vif.i = tr.i;

				
				tr.display("drv");
                #2;
			end
		endtask 
endclass

