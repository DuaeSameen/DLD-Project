`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/12/2022 12:58:01 PM
// Design Name: 
// Module Name: inputs
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


module inputs( 
    input clk_d,
    input btn1, btn2, btn3, btn4,
    output reg left, right, up, down
    );
always @(posedge clk_d)
    begin
        if (btn1)
            begin
                left <= 1;
                right <= 0;
            end
        else if (btn2)
            begin
                right <= 1;
                left <= 0;
            end 
        else if (btn3)
            begin
                up <= 1;
                down <=0;
            end
        else if (btn4)
            begin
                up <= 0;
                down <=1;
            end  
        else
            begin
            right <= 0;
            left <= 0;
            up <=0;
            down <=0;
            end
    end         
endmodule