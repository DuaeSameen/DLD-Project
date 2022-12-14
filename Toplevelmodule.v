`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2022 05:53:14 PM
// Design Name: 
// Module Name: Toplevelmodule
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
module Toplevelmodule(
    input clk,
    input count_x, count_y, btn1, btn2,btn3, btn4, btn5,
    output h_sync,v_sync,
    output [3:0] red,green,blue
    );
    wire clk_d, v_trig, video_on;
    wire [9:0] h_count;
    wire[9:0] v_count;
    wire[9:0] x_loc;
    wire[9:0] y_loc;
    wire [9:0] x1,x2,y1,y2;
    wire animate;
    wire left, right, up, down;
    
    clk_div cd(clk,clk_d);
    hCounter hc(clk_d,h_count,v_trig);
    vCounter vc(clk_d,v_trig,v_count);
    vga_sync vgas(h_count,v_count,x_loc,y_loc,h_sync,v_sync,video_on,animate);
    pixel_gen pg(clk_d,btn5,x_loc,y_loc,video_on,x1,x2,y1,y2,red,green,blue);
    movement m1(animate,left,right,up,down,x1,x2,y1,y2);
    inputs i(clk_d,btn1,btn2,btn3,btn4,left,right,up,down);

endmodule
