//`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////////
//// Company: 
//// Engineer: 
//// 
//// Create Date: 12/13/2022 02:57:06 PM
//// Design Name: 
//// Module Name: movementFSM
//// Project Name: 
//// Target Devices: 
//// Tool Versions: 
//// Description: 
//// 
//// Dependencies: 
//// 
//// Revision:
//// Revision 0.01 - File Created
//// Additional Comments:
//// 
////////////////////////////////////////////////////////////////////////////////////


//module movementFSM(clk, keys, state); 
//  input clk; 
//  input [3:0] keys; 
//  output [2:0] state; 
//  reg [2:0] state = 0; 
//  reg [2:0] next; 
   
//  parameter up = 3'b0; 
//  parameter up_ = 3'b1; 
//  parameter down = 3'b10; 
//  parameter down_ = 3'b11; 
//  parameter left = 3'b100; 
//  parameter left_ = 3'b101; 
//  parameter right = 3'b110; 
//  parameter right_ = 3'b111; 
   
//  always @(posedge clk) 
//    begin 
//    state <= next; 
//  end 
//  always @(keys or state) 
//      begin 
//       case (keys) 
//         4'b0: next[0] = 0; 
//         4'b1: if (state == up) next = up_; 
//          else if (state != up_) next = up; 
//         4'b10: if (state == down) next = down_; 
//         else if (state != down_) next = down; 
//         4'b100: if (state == left) next = left_; 
//         else if (state != left_) next = left; 
//         4'b1000: if (state == right) next = right_; 
//         else if (state != right_)next = right;  
//       endcase 
//      end 
//endmodule 
