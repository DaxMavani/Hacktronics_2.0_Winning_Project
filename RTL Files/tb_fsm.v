module tb_fsm;
reg clk;
reg rst;
reg [2:0] occupied_count;
wire full;
fsm_controller uut (
.clk(clk),
.rst(rst),
.occupied_count(occupied_count),
.full(full)
);
always #5 clk = ~clk;
initial begin
clk = 0;
rst = 1;
occupied_count = 0;
#10;
rst = 0;
occupied_count = 2;
#10;
occupied_count = 4;
#10;
occupied_count = 1;
#10;
$finish;
end
endmodule
