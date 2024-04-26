// apb_top
module top;

// variable
bit clk;
  
// dut
  buffer_dut dut0();
  
// env
  apb_env env0();
  
// clock
  initial begin
    clk = 0;
    env0 = new();
  end
  
  always() begin
  #5 clk = ~clk;
  end

  initial begin
    run_test();
  end

  initial begin
    //dump waves
    $dumpvars(0,top);
  end
  
// interface
// apb_test_dut0.PSEL      = apb_intf.PSEL;
// apb_test_dut0.PENABLE   = apb_intf.PEANBLE;

endmodule: top
