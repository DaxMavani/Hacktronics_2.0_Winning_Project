module popcount (
input [3:0] sensor,
output [2:0] occupied_count
);
assign occupied_count = sensor[0] + sensor[1] + sensor[2] + sensor[3];
endmodule
