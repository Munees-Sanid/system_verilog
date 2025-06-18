class scoreboard;
transaction tr;
mailbox mon2scb;
  event done;
  int count;

  function new(mailbox mon2scb);
		this.mon2scb = mon2scb; 
    
	endfunction 

	task main();
        logic [7:0]y;
		forever
        
		begin
		mon2scb.get(tr);
		
		// checker circuit

          
      
          case (tr.i)
    3'b000: y = 8'b00000001;
    3'b001: y = 8'b00000010;
    3'b010: y = 8'b00000100;
    3'b011: y = 8'b00001000;
    3'b100: y = 8'b00010000;
    3'b101: y = 8'b00100000;
    3'b110: y = 8'b01000000;
    3'b111: y = 8'b10000000;
    default: y = 8'bxxxxxxxx;
  endcase
      
          if(tr.d === y)
              begin
				$display("Test is passed");
                
              end
          else
          
				$error("Test is failed");
				
		-> done; 
          count++;
          if(count==10)
            $finish;
        end
		endtask
endclass

