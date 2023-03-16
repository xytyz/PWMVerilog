`timescale 1ns / 1ns

module PWM_generator (
    input clk, reset, 
    input [7:0] On_time,
    output reg PWM_out
);

reg [7:0] count; 

always@(posedge clk) begin
    if (reset) begin
        PWM_out <= 8'b0;
    end
    else begin
        if(PWM_out==1'b0) begin
            if(count == On_time) PWM_out<=1'b0;
            else count=count+1;
        end
        else begin
            if(count== (7'd100 - On_time)) PWM_out<=1'b1;
            else count=count+1;
        end
    end
end

always@(PWM_out) begin
 count<=0;
end
endmodule