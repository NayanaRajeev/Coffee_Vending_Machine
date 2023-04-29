`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.04.2023 23:43:28
// Design Name: 
// Module Name: cvm_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module cvm_tb;
reg clk,rst;
reg sugar;
reg [1:0] coin;
wire coffee,coffee_sugar;
cvm uut(.clk(clk),.rst(rst),.sugar(sugar),.coin(coin),.coffee(coffee),.coffee_sugar(coffee_sugar));
initial
begin
clk = 0;
forever#50 clk<=~clk;
end
initial
begin
rst <= 1'b1;
#100
rst <= 1'b0;
sugar <= 1'b1;
coin <= 2'b01; 
#100
coin <= 2'b01;
#100
coin <= 2'b01;
#100
coin <= 2'b00;
#200

coin <= 2'b10; 
#100
coin <= 2'b01;
#100
coin <= 2'b00;
#200
$stop;
end
endmodule
