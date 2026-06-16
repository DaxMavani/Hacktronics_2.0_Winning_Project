module display_driver (
input [2:0] occupied_count,
output reg [6:0] seg
);
reg [2:0] available;
always @(*) begin
available = 4 - occupied_count;
case(available)
0: seg = 7'b1000000;
1: seg = 7'b1111001;
2: seg = 7'b0100100;
3: seg = 7'b0110000;
4: seg = 7'b0011001;
default: seg = 7'b1111111;
endcase
end
endmodule
