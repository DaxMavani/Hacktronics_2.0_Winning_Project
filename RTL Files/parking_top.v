module parking_top (
input clk,
input rst,
input [3:0] sensor,
output [6:0] seg,
output full
);
wire [2:0] occupied_count;
popcount pc (
.sensor(sensor),
.occupied_count(occupied_count)
);
fsm_controller fsm (
.clk(clk),
.rst(rst),
.occupied_count(occupied_count),
.full(full)
);
display_driver disp (
.occupied_count(occupied_count),
.seg(seg)
);
endmodule
