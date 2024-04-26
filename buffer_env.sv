// apb_env.sv
class buffer_env extends uvm_env

  `uvm_component_utils(buffer_env)
  
  function new(sting name = "buffer_env", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  function void build_phase();
    super.build_phase(phase);
    
  endfunction: build_phase

  task run_phase();

  endtask: run_phase

endclass:buffer_env
