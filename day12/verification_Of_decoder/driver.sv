class driver;
transaction tr;
mailbox gen2drv;
virtual dec_intf vif;

	function new(mailbox gen2drv , virtual dec_intf vif);
		this.gen2drv = gen2drv;
		this.vif = vif;
	endfunction
		task main();
		repeat(10)
			begin
			gen2drv.get(tr);

			// driving the input 

			vif.i <= tr.i;
			tr.display("drv");
              #2;
			end
		endtask
endclass

