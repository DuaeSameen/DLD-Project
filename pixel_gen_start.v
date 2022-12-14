//`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////////
//// Company: 
//// Engineer: 
//// 
//// Create Date: 12/12/2022 08:24:39 AM
//// Design Name: 
//// Module Name: start
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


//module start(

//input clk_d,
//input [9:0] pixel_x,
//input [9:0] pixel_y,
//input video_on,
//output reg [3:0] red = 0,
//output reg [3:0] green = 0,
//output reg [3:0] blue = 0);

//always @(posedge clk_d) begin

// red <= video_on ? ((pixel_x<=140 & pixel_x>=40 & pixel_y >=90 & pixel_y <=120) ||
//(pixel_x<=65 & pixel_x>=40 & pixel_y >=120 & pixel_y <=225)|| (pixel_x<=140 & pixel_x>=40 &
//pixel_y >=225 & pixel_y <=255) || 
//(pixel_x<=140 & pixel_x>=115 & pixel_y >=255 & pixel_y <=360)|| (pixel_x<=140 & pixel_x>=40 &
//pixel_y >=360 & pixel_y <=390)|| 
//(pixel_x<=255 & pixel_x>=155 & pixel_y >=90 & pixel_y <=120)|| (pixel_x<=220 & pixel_x>=190 &
//pixel_y >=120 & pixel_y <=390)|| 
//(pixel_x<=370 & pixel_x>=270 & pixel_y >=90 & pixel_y <=120)|| (pixel_x<=290 & pixel_x>=270 &
//pixel_y >=120 & pixel_y <=390)|| 
//(pixel_x<=370 & pixel_x>=350 & pixel_y >=120 & pixel_y <=390)|| (pixel_x<=350 & pixel_x>=290 &
//pixel_y >=240 & pixel_y <=270)|| 
//(pixel_x<=485 & pixel_x>=385 & pixel_y >=90 & pixel_y <=120)|| (pixel_x<=405 & pixel_x>=385 &
//pixel_y >=120 & pixel_y <=390)|| 
//(pixel_x<=485 & pixel_x>=465 & pixel_y >=120 & pixel_y <=220)|| (pixel_x<=455 & pixel_x>=435 &
//pixel_y >=250 & pixel_y <=390)|| 
//(pixel_x<=485 & pixel_x>=405 & pixel_y >=220 & pixel_y <=250)|| (pixel_x<=600 & pixel_x>=500 &
//pixel_y >=90 & pixel_y <=120)|| 
//(pixel_x<=570 & pixel_x>=540 & pixel_y >=120 & pixel_y <=390)? 4'h0:4'hF):(4'h0);

// green  <= video_on ? ((pixel_x<=140 & pixel_x>=40 & pixel_y >=90 & pixel_y <=120) ||
//(pixel_x<=65 & pixel_x>=40 & pixel_y >=120 & pixel_y <=225)|| (pixel_x<=140 & pixel_x>=40 &
//pixel_y >=225 & pixel_y <=255) || 
//(pixel_x<=140 & pixel_x>=115 & pixel_y >=255 & pixel_y <=360)|| (pixel_x<=140 & pixel_x>=40 &
//pixel_y >=360 & pixel_y <=390)|| 
//(pixel_x<=255 & pixel_x>=155 & pixel_y >=90 & pixel_y <=120)|| (pixel_x<=220 & pixel_x>=190 &
//pixel_y >=120 & pixel_y <=390)|| 
//(pixel_x<=370 & pixel_x>=270 & pixel_y >=90 & pixel_y <=120)|| (pixel_x<=290 & pixel_x>=270 &
//pixel_y >=120 & pixel_y <=390)|| 
//(pixel_x<=370 & pixel_x>=350 & pixel_y >=120 & pixel_y <=390)|| (pixel_x<=350 & pixel_x>=290 &
//pixel_y >=240 & pixel_y <=270)|| 
//(pixel_x<=485 & pixel_x>=385 & pixel_y >=90 & pixel_y <=120)|| (pixel_x<=405 & pixel_x>=385 &
//pixel_y >=120 & pixel_y <=390)|| 
//(pixel_x<=485 & pixel_x>=465 & pixel_y >=120 & pixel_y <=220)|| (pixel_x<=455 & pixel_x>=435 &
//pixel_y >=250 & pixel_y <=390)|| 
//(pixel_x<=485 & pixel_x>=405 & pixel_y >=220 & pixel_y <=250)|| (pixel_x<=600 & pixel_x>=500 &
//pixel_y >=90 & pixel_y <=120)|| 
//(pixel_x<=570 & pixel_x>=540 & pixel_y >=120 & pixel_y <=390)? 4'h0:4'hF):(4'h0);

// blue  <= video_on ? ((pixel_x<=140 & pixel_x>=40 & pixel_y >=90 & pixel_y <=120) ||
//(pixel_x<=65 & pixel_x>=40 & pixel_y >=120 & pixel_y <=225)|| (pixel_x<=140 & pixel_x>=40 &
//pixel_y >=225 & pixel_y <=255) || 
//(pixel_x<=140 & pixel_x>=115 & pixel_y >=255 & pixel_y <=360)|| (pixel_x<=140 & pixel_x>=40 &
//pixel_y >=360 & pixel_y <=390)|| 
//(pixel_x<=255 & pixel_x>=155 & pixel_y >=90 & pixel_y <=120)|| (pixel_x<=220 & pixel_x>=190 &
//pixel_y >=120 & pixel_y <=390)|| 
//(pixel_x<=370 & pixel_x>=270 & pixel_y >=90 & pixel_y <=120)|| (pixel_x<=290 & pixel_x>=270 &
//pixel_y >=120 & pixel_y <=390)|| 
//(pixel_x<=370 & pixel_x>=350 & pixel_y >=120 & pixel_y <=390)|| (pixel_x<=350 & pixel_x>=290 &
//pixel_y >=240 & pixel_y <=270)|| 
//(pixel_x<=485 & pixel_x>=385 & pixel_y >=90 & pixel_y <=120)|| (pixel_x<=405 & pixel_x>=385 &
//pixel_y >=120 & pixel_y <=390)|| 
//(pixel_x<=485 & pixel_x>=465 & pixel_y >=120 & pixel_y <=220)|| (pixel_x<=455 & pixel_x>=435 &
//pixel_y >=250 & pixel_y <=390)|| 
//(pixel_x<=485 & pixel_x>=405 & pixel_y >=220 & pixel_y <=250)|| (pixel_x<=600 & pixel_x>=500 &
//pixel_y >=90 & pixel_y <=120)|| 
//(pixel_x<=570 & pixel_x>=540 & pixel_y >=120 & pixel_y <=390)? 4'h0:4'hF):(4'h0);
// end 
 
//endmodule