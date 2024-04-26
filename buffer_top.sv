// apb_top
module top;

// variable
bit clk;
  
// dut
  buffer_dut dut0();
  
// env
  buffer_env env0();

// intf
  buffer_intf intf0();
  
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

// connect
  dut0.clk      = intf0.clk;
  dut0.a        = intf0.a;
  dut0.b        = intf0.b;
  dut0.en       = intf0.en;

  initial begin
    //dump waves
    $dumpvars(0,top);
  end

endmodule: top
