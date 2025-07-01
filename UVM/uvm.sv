// driver
class driver extends uvm_driver;
  
  `uvm_component_utils(driver)
  
  function new(string name= "driver", uvm_component parent= null);
    super.new(name,parent);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    `uvm_info("DRV_BUILD","Hi I am in drivers build phase", 0)
  endfunction
  

   function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
     `uvm_info("DRV_connect","Hi I am in drivers connect phase", 0)
  endfunction
  
endclass
/////////////////////////////////////////////////////////////////////////////////////////

// monitor
class monitor extends uvm_monitor;
  
  `uvm_component_utils(monitor)
  
  function new(string name= "monitor", uvm_component parent= null);
    super.new(name,parent);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    `uvm_info("MON_BUILD","Hi I am in monitors build phase", 0)
  endfunction
  

   function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
     `uvm_info("MON_connect","Hi I am in monitors  connect phase", 0)
  endfunction
  
endclass
/////////////////////////////////////////////////////////////////////////////////////////

// sequencer
class sequencer extends uvm_sequencer;
  
  `uvm_component_utils(sequencer)
  
  function new(string name= "sequencer", uvm_component parent= null);
    super.new(name,parent);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    `uvm_info("SQR_BUILD","Hi I am in sequencers build phase", 0)
  endfunction
  

   function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
     `uvm_info("SQR_connect","Hi I am in sequencers  connect phase", 0)
  endfunction
  
endclass


/////////////////////////////////////////////////////////////////////////////////
class agent extends uvm_agent;
  
  `uvm_component_utils(agent)
  
  driver drv;
  monitor mon;
  sequencer sqr;
  
  
  function new(string name= "agent", uvm_component parent= null);
    super.new(name,parent);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    
    drv= driver::type_id::create("DRV", this);
    mon= monitor::type_id::create("MON", this);
    sqr= sequencer::type_id::create("SQR", this);
    `uvm_info("agent_BUILD","Hi I am in agents build phase", 0)
  endfunction
  

   function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
     `uvm_info("agent_connect","Hi I am in agents  connect phase", 0)
  endfunction
  
endclass

//////////////////////////////////////////////////////////////////////////////
class env extends uvm_env;
  
  `uvm_component_utils(env)
  
  agent a;
  
  
  function new(string name= "env", uvm_component parent= null);
    super.new(name,parent);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    
    a= agent::type_id::create("AGT", this);
    
    `uvm_info("ENV_BUILD","Hi I am in envs build phase", 0)
  endfunction
  

   function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
     `uvm_info("ENV_connect","Hi I am in ENVs  connect phase", 0)
  endfunction
  
endclass

////////////////////////////////////////////////////////////////////////////////
class generator extends uvm_driver;
  
  `uvm_component_utils(driver)
  
  function new(string name= "driver", uvm_component parent= null);
    super.new(name,parent);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    `uvm_info("DRV_BUILD","Hi I am in drivers build phase", 0)
  endfunction
  

   function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
     `uvm_info("DRV_connect","Hi I am in drivers connect phase", 0)
  endfunction
  
endclass

//////////////////////////////////////////////////////////////////////////////
class test extends uvm_test;
  
  `uvm_component_utils(test)
  
  env e;
  
  
  function new(string name= "test", uvm_component parent= null);
    super.new(name,parent);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    
    e= env::type_id::create("ENV", this);
    
    `uvm_info("Test_BUILD","Hi I am TESTs build phase", 0)
  endfunction
  

   function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
     `uvm_info("TEST_connect","Hi I am TEsts  connect phase", 0)
  endfunction
  
  function void end_of_elaboration_phase(uvm_phase phase);
    super.end_of_elaboration_phase(phase);
    uvm_top.print_topology();
    `uvm_info("TEST_EOB","Hi I am TEsts  EOB phase", 0)
  endfunction
  
endclass



///-------------------------------------------------

`include "uvm_macros.svh"
`include "uvm_pkg.sv"
import uvm_pkg::*;

module top;
  
  initial begin
    run_test("test");
  end
endmodule


