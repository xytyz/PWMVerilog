module PWM (
    output reg ou,
    input clk, reset, 
    input [6:0] in
);

  reg [6:0] count; 

always@(posedge clk) 
  begin
      if (in > count)
      ou <= 1;
    else
      ou <= 0;
  end
  
  always@(posedge clk) begin
    if(!reset) count=0;
    else begin
      if(count==7'd100) count=0;
      else count= count + 1'b1;
    end
  end
  
endmodule
