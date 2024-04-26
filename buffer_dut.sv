// apb_dut - buffer or inverter
module buffer(
  input bit clk;
  input bit a;
  input bit en;
  output bit b;
);
  always @(posedge clk) begin
    if(en==0)
      // b = a;
      b <= a;
    else 
      // b = ~a;
      b <= ~a;
  end  
  
endmodule: buffer
