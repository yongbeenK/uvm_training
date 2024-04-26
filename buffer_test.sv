// APB test

class buffer_test extends uvm_test
  
  `uvm_component_utils(buffer_test)

  function new(string name, uvm_component parent null);
    super.new();
  endfunction

  buffer_dut dut;
  
  function build_phase();
    super.build_phase(phase);
    
  endfunction

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
    
endclass
