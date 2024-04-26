// APB test

class buffer_test extends uvm_test
  
  buffer_dut dut;
  `uvm_component_utils(buffer_test)

  function new()
    super.new();
  endfunction

  function build_phase();
    
  endfunction

  task run_phase();

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
      
  endtask
    
endclass
