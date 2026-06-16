module tb_popcount;
reg [3:0] sensor;
wire [2:0] occupied_count;
popcount uut (
.sensor(sensor),
.occupied_count(occupied_count)
);
initial begin
sensor = 4'b0000;
#10;
sensor = 4'b1111;
#10;
sensor = 4'b1010;
#10;
sensor = 4'b0001;
#10;
$finish;
end
endmodule
