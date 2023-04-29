`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.04.2023 21:09:25
// Design Name: 
// Module Name: cvm
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


module cvm(clk,rst,sugar,coin,coffee_sugar,coffee);
input clk,rst;
input sugar;
input [1:0] coin;
output coffee,coffee_sugar;
//reg [3:0] current_state;
//reg [3:0] next_state;
reg [3:0] state;

parameter s1=4'd1,s2=4'd2,s3=4'd3,s4=4'd4,s5=4'd5,s6=4'd6,s7=4'd7,s8=4'd8,s9=4'd9;
always @ (posedge clk)
begin
if(rst)
state<=s1;
else
//current_state<=next_state;
//end
//always  @ (current_state,coin)
//always @ (posedge clk)
begin
//case(current_state)
case(state)
s1:begin
if (coin == 2'b00)
//next_
state<=s1;
else if(coin==2'b01)
//next_
state<=s3;
else if(coin==2'b10)
//next_
state<=s2;
end

s2:begin
if (coin == 2'b00)
//next_
state<=s2;
else if(coin==2'b01)
//next_
state<=s4;
else if(coin==2'b10)
//next_
state<=s5;
end

s3:begin
if (coin == 2'b00)
//next_
state<=s3;
else if(coin==2'b01)
//next_
state<=s6;
else if(coin==2'b10)
//next_
state<=s7;
end

s4:begin
if (coin == 2'b00)
//next_
state<=s1;
else if(coin==2'b01)
//next_
state<=s3;
else if(coin==2'b10)
//next_
state<=s2;
end

s5:begin
if (coin == 2'b00)
//next_
state<=s3;
else if(coin==2'b01)
//next_
state<=s6;
else if(coin==2'b10)
//next_
state<=s7;
end

s6:begin
if (coin == 2'b00)
//next_
state<=s6;
else if(coin==2'b01)
//next_
state<=s8;
else if(coin==2'b10)
//next_
state<=s9;
end

s7:begin
if (coin == 2'b00)
//next_
state<=s1;
else if(coin==2'b01)
//next_
state<=s3;
else if(coin==2'b10)
//next_
state<=s2;
end

s8:begin
if (coin == 2'b00)
//next_
state<=s1;
else if(coin==2'b01)
//next_
state<=s3;
else if(coin==2'b10)
//next_
state<=s2;
end

s9:begin
if (coin == 2'b00)
//next_
state<=s3;
else if(coin==2'b01)
//next_
state<=s6;
else if(coin==2'b10)
//next_
state<=s7;
end

default:state<=s1;
endcase
end
end 
 //reg mix;
 wire mix;
 //always @ (state)
 //begin
 //case(state)
 assign mix = (state==s4)|(state==s5)|(state==s7)|(state==s8)|(state==s9);
 assign coffee_sugar = (mix&sugar);
 assign coffee = (mix&(~sugar));
 // s1:mix<=1'b0;
// s2:mix<=1'b0;
// s3:mix<=1'b0;
// s4:mix<=1'b1;
// s5:mix<=1'b1;
// s6:mix<=1'b0;
// s7:mix<=1'b1;
// s8:mix<=1'b1;
// s9:mix<=1'b1;
// endcase
// end 
 
// always @(posedge mix)
// begin
// if(sugar)
// coffee_sugar<=1'b1;
// else
// coffee<=1'b1;
// end
 
endmodule
