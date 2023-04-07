module PWM_generator (
    input clk, reset, 
    input [6:0] in,
    output reg ou
);

  reg [6:0] count,upto; 

always@(posedge clk) begin
  if (!reset) begin //reset at 0
        ou <= 0;
        count<=0;
    end
    else begin
      if(ou==1) begin
      	upto <= in;
      end
      else upto <= (7'h64 - in);
    end
end

  always@(posedge clk)begin
    if(count == upto) begin 
    	ou=~ou;
      	count=0;
    end
    else count=count+1;
  end
  
endmodule
