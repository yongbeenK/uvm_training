// APB test

class buffer_test extends uvm_test
  
  `uvm_component_utils(buffer_test)

  function new(string name = "buffer_test", uvm_component parent null);
    super.new(name, parent);
  endfunction

  buffer_env env;
  
  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    env = buffer_env::type_id::create("env",this);    
  endfunction: build_phase

  virtual function void start_of_simulation_phase(uvm_phase phase);
    uvm_root::get().print_topology();
  endfunction: start_of_simulation_phase

  //?
  virtual task run_phase(uvm_phase phase);
    #20
    TBD_intf.a = 1;
    TBD_intf.en = 0;

    #40
    TBD_intf.a = 0;
    TBD_intf.en = 0;

    #60
    TBD_intf.a = 1;
    TBD_intf.en = 1;

    #80
    TBD_intf.a = 1;
    TBD_intf.en = 0;

    super.run_phase(phase);
  endtask
  // ?
    
endclass
