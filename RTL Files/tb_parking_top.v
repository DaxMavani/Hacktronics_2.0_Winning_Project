module tb_parking_top;

reg clk;
reg rst;

reg [3:0] sensor;

wire [6:0] seg;
wire full;


// Instantiate full system

parking_top uut (

.clk(clk),
.rst(rst),
.sensor(sensor),
.seg(seg),
.full(full)

);


// Clock generation

always #5 clk = ~clk;


initial begin

// Initialize signals

clk = 0;
rst = 1;
sensor = 4'b0000;


// Apply reset

#10;
rst = 0;


// Test Case 1: Empty parking

sensor = 4'b0000;
#20;


// Test Case 2: One car

sensor = 4'b0001;
#20;


// Test Case 3: Two cars

sensor = 4'b0011;
#20;


// Test Case 4: Three cars

sensor = 4'b0111;
#20;


// Test Case 5: Full parking

sensor = 4'b1111;
#20;


// Test Case 6: Car leaves

sensor = 4'b0010;
#20;


$finish;

end

endmodule
