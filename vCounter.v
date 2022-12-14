`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2022 05:53:14 PM
// Design Name: 
// Module Name: vCounter
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


module vCounter(clk, enable_v, v_count);
    input clk;
    input enable_v;
    output[9:0] v_count;
    reg[9:0] v_count;
    initial begin
        v_count = 0;
    end
    always @( posedge clk )
    begin
        if (enable_v & (v_count < 524))
        begin 
                v_count <= v_count + 1;    
        end
        else if (enable_v)
        begin
            v_count <= 0;        
        end
    end
endmodule

