class monitor;
transaction tr;
mailbox enc_intf vif;

function new(mailbox mon2scb , virtual enc_intf vif);
this.mon2scb = mon2scb;
this.vif = vif;
endfunction 

		task main();
		repeat(10)
			begin
			

			tr.i = vif.i;
			tr.y = vif.y;

			mon2scb.put(tr);

			tr.display("mon");
			#2;
			end
		endtask
endmodule
