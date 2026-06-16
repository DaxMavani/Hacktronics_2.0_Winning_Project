module fsm_controller (
input clk,
input rst,
input [2:0] occupied_count,
output reg full
);
parameter AVAILABLE = 1'b0;
parameter FULL = 1'b1;
reg state, next_state;
always @(posedge clk) begin
if(rst)
state <= AVAILABLE;
else
state <= next_state;
end
always @(*) begin
case(state)
AVAILABLE:
if(occupied_count == 4)
next_state = FULL;
else
next_state = AVAILABLE;
FULL:
if(occupied_count < 4)
next_state = AVAILABLE;
else
next_state = FULL;
endcase
end
always @(*) begin
full = state;
end
endmodule
