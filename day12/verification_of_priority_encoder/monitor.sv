class monitor;
transaction tr;
mailbox mon2scb;
virtual enc_intf vif;

function new(mailbox mon2scb , virtual enc_intf vif);
this.mon2scb = mon2scb;
this.vif = vif;
endfunction 

		task main();
		forever
			begin
			
			#2;
              tr=new();
			tr.i = vif.i;
			tr.y = vif.y;

			mon2scb.put(tr);

			tr.display("mon");
			
			end
		endtask
endclass

