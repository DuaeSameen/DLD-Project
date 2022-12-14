//`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////////
//// Company: 
//// Engineer: 
//// 
//// Create Date: 12/13/2022 02:35:26 PM
//// Design Name: 
//// Module Name: maze
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
//module maze(clk, SGP, state, next); 
//  input clk; 
//  input [2:0] SGP; 
//  output [2:0] state, next; 
//  reg [2:0] state = 2'b0; 
//  reg [2:0] next = 2'b0; 
   
//  parameter start = 3'b0; 
//  parameter game = 3'b01; 
//  parameter win = 3'b10; 
//  parameter lose = 3'b11;
//  parameter reset = 3'b100;
   
//  always @(posedge clk) 
//    begin 
//    state <= next; 
//  end 
//  always @(SGP or state) 
//      begin 
//        case (SGP[2:0])
//          1'b0: if (state == reset) next = start;
//          1'b1: if (state == start) next = game;
//          else if (state == win || state == lose) next = start; 
//        endcase
//        case (SGP[1:0])
//          2'b10: if (state == game) next = win; 
//          2'b11: if (state == game) next = lose; 
//        endcase 
//      end
//endmodule


//module game_state(
//input wire clk, reset, 
//input wire video_on, road_on,finish_line, car_on, 
//input wire button,
//output reg start_en,crash_en, finish_en, pause, game_reset);
//reg [2:0] state = 3'd0;

//always@(posedge clk)
//begin
//if(reset)
//state<=3'b0;
//case(state)
////show start page and reset the game,
//3'd0: if(b1) //when enter is pressed move to playing state
//            begin state <= 3'd1; start_en <=1'b0;   
//            pause <=1'b0; game_reset <=1'b0; end      
//      else //shaow start page, reset the game, wait for enter key
//            begin start_en <=1'b1; crash_en <= 1'b0;
//            finish_en <=1'b0; pause <= 1'b1; 
//            game_reset <= 1'b1; end
            
////race until either the car get's off the road or car reaches finish line
//3'd1: if(video_on && car_on && !road_on)
//        //if off the road, pause the game.
//        begin
//        //show crash message
//        crash_en <= 1'b1;
//        //if enter key is held while crash, 
//        //pause and wait for the key to be released
//        if(enter_key) 
//            state<= 3'd1;
//        else
//            state <=3'd2;
//        pause <=1'b1;
//        end
//    else if(video_on & car_on & finish_line) //playing
//        begin
//        //show finish message
//        finish_en<=1'b1;
//        //if enter key is held while car crosses finish line, 
//        //pause and wait for the key to be released
//        if(enter_key)
//        state<= 3'd1;
//        else
//        state <=3'd2;
//        pause <=1'b1;
//        end
////wait for the user to press enter before moving to start page
//3'd2:  if(enter_key) begin  state<= 3'd3; end 
////wait for enter to be realesed
//3'd3: if(key_relese) state<= 3'd0; 
//default: state <= 3'd0;
//endcase
//end
//endmodule
