class scoreboard;
transaction tr;
mailbox mon2scb;
event done;
int count;
function new(mailbox mon2scb);
this.mon2scb = mon2scb;
endfunction 

	task main();
      logic [2:0]d;
	forever
	begin
	mon2scb.get(tr);

			casex(tr.i)
			8'b0000_0001 : d = 3'b000;
			8'b0000_001x : d = 3'b001;
			8'b0000_01xx : d = 3'b010;
			8'b0000_1xxx : d = 3'b011;
			8'b0001_xxxx : d = 3'b100;
			8'b001x_xxxx : d = 3'b101;
			8'b01xx_xxxx : d = 3'b110;
			8'b1xxx_xxxx : d = 3'b111;
			default : d = 3'bxxx;
			endcase

		  if (tr.y == d)
		  
		    $display("Test Passed");
		      
		   
		  else
		    $error("Test Failed");
      -> done;
      count++;
      if(count==10)
        $finish;
		  
		end
	endtask
endclass


