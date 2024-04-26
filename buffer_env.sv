// apb_env.sv
class buffer_env extends uvm_env

  function new();
    super.new();
  endfunction

  function void build_phase();

  endfunction: build_phase

  task run_phase();

  endtask: run_phase

endclass:apb_env
