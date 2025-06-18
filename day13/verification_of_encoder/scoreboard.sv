class scoreboard;
transactio tr;
mailbox mon2scb;
event done;

function new(mailbox mon2scb,event done);
this.mon2scb = mon2scb;
this.done = done;
endfunction 

	task main();
	logic [2:0]y;
	repeat(10)
	begin
	mon2scb.get(tr);

			case(tr.i)
			8'b0000_0001 : d = 3'b000;
			8'b0000_001x : d = 3'b001;
			8'b0000_01xx : d = 3'b010;
			8'b0000_1xxx : d = 3'b011;
			8'b0001_xxxx : d =  3'b100;
			8'b001x_xxxx : d = 3'b101;
			8'b01xx_xxxx : d = 3'b110;
			8'b1xxx_xxxx : d = 3'b111;
			default : y = 3'bxxx;
			endcase

		  if (tr.y == d)
		    begin
		    $display("Test Passed");
		      -> done;
		    end
		  else
		    $error("Test Failed");
		  
		end
	endtask
endclass

