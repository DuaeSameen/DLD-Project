`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2022 05:53:14 PM
// Design Name: 
// Module Name: pixel_gen
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

module pixel_gen(
input clk_d,
input btn,
input  [9:0] pixel_x,
input  [9:0] pixel_y,
input video_on,
input [9:0] x1,x2,y1,y2,
output reg [3:0] red = 0,
output reg [3:0] green = 0,
output reg [3:0] blue = 0
);

//parameter N = 27;
//reg [N-1:0] slow_clk = 0;

always @(posedge clk_d) begin
//slow_clk <= slow_clk + 1'b1;
if (btn) begin
 red <= video_on ? (
(pixel_x<=x2 & pixel_x>=x1 & pixel_y >=y1 & pixel_y <=y2) ||  

(pixel_x<=463 & pixel_x>=16 & pixel_y >=16 & pixel_y <=23) || 

(pixel_x<=143 & pixel_x>=16 & pixel_y >=56 & pixel_y <=63) || 
(pixel_x<=383 & pixel_x>=256 & pixel_y >=56 & pixel_y <=63) || 

(pixel_x<=103 & pixel_x>=16 & pixel_y >=96 & pixel_y <=103) ||
(pixel_x<=303 & pixel_x>=176 & pixel_y >=96 & pixel_y <=103) || 
(pixel_x<=383 & pixel_x>=336 & pixel_y >=96 & pixel_y <=103)|| 

(pixel_x<=103 & pixel_x>=56 & pixel_y >=136 & pixel_y <=143) || 
(pixel_x<=263 & pixel_x>=136 & pixel_y >=136 & pixel_y <=143) ||
(pixel_x<=343 & pixel_x>=296 & pixel_y >=136 & pixel_y <=143) || 
(pixel_x<=423 & pixel_x>=376 & pixel_y >=136 & pixel_y <=143)|| 

(pixel_x<=103 & pixel_x>=56 & pixel_y >=176 & pixel_y <=183) || 
(pixel_x<=303 & pixel_x>=216 & pixel_y >=176 & pixel_y <=183) ||
(pixel_x<=463 & pixel_x>=416 & pixel_y >=176 & pixel_y <=183) || 

(pixel_x<=183 & pixel_x>=96 & pixel_y >=216 & pixel_y <=223)|| 
(pixel_x<=383 & pixel_x>=336 & pixel_y >=216 & pixel_y <=223) || 

(pixel_x<=63 & pixel_x>=16 & pixel_y >=256 & pixel_y <=263)||
(pixel_x<=223 & pixel_x>=136 & pixel_y >=256 & pixel_y <=263) || 
(pixel_x<=343 & pixel_x>=296 & pixel_y >=256 & pixel_y <=263)|| 
(pixel_x<=423 & pixel_x>=376 & pixel_y >=256 & pixel_y <=263) || 

(pixel_x<=183 & pixel_x>=136 & pixel_y >=296 & pixel_y <=303) ||
(pixel_x<=263 & pixel_x>=216 & pixel_y >=296 & pixel_y <=303) || 
(pixel_x<=463 & pixel_x>=336 & pixel_y >=296 & pixel_y <=303)|| 

(pixel_x<=143 & pixel_x>=96 & pixel_y >=336 & pixel_y <=343) || 
(pixel_x<=343 & pixel_x>=256 & pixel_y >=336 & pixel_y <=343) ||
(pixel_x<=423 & pixel_x>=376 & pixel_y >=336 & pixel_y <=343) || 

(pixel_x<=183 & pixel_x>=96 & pixel_y >=376 & pixel_y <=383)|| 
(pixel_x<=463 & pixel_x>=336 & pixel_y >=376 & pixel_y <=383) || 

(pixel_x<=223 & pixel_x>=136 & pixel_y >=416 & pixel_y <=423) ||
(pixel_x<=303 & pixel_x>=256 & pixel_y >=416 & pixel_y <=423) || 
(pixel_x<=463 & pixel_x>=376 & pixel_y >=416 & pixel_y <=423)|| 

(pixel_x<=463 & pixel_x>=16 & pixel_y >=456 & pixel_y <=463) ||


(pixel_x<=23 & pixel_x>=16 & pixel_y >=16 & pixel_y <=63) || 
(pixel_x<=23 & pixel_x>=16 & pixel_y >=96 & pixel_y <=463) || 

(pixel_x<=63 & pixel_x>=56 & pixel_y >=176 & pixel_y <=263) || 
(pixel_x<=63 & pixel_x>=56 & pixel_y >=296 & pixel_y <=463) ||

(pixel_x<=103 & pixel_x>=96 & pixel_y >=136 & pixel_y <=183) || 
(pixel_x<=103 & pixel_x>=96 & pixel_y >=216 & pixel_y <=343)|| 
(pixel_x<=103 & pixel_x>=96 & pixel_y >=376 & pixel_y <=423) || 

(pixel_x<=143 & pixel_x>=136 & pixel_y >=96 & pixel_y <=183) ||
(pixel_x<=143 & pixel_x>=136 & pixel_y >=256 & pixel_y <=303) || 
(pixel_x<=143 & pixel_x>=136 & pixel_y >=416 & pixel_y <=463)|| 

(pixel_x<=183 & pixel_x>=176 & pixel_y >=56 & pixel_y <=103) || 
(pixel_x<=183 & pixel_x>=176 & pixel_y >=136 & pixel_y <=223) ||
(pixel_x<=183 & pixel_x>=176 & pixel_y >=296 & pixel_y <=423) || 

(pixel_x<=223 & pixel_x>=216 & pixel_y >=16 & pixel_y <=63)|| 
(pixel_x<=223 & pixel_x>=216 & pixel_y >=176 & pixel_y <=223) || 
(pixel_x<=223 & pixel_x>=216 & pixel_y >=256 & pixel_y <=383)||

(pixel_x<=263 & pixel_x>=256 & pixel_y >=56 & pixel_y <=143) || 
(pixel_x<=263 & pixel_x>=256 & pixel_y >=176 & pixel_y <=303)|| 
(pixel_x<=263 & pixel_x>=256 & pixel_y >=336 & pixel_y <=423) || 

(pixel_x<=303 & pixel_x>=296 & pixel_y >=136 & pixel_y <=183) ||
(pixel_x<=303 & pixel_x>=296 & pixel_y >=216 & pixel_y <=303) || 
(pixel_x<=303 & pixel_x>=296 & pixel_y >=336 & pixel_y <=383)|| 

(pixel_x<=343 & pixel_x>=336 & pixel_y >=136 & pixel_y <=183) || 
(pixel_x<=343 & pixel_x>=336 & pixel_y >=256 & pixel_y <=343) ||
(pixel_x<=343 & pixel_x>=336 & pixel_y >=416 & pixel_y <=463) || 

(pixel_x<=383 & pixel_x>=376 & pixel_y >=16 & pixel_y <=63)|| 
(pixel_x<=383 & pixel_x>=376 & pixel_y >=96 & pixel_y <=183) || 
(pixel_x<=383 & pixel_x>=376 & pixel_y >=216 & pixel_y <=263) ||
(pixel_x<=383 & pixel_x>=376 & pixel_y >=336 & pixel_y <=383) || 

(pixel_x<=423 & pixel_x>=416 & pixel_y >=16 & pixel_y <=143) ||
(pixel_x<=423 & pixel_x>=416 & pixel_y >=176 & pixel_y <=263) || 

(pixel_x<=463 & pixel_x>=456 & pixel_y >=16 & pixel_y <=383)|| 
(pixel_x<=463 & pixel_x>=456 & pixel_y >=416 & pixel_y <=463) ||

//pixgen for game banner

//pixgen for "T"
(pixel_x<=507 & pixel_x>=494 & pixel_y >=106 & pixel_y <=107)|| 
(pixel_x<=503 & pixel_x>=498 & pixel_y >=120 & pixel_y <=121)|| 
(pixel_x<=495 & pixel_x>=494 & pixel_y >=106 & pixel_y <=109)|| 
(pixel_x<=507 & pixel_x>=506 & pixel_y >=106 & pixel_y <=109)|| 
(pixel_x<=501 & pixel_x>=500 & pixel_y >=106 & pixel_y <=121)||
//pixgen for "H"
(pixel_x<=515 & pixel_x>=510 & pixel_y >=106 & pixel_y <=107)|| 
(pixel_x<=525 & pixel_x>=520 & pixel_y >=106 & pixel_y <=107)|| 
(pixel_x<=515 & pixel_x>=510 & pixel_y >=120 & pixel_y <=121)|| 
(pixel_x<=525 & pixel_x>=520 & pixel_y >=120 & pixel_y <=121)|| 
(pixel_x<=523 & pixel_x>=512 & pixel_y >=112 & pixel_y <=113)|| 
(pixel_x<=513 & pixel_x>=512 & pixel_y >=106 & pixel_y <=121)|| 
(pixel_x<=523 & pixel_x>=522 & pixel_y >=106 & pixel_y <=121)|| 
//pixgen for "E"
(pixel_x<=539 & pixel_x>=528 & pixel_y >=106 & pixel_y <=107)|| 
(pixel_x<=539 & pixel_x>=528 & pixel_y >=120 & pixel_y <=121)|| 
(pixel_x<=537 & pixel_x>=530 & pixel_y >=112 & pixel_y <=113)|| 
(pixel_x<=531 & pixel_x>=530 & pixel_y >=106 & pixel_y <=121)|| 
(pixel_x<=539 & pixel_x>=538 & pixel_y >=106 & pixel_y <=109)|| 
(pixel_x<=539 & pixel_x>=538 & pixel_y >=118 & pixel_y <=121)|| 
//pixgen for "A"
(pixel_x<=495 & pixel_x>=492 & pixel_y >=140 & pixel_y <=141)|| 
(pixel_x<=497 & pixel_x>=496 & pixel_y >=142 & pixel_y <=143)|| 
(pixel_x<=491 & pixel_x>=490 & pixel_y >=142 & pixel_y <=143)|| 
(pixel_x<=499 & pixel_x>=498 & pixel_y >=144 & pixel_y <=153)|| 
(pixel_x<=489 & pixel_x>=488 & pixel_y >=144 & pixel_y <=153)|| 
(pixel_x<=499 & pixel_x>=488 & pixel_y >=148 & pixel_y <=149)|| 
(pixel_x<=501 & pixel_x>=496 & pixel_y >=154 & pixel_y <=155)|| 
(pixel_x<=491 & pixel_x>=486 & pixel_y >=154 & pixel_y <=155)|| 
//pixgen for "-"
(pixel_x<=507 & pixel_x>=504 & pixel_y >=146 & pixel_y <=147)|| 
//pixgen for "M"
(pixel_x<=527 & pixel_x>=522 & pixel_y >=132 & pixel_y <=135)|| 
(pixel_x<=515 & pixel_x>=510 & pixel_y >=132 & pixel_y <=135)|| 
(pixel_x<=527 & pixel_x>=522 & pixel_y >=160 & pixel_y <=163)|| 
(pixel_x<=515 & pixel_x>=510 & pixel_y >=160 & pixel_y <=163)|| 
(pixel_x<=513 & pixel_x>=512 & pixel_y >=132 & pixel_y <=163)|| 
(pixel_x<=525 & pixel_x>=524 & pixel_y >=132 & pixel_y <=163)|| 
(pixel_x<=515 & pixel_x>=514 & pixel_y >=140 & pixel_y <=143)|| 
(pixel_x<=523 & pixel_x>=522 & pixel_y >=140 & pixel_y <=143)|| 
(pixel_x<=517 & pixel_x>=516 & pixel_y >=144 & pixel_y <=147)|| 
(pixel_x<=521 & pixel_x>=520 & pixel_y >=144 & pixel_y <=147)|| 
(pixel_x<=519 & pixel_x>=518 & pixel_y >=148 & pixel_y <=155)|| 
//pixgen for "A"
(pixel_x<=539 & pixel_x>=536 & pixel_y >=132 & pixel_y <=135)|| 
(pixel_x<=541 & pixel_x>=540 & pixel_y >=136 & pixel_y <=139)|| 
(pixel_x<=535 & pixel_x>=534 & pixel_y >=136 & pixel_y <=139)|| 
(pixel_x<=543 & pixel_x>=542 & pixel_y >=140 & pixel_y <=163)|| 
(pixel_x<=533 & pixel_x>=532 & pixel_y >=140 & pixel_y <=163)|| 
(pixel_x<=543 & pixel_x>=532 & pixel_y >=148 & pixel_y <=151)|| 
(pixel_x<=545 & pixel_x>=540 & pixel_y >=160 & pixel_y <=163)|| 
(pixel_x<=535 & pixel_x>=530 & pixel_y >=160 & pixel_y <=163)|| 
//pixgen for "Z"
(pixel_x<=559 & pixel_x>=548 & pixel_y >=132 & pixel_y <=135)|| 
(pixel_x<=559 & pixel_x>=558 & pixel_y >=136 & pixel_y <=139)|| 
(pixel_x<=549 & pixel_x>=548 & pixel_y >=136 & pixel_y <=139)|| 
(pixel_x<=557 & pixel_x>=556 & pixel_y >=140 & pixel_y <=143)|| 
(pixel_x<=555 & pixel_x>=554 & pixel_y >=144 & pixel_y <=147)|| 
(pixel_x<=553 & pixel_x>=552 & pixel_y >=148 & pixel_y <=151)|| 
(pixel_x<=551 & pixel_x>=550 & pixel_y >=152 & pixel_y <=155)|| 
(pixel_x<=549 & pixel_x>=548 & pixel_y >=156 & pixel_y <=159)|| 
(pixel_x<=559 & pixel_x>=558 & pixel_y >=156 & pixel_y <=159)|| 
(pixel_x<=559 & pixel_x>=548 & pixel_y >=160 & pixel_y <=163)|| 
//pixgen for "E"
(pixel_x<=573 & pixel_x>=562 & pixel_y >=132 & pixel_y <=135)|| 
(pixel_x<=573 & pixel_x>=562 & pixel_y >=160 & pixel_y <=163)|| 
(pixel_x<=571 & pixel_x>=564 & pixel_y >=144 & pixel_y <=147)|| 
(pixel_x<=573 & pixel_x>=572 & pixel_y >=132 & pixel_y <=139)|| 
(pixel_x<=573 & pixel_x>=572 & pixel_y >=156 & pixel_y <=163)|| 
(pixel_x<=565 & pixel_x>=564 & pixel_y >=132 & pixel_y <=163)|| 
//pixgen for "-"
(pixel_x<=579 & pixel_x>=576 & pixel_y >=144 & pixel_y <=145)|| 
//pixgen for "I"
(pixel_x<=587 & pixel_x>=582 & pixel_y >=138 & pixel_y <=139)|| 
(pixel_x<=587 & pixel_x>=582 & pixel_y >=152 & pixel_y <=153)|| 
(pixel_x<=585 & pixel_x>=584 & pixel_y >=138 & pixel_y <=153)|| 
//pixgen for "N"
(pixel_x<=605 & pixel_x>=600 & pixel_y >=138 & pixel_y <=139)|| 
(pixel_x<=605 & pixel_x>=600 & pixel_y >=152 & pixel_y <=153)|| 
(pixel_x<=595 & pixel_x>=590 & pixel_y >=138 & pixel_y <=139)|| 
(pixel_x<=595 & pixel_x>=590 & pixel_y >=152 & pixel_y <=153)|| 
(pixel_x<=603 & pixel_x>=602 & pixel_y >=138 & pixel_y <=153)|| 
(pixel_x<=593 & pixel_x>=592 & pixel_y >=138 & pixel_y <=153)|| 
(pixel_x<=601 & pixel_x>=600 & pixel_y >=148 & pixel_y <=149)|| 
(pixel_x<=599 & pixel_x>=598 & pixel_y >=146 & pixel_y <=147)|| 
(pixel_x<=597 & pixel_x>=596 & pixel_y >=144 & pixel_y <=145)|| 
(pixel_x<=595 & pixel_x>=594 & pixel_y >=142 & pixel_y <=143)|| 
//pixgen for "G"
(pixel_x<=617 & pixel_x>=610 & pixel_y >=138 & pixel_y <=139)|| 
(pixel_x<=617 & pixel_x>=610 & pixel_y >=152 & pixel_y <=153)|| 
(pixel_x<=609 & pixel_x>=608 & pixel_y >=140 & pixel_y <=151)|| 
(pixel_x<=619 & pixel_x>=618 & pixel_y >=140 & pixel_y <=141)|| 
(pixel_x<=619 & pixel_x>=618 & pixel_y >=146 & pixel_y <=151)|| 
(pixel_x<=619 & pixel_x>=616 & pixel_y >=146 & pixel_y <=147)|| 
//pixgen for "G"
(pixel_x<=555 & pixel_x>=548 & pixel_y >=174 & pixel_y <=175)|| 
(pixel_x<=555 & pixel_x>=548 & pixel_y >=188 & pixel_y <=189)|| 
(pixel_x<=547 & pixel_x>=546 & pixel_y >=176 & pixel_y <=187)|| 
(pixel_x<=557 & pixel_x>=556 & pixel_y >=176 & pixel_y <=177)|| 
(pixel_x<=557 & pixel_x>=556 & pixel_y >=182 & pixel_y <=187)|| 
(pixel_x<=557 & pixel_x>=554 & pixel_y >=182 & pixel_y <=183)|| 
//pixgen for "A"
(pixel_x<=569 & pixel_x>=566 & pixel_y >=174 & pixel_y <=175)|| 
(pixel_x<=571 & pixel_x>=570 & pixel_y >=176 & pixel_y <=177)|| 
(pixel_x<=565 & pixel_x>=564 & pixel_y >=176 & pixel_y <=177)|| 
(pixel_x<=573 & pixel_x>=572 & pixel_y >=178 & pixel_y <=189)|| 
(pixel_x<=563 & pixel_x>=562 & pixel_y >=178 & pixel_y <=189)|| 
(pixel_x<=573 & pixel_x>=562 & pixel_y >=182 & pixel_y <=183)|| 
(pixel_x<=575 & pixel_x>=570 & pixel_y >=188 & pixel_y <=189)|| 
(pixel_x<=565 & pixel_x>=560 & pixel_y >=188 & pixel_y <=189)||
//pixgen for "M"
(pixel_x<=595 & pixel_x>=590 & pixel_y >=174 & pixel_y <=175)|| 
(pixel_x<=595 & pixel_x>=590 & pixel_y >=188 & pixel_y <=189)|| 
(pixel_x<=583 & pixel_x>=578 & pixel_y >=174 & pixel_y <=175)|| 
(pixel_x<=583 & pixel_x>=578 & pixel_y >=188 & pixel_y <=189)|| 
(pixel_x<=593 & pixel_x>=592 & pixel_y >=174 & pixel_y <=189)|| 
(pixel_x<=581 & pixel_x>=580 & pixel_y >=174 & pixel_y <=189)|| 
(pixel_x<=591 & pixel_x>=590 & pixel_y >=178 & pixel_y <=179)|| 
(pixel_x<=589 & pixel_x>=588 & pixel_y >=180 & pixel_y <=181)|| 
(pixel_x<=587 & pixel_x>=586 & pixel_y >=182 & pixel_y <=185)|| 
(pixel_x<=585 & pixel_x>=584 & pixel_y >=180 & pixel_y <=181)|| 
(pixel_x<=583 & pixel_x>=582 & pixel_y >=178 & pixel_y <=179)|| 
//pixgen for "E"
(pixel_x<=609 & pixel_x>=598 & pixel_y >=174 & pixel_y <=175)|| 
(pixel_x<=609 & pixel_x>=598 & pixel_y >=188 & pixel_y <=189)|| 
(pixel_x<=607 & pixel_x>=600 & pixel_y >=180 & pixel_y <=181)|| 
(pixel_x<=601 & pixel_x>=600 & pixel_y >=174 & pixel_y <=189)|| 
(pixel_x<=609 & pixel_x>=608 & pixel_y >=174 & pixel_y <=177)|| 
(pixel_x<=609 & pixel_x>=608 & pixel_y >=186 & pixel_y <=189)


 ? 4'h0:4'hF):(4'h0);

 green <= video_on ?(

(pixel_x<=463 & pixel_x>=16 & pixel_y >=16 & pixel_y <=23) || 

(pixel_x<=143 & pixel_x>=16 & pixel_y >=56 & pixel_y <=63) || 
(pixel_x<=383 & pixel_x>=256 & pixel_y >=56 & pixel_y <=63) || 

(pixel_x<=103 & pixel_x>=16 & pixel_y >=96 & pixel_y <=103) ||
(pixel_x<=303 & pixel_x>=176 & pixel_y >=96 & pixel_y <=103) || 
(pixel_x<=383 & pixel_x>=336 & pixel_y >=96 & pixel_y <=103)|| 

(pixel_x<=103 & pixel_x>=56 & pixel_y >=136 & pixel_y <=143) || 
(pixel_x<=263 & pixel_x>=136 & pixel_y >=136 & pixel_y <=143) ||
(pixel_x<=343 & pixel_x>=296 & pixel_y >=136 & pixel_y <=143) || 
(pixel_x<=423 & pixel_x>=376 & pixel_y >=136 & pixel_y <=143)|| 

(pixel_x<=103 & pixel_x>=56 & pixel_y >=176 & pixel_y <=183) || 
(pixel_x<=303 & pixel_x>=216 & pixel_y >=176 & pixel_y <=183) ||
(pixel_x<=463 & pixel_x>=416 & pixel_y >=176 & pixel_y <=183) || 

(pixel_x<=183 & pixel_x>=96 & pixel_y >=216 & pixel_y <=223)|| 
(pixel_x<=383 & pixel_x>=336 & pixel_y >=216 & pixel_y <=223) || 

(pixel_x<=63 & pixel_x>=16 & pixel_y >=256 & pixel_y <=263)||
(pixel_x<=223 & pixel_x>=136 & pixel_y >=256 & pixel_y <=263) || 
(pixel_x<=343 & pixel_x>=296 & pixel_y >=256 & pixel_y <=263)|| 
(pixel_x<=423 & pixel_x>=376 & pixel_y >=256 & pixel_y <=263) || 

(pixel_x<=183 & pixel_x>=136 & pixel_y >=296 & pixel_y <=303) ||
(pixel_x<=263 & pixel_x>=216 & pixel_y >=296 & pixel_y <=303) || 
(pixel_x<=463 & pixel_x>=336 & pixel_y >=296 & pixel_y <=303)|| 

(pixel_x<=143 & pixel_x>=96 & pixel_y >=336 & pixel_y <=343) || 
(pixel_x<=343 & pixel_x>=256 & pixel_y >=336 & pixel_y <=343) ||
(pixel_x<=423 & pixel_x>=376 & pixel_y >=336 & pixel_y <=343) || 

(pixel_x<=183 & pixel_x>=96 & pixel_y >=376 & pixel_y <=383)|| 
(pixel_x<=463 & pixel_x>=336 & pixel_y >=376 & pixel_y <=383) || 

(pixel_x<=223 & pixel_x>=136 & pixel_y >=416 & pixel_y <=423) ||
(pixel_x<=303 & pixel_x>=256 & pixel_y >=416 & pixel_y <=423) || 
(pixel_x<=463 & pixel_x>=376 & pixel_y >=416 & pixel_y <=423)|| 

(pixel_x<=463 & pixel_x>=16 & pixel_y >=456 & pixel_y <=463) ||




(pixel_x<=23 & pixel_x>=16 & pixel_y >=16 & pixel_y <=63) || 
(pixel_x<=23 & pixel_x>=16 & pixel_y >=96 & pixel_y <=463) || 

(pixel_x<=63 & pixel_x>=56 & pixel_y >=176 & pixel_y <=263) || 
(pixel_x<=63 & pixel_x>=56 & pixel_y >=296 & pixel_y <=463) ||

(pixel_x<=103 & pixel_x>=96 & pixel_y >=136 & pixel_y <=183) || 
(pixel_x<=103 & pixel_x>=96 & pixel_y >=216 & pixel_y <=343)|| 
(pixel_x<=103 & pixel_x>=96 & pixel_y >=376 & pixel_y <=423) || 

(pixel_x<=143 & pixel_x>=136 & pixel_y >=96 & pixel_y <=183) ||
(pixel_x<=143 & pixel_x>=136 & pixel_y >=256 & pixel_y <=303) || 
(pixel_x<=143 & pixel_x>=136 & pixel_y >=416 & pixel_y <=463)|| 

(pixel_x<=183 & pixel_x>=176 & pixel_y >=56 & pixel_y <=103) || 
(pixel_x<=183 & pixel_x>=176 & pixel_y >=136 & pixel_y <=223) ||
(pixel_x<=183 & pixel_x>=176 & pixel_y >=296 & pixel_y <=423) || 

(pixel_x<=223 & pixel_x>=216 & pixel_y >=16 & pixel_y <=63)|| 
(pixel_x<=223 & pixel_x>=216 & pixel_y >=176 & pixel_y <=223) || 
(pixel_x<=223 & pixel_x>=216 & pixel_y >=256 & pixel_y <=383)||

(pixel_x<=263 & pixel_x>=256 & pixel_y >=56 & pixel_y <=143) || 
(pixel_x<=263 & pixel_x>=256 & pixel_y >=176 & pixel_y <=303)|| 
(pixel_x<=263 & pixel_x>=256 & pixel_y >=336 & pixel_y <=423) || 

(pixel_x<=303 & pixel_x>=296 & pixel_y >=136 & pixel_y <=183) ||
(pixel_x<=303 & pixel_x>=296 & pixel_y >=216 & pixel_y <=303) || 
(pixel_x<=303 & pixel_x>=296 & pixel_y >=336 & pixel_y <=383)|| 

(pixel_x<=343 & pixel_x>=336 & pixel_y >=136 & pixel_y <=183) || 
(pixel_x<=343 & pixel_x>=336 & pixel_y >=256 & pixel_y <=343) ||
(pixel_x<=343 & pixel_x>=336 & pixel_y >=416 & pixel_y <=463) || 

(pixel_x<=383 & pixel_x>=376 & pixel_y >=16 & pixel_y <=63)|| 
(pixel_x<=383 & pixel_x>=376 & pixel_y >=96 & pixel_y <=183) || 
(pixel_x<=383 & pixel_x>=376 & pixel_y >=216 & pixel_y <=263) ||
(pixel_x<=383 & pixel_x>=376 & pixel_y >=336 & pixel_y <=383) || 

(pixel_x<=423 & pixel_x>=416 & pixel_y >=16 & pixel_y <=143) ||
(pixel_x<=423 & pixel_x>=416 & pixel_y >=176 & pixel_y <=263) || 

(pixel_x<=463 & pixel_x>=456 & pixel_y >=16 & pixel_y <=383)|| 
(pixel_x<=463 & pixel_x>=456 & pixel_y >=416 & pixel_y <=463) ||

//pixgen for game banner
//pixgen for "T"
(pixel_x<=507 & pixel_x>=494 & pixel_y >=106 & pixel_y <=107)|| 
(pixel_x<=503 & pixel_x>=498 & pixel_y >=120 & pixel_y <=121)|| 
(pixel_x<=495 & pixel_x>=494 & pixel_y >=106 & pixel_y <=109)|| 
(pixel_x<=507 & pixel_x>=506 & pixel_y >=106 & pixel_y <=109)|| 
(pixel_x<=501 & pixel_x>=500 & pixel_y >=106 & pixel_y <=121)||
//pixgen for "H"
(pixel_x<=515 & pixel_x>=510 & pixel_y >=106 & pixel_y <=107)|| 
(pixel_x<=525 & pixel_x>=520 & pixel_y >=106 & pixel_y <=107)|| 
(pixel_x<=515 & pixel_x>=510 & pixel_y >=120 & pixel_y <=121)|| 
(pixel_x<=525 & pixel_x>=520 & pixel_y >=120 & pixel_y <=121)|| 
(pixel_x<=523 & pixel_x>=512 & pixel_y >=112 & pixel_y <=113)|| 
(pixel_x<=513 & pixel_x>=512 & pixel_y >=106 & pixel_y <=121)|| 
(pixel_x<=523 & pixel_x>=522 & pixel_y >=106 & pixel_y <=121)|| 
//pixgen for "E"
(pixel_x<=539 & pixel_x>=528 & pixel_y >=106 & pixel_y <=107)|| 
(pixel_x<=539 & pixel_x>=528 & pixel_y >=120 & pixel_y <=121)|| 
(pixel_x<=537 & pixel_x>=530 & pixel_y >=112 & pixel_y <=113)|| 
(pixel_x<=531 & pixel_x>=530 & pixel_y >=106 & pixel_y <=121)|| 
(pixel_x<=539 & pixel_x>=538 & pixel_y >=106 & pixel_y <=109)|| 
(pixel_x<=539 & pixel_x>=538 & pixel_y >=118 & pixel_y <=121)|| 
//pixgen for "A"
(pixel_x<=495 & pixel_x>=492 & pixel_y >=140 & pixel_y <=141)|| 
(pixel_x<=497 & pixel_x>=496 & pixel_y >=142 & pixel_y <=143)|| 
(pixel_x<=491 & pixel_x>=490 & pixel_y >=142 & pixel_y <=143)|| 
(pixel_x<=499 & pixel_x>=498 & pixel_y >=144 & pixel_y <=153)|| 
(pixel_x<=489 & pixel_x>=488 & pixel_y >=144 & pixel_y <=153)|| 
(pixel_x<=499 & pixel_x>=488 & pixel_y >=148 & pixel_y <=149)|| 
(pixel_x<=501 & pixel_x>=496 & pixel_y >=154 & pixel_y <=155)|| 
(pixel_x<=491 & pixel_x>=486 & pixel_y >=154 & pixel_y <=155)|| 
//pixgen for "-"
(pixel_x<=507 & pixel_x>=504 & pixel_y >=146 & pixel_y <=147)|| 
//pixgen for "M"
(pixel_x<=527 & pixel_x>=522 & pixel_y >=132 & pixel_y <=135)|| 
(pixel_x<=515 & pixel_x>=510 & pixel_y >=132 & pixel_y <=135)|| 
(pixel_x<=527 & pixel_x>=522 & pixel_y >=160 & pixel_y <=163)|| 
(pixel_x<=515 & pixel_x>=510 & pixel_y >=160 & pixel_y <=163)|| 
(pixel_x<=513 & pixel_x>=512 & pixel_y >=132 & pixel_y <=163)|| 
(pixel_x<=525 & pixel_x>=524 & pixel_y >=132 & pixel_y <=163)|| 
(pixel_x<=515 & pixel_x>=514 & pixel_y >=140 & pixel_y <=143)|| 
(pixel_x<=523 & pixel_x>=522 & pixel_y >=140 & pixel_y <=143)|| 
(pixel_x<=517 & pixel_x>=516 & pixel_y >=144 & pixel_y <=147)|| 
(pixel_x<=521 & pixel_x>=520 & pixel_y >=144 & pixel_y <=147)|| 
(pixel_x<=519 & pixel_x>=518 & pixel_y >=148 & pixel_y <=155)|| 
//pixgen for "A"
(pixel_x<=539 & pixel_x>=536 & pixel_y >=132 & pixel_y <=135)|| 
(pixel_x<=541 & pixel_x>=540 & pixel_y >=136 & pixel_y <=139)|| 
(pixel_x<=535 & pixel_x>=534 & pixel_y >=136 & pixel_y <=139)|| 
(pixel_x<=543 & pixel_x>=542 & pixel_y >=140 & pixel_y <=163)|| 
(pixel_x<=533 & pixel_x>=532 & pixel_y >=140 & pixel_y <=163)|| 
(pixel_x<=543 & pixel_x>=532 & pixel_y >=148 & pixel_y <=151)|| 
(pixel_x<=545 & pixel_x>=540 & pixel_y >=160 & pixel_y <=163)|| 
(pixel_x<=535 & pixel_x>=530 & pixel_y >=160 & pixel_y <=163)|| 
//pixgen for "Z"
(pixel_x<=559 & pixel_x>=548 & pixel_y >=132 & pixel_y <=135)|| 
(pixel_x<=559 & pixel_x>=558 & pixel_y >=136 & pixel_y <=139)|| 
(pixel_x<=549 & pixel_x>=548 & pixel_y >=136 & pixel_y <=139)|| 
(pixel_x<=557 & pixel_x>=556 & pixel_y >=140 & pixel_y <=143)|| 
(pixel_x<=555 & pixel_x>=554 & pixel_y >=144 & pixel_y <=147)|| 
(pixel_x<=553 & pixel_x>=552 & pixel_y >=148 & pixel_y <=151)|| 
(pixel_x<=551 & pixel_x>=550 & pixel_y >=152 & pixel_y <=155)|| 
(pixel_x<=549 & pixel_x>=548 & pixel_y >=156 & pixel_y <=159)|| 
(pixel_x<=559 & pixel_x>=558 & pixel_y >=156 & pixel_y <=159)|| 
(pixel_x<=559 & pixel_x>=548 & pixel_y >=160 & pixel_y <=163)|| 
//pixgen for "E"
(pixel_x<=573 & pixel_x>=562 & pixel_y >=132 & pixel_y <=135)|| 
(pixel_x<=573 & pixel_x>=562 & pixel_y >=160 & pixel_y <=163)|| 
(pixel_x<=571 & pixel_x>=564 & pixel_y >=144 & pixel_y <=147)|| 
(pixel_x<=573 & pixel_x>=572 & pixel_y >=132 & pixel_y <=139)|| 
(pixel_x<=573 & pixel_x>=572 & pixel_y >=156 & pixel_y <=163)|| 
(pixel_x<=565 & pixel_x>=564 & pixel_y >=132 & pixel_y <=163)|| 
//pixgen for "-"
(pixel_x<=579 & pixel_x>=576 & pixel_y >=144 & pixel_y <=145)|| 
//pixgen for "I"
(pixel_x<=587 & pixel_x>=582 & pixel_y >=138 & pixel_y <=139)|| 
(pixel_x<=587 & pixel_x>=582 & pixel_y >=152 & pixel_y <=153)|| 
(pixel_x<=585 & pixel_x>=584 & pixel_y >=138 & pixel_y <=153)|| 
//pixgen for "N"
(pixel_x<=605 & pixel_x>=600 & pixel_y >=138 & pixel_y <=139)|| 
(pixel_x<=605 & pixel_x>=600 & pixel_y >=152 & pixel_y <=153)|| 
(pixel_x<=595 & pixel_x>=590 & pixel_y >=138 & pixel_y <=139)|| 
(pixel_x<=595 & pixel_x>=590 & pixel_y >=152 & pixel_y <=153)|| 
(pixel_x<=603 & pixel_x>=602 & pixel_y >=138 & pixel_y <=153)|| 
(pixel_x<=593 & pixel_x>=592 & pixel_y >=138 & pixel_y <=153)|| 
(pixel_x<=601 & pixel_x>=600 & pixel_y >=148 & pixel_y <=149)|| 
(pixel_x<=599 & pixel_x>=598 & pixel_y >=146 & pixel_y <=147)|| 
(pixel_x<=597 & pixel_x>=596 & pixel_y >=144 & pixel_y <=145)|| 
(pixel_x<=595 & pixel_x>=594 & pixel_y >=142 & pixel_y <=143)|| 
//pixgen for "G"
(pixel_x<=617 & pixel_x>=610 & pixel_y >=138 & pixel_y <=139)|| 
(pixel_x<=617 & pixel_x>=610 & pixel_y >=152 & pixel_y <=153)|| 
(pixel_x<=609 & pixel_x>=608 & pixel_y >=140 & pixel_y <=151)|| 
(pixel_x<=619 & pixel_x>=618 & pixel_y >=140 & pixel_y <=141)|| 
(pixel_x<=619 & pixel_x>=618 & pixel_y >=146 & pixel_y <=151)|| 
(pixel_x<=619 & pixel_x>=616 & pixel_y >=146 & pixel_y <=147)|| 
//pixgen for "G"
(pixel_x<=555 & pixel_x>=548 & pixel_y >=174 & pixel_y <=175)|| 
(pixel_x<=555 & pixel_x>=548 & pixel_y >=188 & pixel_y <=189)|| 
(pixel_x<=547 & pixel_x>=546 & pixel_y >=176 & pixel_y <=187)|| 
(pixel_x<=557 & pixel_x>=556 & pixel_y >=176 & pixel_y <=177)|| 
(pixel_x<=557 & pixel_x>=556 & pixel_y >=182 & pixel_y <=187)|| 
(pixel_x<=557 & pixel_x>=554 & pixel_y >=182 & pixel_y <=183)|| 
//pixgen for "A"
(pixel_x<=569 & pixel_x>=566 & pixel_y >=174 & pixel_y <=175)|| 
(pixel_x<=571 & pixel_x>=570 & pixel_y >=176 & pixel_y <=177)|| 
(pixel_x<=565 & pixel_x>=564 & pixel_y >=176 & pixel_y <=177)|| 
(pixel_x<=573 & pixel_x>=572 & pixel_y >=178 & pixel_y <=189)|| 
(pixel_x<=563 & pixel_x>=562 & pixel_y >=178 & pixel_y <=189)|| 
(pixel_x<=573 & pixel_x>=562 & pixel_y >=182 & pixel_y <=183)|| 
(pixel_x<=575 & pixel_x>=570 & pixel_y >=188 & pixel_y <=189)|| 
(pixel_x<=565 & pixel_x>=560 & pixel_y >=188 & pixel_y <=189)||
//pixgen for "M"
(pixel_x<=595 & pixel_x>=590 & pixel_y >=174 & pixel_y <=175)|| 
(pixel_x<=595 & pixel_x>=590 & pixel_y >=188 & pixel_y <=189)|| 
(pixel_x<=583 & pixel_x>=578 & pixel_y >=174 & pixel_y <=175)|| 
(pixel_x<=583 & pixel_x>=578 & pixel_y >=188 & pixel_y <=189)|| 
(pixel_x<=593 & pixel_x>=592 & pixel_y >=174 & pixel_y <=189)|| 
(pixel_x<=581 & pixel_x>=580 & pixel_y >=174 & pixel_y <=189)|| 
(pixel_x<=591 & pixel_x>=590 & pixel_y >=178 & pixel_y <=179)|| 
(pixel_x<=589 & pixel_x>=588 & pixel_y >=180 & pixel_y <=181)|| 
(pixel_x<=587 & pixel_x>=586 & pixel_y >=182 & pixel_y <=185)|| 
(pixel_x<=585 & pixel_x>=584 & pixel_y >=180 & pixel_y <=181)|| 
(pixel_x<=583 & pixel_x>=582 & pixel_y >=178 & pixel_y <=179)|| 
//pixgen for "E"
(pixel_x<=609 & pixel_x>=598 & pixel_y >=174 & pixel_y <=175)|| 
(pixel_x<=609 & pixel_x>=598 & pixel_y >=188 & pixel_y <=189)|| 
(pixel_x<=607 & pixel_x>=600 & pixel_y >=180 & pixel_y <=181)|| 
(pixel_x<=601 & pixel_x>=600 & pixel_y >=174 & pixel_y <=189)|| 
(pixel_x<=609 & pixel_x>=608 & pixel_y >=174 & pixel_y <=177)|| 
(pixel_x<=609 & pixel_x>=608 & pixel_y >=186 & pixel_y <=189)


 ? 4'h0:4'hF):(4'h0);


 blue <= video_on ? (

(pixel_x<=463 & pixel_x>=16 & pixel_y >=16 & pixel_y <=23) || 

(pixel_x<=143 & pixel_x>=16 & pixel_y >=56 & pixel_y <=63) || 
(pixel_x<=383 & pixel_x>=256 & pixel_y >=56 & pixel_y <=63) || 

(pixel_x<=103 & pixel_x>=16 & pixel_y >=96 & pixel_y <=103) ||
(pixel_x<=303 & pixel_x>=176 & pixel_y >=96 & pixel_y <=103) || 
(pixel_x<=383 & pixel_x>=336 & pixel_y >=96 & pixel_y <=103)|| 

(pixel_x<=103 & pixel_x>=56 & pixel_y >=136 & pixel_y <=143) || 
(pixel_x<=263 & pixel_x>=136 & pixel_y >=136 & pixel_y <=143) ||
(pixel_x<=343 & pixel_x>=296 & pixel_y >=136 & pixel_y <=143) || 
(pixel_x<=423 & pixel_x>=376 & pixel_y >=136 & pixel_y <=143)|| 

(pixel_x<=103 & pixel_x>=56 & pixel_y >=176 & pixel_y <=183) || 
(pixel_x<=303 & pixel_x>=216 & pixel_y >=176 & pixel_y <=183) ||
(pixel_x<=463 & pixel_x>=416 & pixel_y >=176 & pixel_y <=183) || 

(pixel_x<=183 & pixel_x>=96 & pixel_y >=216 & pixel_y <=223)|| 
(pixel_x<=383 & pixel_x>=336 & pixel_y >=216 & pixel_y <=223) || 

(pixel_x<=63 & pixel_x>=16 & pixel_y >=256 & pixel_y <=263)||
(pixel_x<=223 & pixel_x>=136 & pixel_y >=256 & pixel_y <=263) || 
(pixel_x<=343 & pixel_x>=296 & pixel_y >=256 & pixel_y <=263)|| 
(pixel_x<=423 & pixel_x>=376 & pixel_y >=256 & pixel_y <=263) || 

(pixel_x<=183 & pixel_x>=136 & pixel_y >=296 & pixel_y <=303) ||
(pixel_x<=263 & pixel_x>=216 & pixel_y >=296 & pixel_y <=303) || 
(pixel_x<=463 & pixel_x>=336 & pixel_y >=296 & pixel_y <=303)|| 

(pixel_x<=143 & pixel_x>=96 & pixel_y >=336 & pixel_y <=343) || 
(pixel_x<=343 & pixel_x>=256 & pixel_y >=336 & pixel_y <=343) ||
(pixel_x<=423 & pixel_x>=376 & pixel_y >=336 & pixel_y <=343) || 

(pixel_x<=183 & pixel_x>=96 & pixel_y >=376 & pixel_y <=383)|| 
(pixel_x<=463 & pixel_x>=336 & pixel_y >=376 & pixel_y <=383) || 

(pixel_x<=223 & pixel_x>=136 & pixel_y >=416 & pixel_y <=423) ||
(pixel_x<=303 & pixel_x>=256 & pixel_y >=416 & pixel_y <=423) || 
(pixel_x<=463 & pixel_x>=376 & pixel_y >=416 & pixel_y <=423)|| 

(pixel_x<=463 & pixel_x>=16 & pixel_y >=456 & pixel_y <=463) ||




(pixel_x<=23 & pixel_x>=16 & pixel_y >=16 & pixel_y <=63) || 
(pixel_x<=23 & pixel_x>=16 & pixel_y >=96 & pixel_y <=463) || 

(pixel_x<=63 & pixel_x>=56 & pixel_y >=176 & pixel_y <=263) || 
(pixel_x<=63 & pixel_x>=56 & pixel_y >=296 & pixel_y <=463) ||

(pixel_x<=103 & pixel_x>=96 & pixel_y >=136 & pixel_y <=183) || 
(pixel_x<=103 & pixel_x>=96 & pixel_y >=216 & pixel_y <=343)|| 
(pixel_x<=103 & pixel_x>=96 & pixel_y >=376 & pixel_y <=423) || 

(pixel_x<=143 & pixel_x>=136 & pixel_y >=96 & pixel_y <=183) ||
(pixel_x<=143 & pixel_x>=136 & pixel_y >=256 & pixel_y <=303) || 
(pixel_x<=143 & pixel_x>=136 & pixel_y >=416 & pixel_y <=463)|| 

(pixel_x<=183 & pixel_x>=176 & pixel_y >=56 & pixel_y <=103) || 
(pixel_x<=183 & pixel_x>=176 & pixel_y >=136 & pixel_y <=223) ||
(pixel_x<=183 & pixel_x>=176 & pixel_y >=296 & pixel_y <=423) || 

(pixel_x<=223 & pixel_x>=216 & pixel_y >=16 & pixel_y <=63)|| 
(pixel_x<=223 & pixel_x>=216 & pixel_y >=176 & pixel_y <=223) || 
(pixel_x<=223 & pixel_x>=216 & pixel_y >=256 & pixel_y <=383)||

(pixel_x<=263 & pixel_x>=256 & pixel_y >=56 & pixel_y <=143) || 
(pixel_x<=263 & pixel_x>=256 & pixel_y >=176 & pixel_y <=303)|| 
(pixel_x<=263 & pixel_x>=256 & pixel_y >=336 & pixel_y <=423) || 

(pixel_x<=303 & pixel_x>=296 & pixel_y >=136 & pixel_y <=183) ||
(pixel_x<=303 & pixel_x>=296 & pixel_y >=216 & pixel_y <=303) || 
(pixel_x<=303 & pixel_x>=296 & pixel_y >=336 & pixel_y <=383)|| 

(pixel_x<=343 & pixel_x>=336 & pixel_y >=136 & pixel_y <=183) || 
(pixel_x<=343 & pixel_x>=336 & pixel_y >=256 & pixel_y <=343) ||
(pixel_x<=343 & pixel_x>=336 & pixel_y >=416 & pixel_y <=463) || 

(pixel_x<=383 & pixel_x>=376 & pixel_y >=16 & pixel_y <=63)|| 
(pixel_x<=383 & pixel_x>=376 & pixel_y >=96 & pixel_y <=183) || 
(pixel_x<=383 & pixel_x>=376 & pixel_y >=216 & pixel_y <=263) ||
(pixel_x<=383 & pixel_x>=376 & pixel_y >=336 & pixel_y <=383) || 

(pixel_x<=423 & pixel_x>=416 & pixel_y >=16 & pixel_y <=143) ||
(pixel_x<=423 & pixel_x>=416 & pixel_y >=176 & pixel_y <=263) || 

(pixel_x<=463 & pixel_x>=456 & pixel_y >=16 & pixel_y <=383)|| 
(pixel_x<=463 & pixel_x>=456 & pixel_y >=416 & pixel_y <=463) ||

//pixgen for game banner

//pixgen for "T"
(pixel_x<=507 & pixel_x>=494 & pixel_y >=106 & pixel_y <=107)|| 
(pixel_x<=503 & pixel_x>=498 & pixel_y >=120 & pixel_y <=121)|| 
(pixel_x<=495 & pixel_x>=494 & pixel_y >=106 & pixel_y <=109)|| 
(pixel_x<=507 & pixel_x>=506 & pixel_y >=106 & pixel_y <=109)|| 
(pixel_x<=501 & pixel_x>=500 & pixel_y >=106 & pixel_y <=121)||
//pixgen for "H"
(pixel_x<=515 & pixel_x>=510 & pixel_y >=106 & pixel_y <=107)|| 
(pixel_x<=525 & pixel_x>=520 & pixel_y >=106 & pixel_y <=107)|| 
(pixel_x<=515 & pixel_x>=510 & pixel_y >=120 & pixel_y <=121)|| 
(pixel_x<=525 & pixel_x>=520 & pixel_y >=120 & pixel_y <=121)|| 
(pixel_x<=523 & pixel_x>=512 & pixel_y >=112 & pixel_y <=113)|| 
(pixel_x<=513 & pixel_x>=512 & pixel_y >=106 & pixel_y <=121)|| 
(pixel_x<=523 & pixel_x>=522 & pixel_y >=106 & pixel_y <=121)|| 
//pixgen for "E"
(pixel_x<=539 & pixel_x>=528 & pixel_y >=106 & pixel_y <=107)|| 
(pixel_x<=539 & pixel_x>=528 & pixel_y >=120 & pixel_y <=121)|| 
(pixel_x<=537 & pixel_x>=530 & pixel_y >=112 & pixel_y <=113)|| 
(pixel_x<=531 & pixel_x>=530 & pixel_y >=106 & pixel_y <=121)|| 
(pixel_x<=539 & pixel_x>=538 & pixel_y >=106 & pixel_y <=109)|| 
(pixel_x<=539 & pixel_x>=538 & pixel_y >=118 & pixel_y <=121)|| 
//pixgen for "A"
(pixel_x<=495 & pixel_x>=492 & pixel_y >=140 & pixel_y <=141)|| 
(pixel_x<=497 & pixel_x>=496 & pixel_y >=142 & pixel_y <=143)|| 
(pixel_x<=491 & pixel_x>=490 & pixel_y >=142 & pixel_y <=143)|| 
(pixel_x<=499 & pixel_x>=498 & pixel_y >=144 & pixel_y <=153)|| 
(pixel_x<=489 & pixel_x>=488 & pixel_y >=144 & pixel_y <=153)|| 
(pixel_x<=499 & pixel_x>=488 & pixel_y >=148 & pixel_y <=149)|| 
(pixel_x<=501 & pixel_x>=496 & pixel_y >=154 & pixel_y <=155)|| 
(pixel_x<=491 & pixel_x>=486 & pixel_y >=154 & pixel_y <=155)|| 
//pixgen for "-"
(pixel_x<=507 & pixel_x>=504 & pixel_y >=146 & pixel_y <=147)|| 
//pixgen for "M"
(pixel_x<=527 & pixel_x>=522 & pixel_y >=132 & pixel_y <=135)|| 
(pixel_x<=515 & pixel_x>=510 & pixel_y >=132 & pixel_y <=135)|| 
(pixel_x<=527 & pixel_x>=522 & pixel_y >=160 & pixel_y <=163)|| 
(pixel_x<=515 & pixel_x>=510 & pixel_y >=160 & pixel_y <=163)|| 
(pixel_x<=513 & pixel_x>=512 & pixel_y >=132 & pixel_y <=163)|| 
(pixel_x<=525 & pixel_x>=524 & pixel_y >=132 & pixel_y <=163)|| 
(pixel_x<=515 & pixel_x>=514 & pixel_y >=140 & pixel_y <=143)|| 
(pixel_x<=523 & pixel_x>=522 & pixel_y >=140 & pixel_y <=143)|| 
(pixel_x<=517 & pixel_x>=516 & pixel_y >=144 & pixel_y <=147)|| 
(pixel_x<=521 & pixel_x>=520 & pixel_y >=144 & pixel_y <=147)|| 
(pixel_x<=519 & pixel_x>=518 & pixel_y >=148 & pixel_y <=155)|| 
//pixgen for "A"
(pixel_x<=539 & pixel_x>=536 & pixel_y >=132 & pixel_y <=135)|| 
(pixel_x<=541 & pixel_x>=540 & pixel_y >=136 & pixel_y <=139)|| 
(pixel_x<=535 & pixel_x>=534 & pixel_y >=136 & pixel_y <=139)|| 
(pixel_x<=543 & pixel_x>=542 & pixel_y >=140 & pixel_y <=163)|| 
(pixel_x<=533 & pixel_x>=532 & pixel_y >=140 & pixel_y <=163)|| 
(pixel_x<=543 & pixel_x>=532 & pixel_y >=148 & pixel_y <=151)|| 
(pixel_x<=545 & pixel_x>=540 & pixel_y >=160 & pixel_y <=163)|| 
(pixel_x<=535 & pixel_x>=530 & pixel_y >=160 & pixel_y <=163)|| 
//pixgen for "Z"
(pixel_x<=559 & pixel_x>=548 & pixel_y >=132 & pixel_y <=135)|| 
(pixel_x<=559 & pixel_x>=558 & pixel_y >=136 & pixel_y <=139)|| 
(pixel_x<=549 & pixel_x>=548 & pixel_y >=136 & pixel_y <=139)|| 
(pixel_x<=557 & pixel_x>=556 & pixel_y >=140 & pixel_y <=143)|| 
(pixel_x<=555 & pixel_x>=554 & pixel_y >=144 & pixel_y <=147)|| 
(pixel_x<=553 & pixel_x>=552 & pixel_y >=148 & pixel_y <=151)|| 
(pixel_x<=551 & pixel_x>=550 & pixel_y >=152 & pixel_y <=155)|| 
(pixel_x<=549 & pixel_x>=548 & pixel_y >=156 & pixel_y <=159)|| 
(pixel_x<=559 & pixel_x>=558 & pixel_y >=156 & pixel_y <=159)|| 
(pixel_x<=559 & pixel_x>=548 & pixel_y >=160 & pixel_y <=163)|| 
//pixgen for "E"
(pixel_x<=573 & pixel_x>=562 & pixel_y >=132 & pixel_y <=135)|| 
(pixel_x<=573 & pixel_x>=562 & pixel_y >=160 & pixel_y <=163)|| 
(pixel_x<=571 & pixel_x>=564 & pixel_y >=144 & pixel_y <=147)|| 
(pixel_x<=573 & pixel_x>=572 & pixel_y >=132 & pixel_y <=139)|| 
(pixel_x<=573 & pixel_x>=572 & pixel_y >=156 & pixel_y <=163)|| 
(pixel_x<=565 & pixel_x>=564 & pixel_y >=132 & pixel_y <=163)|| 
//pixgen for "-"
(pixel_x<=579 & pixel_x>=576 & pixel_y >=144 & pixel_y <=145)|| 
//pixgen for "I"
(pixel_x<=587 & pixel_x>=582 & pixel_y >=138 & pixel_y <=139)|| 
(pixel_x<=587 & pixel_x>=582 & pixel_y >=152 & pixel_y <=153)|| 
(pixel_x<=585 & pixel_x>=584 & pixel_y >=138 & pixel_y <=153)|| 
//pixgen for "N"
(pixel_x<=605 & pixel_x>=600 & pixel_y >=138 & pixel_y <=139)|| 
(pixel_x<=605 & pixel_x>=600 & pixel_y >=152 & pixel_y <=153)|| 
(pixel_x<=595 & pixel_x>=590 & pixel_y >=138 & pixel_y <=139)|| 
(pixel_x<=595 & pixel_x>=590 & pixel_y >=152 & pixel_y <=153)|| 
(pixel_x<=603 & pixel_x>=602 & pixel_y >=138 & pixel_y <=153)|| 
(pixel_x<=593 & pixel_x>=592 & pixel_y >=138 & pixel_y <=153)|| 
(pixel_x<=601 & pixel_x>=600 & pixel_y >=148 & pixel_y <=149)|| 
(pixel_x<=599 & pixel_x>=598 & pixel_y >=146 & pixel_y <=147)|| 
(pixel_x<=597 & pixel_x>=596 & pixel_y >=144 & pixel_y <=145)|| 
(pixel_x<=595 & pixel_x>=594 & pixel_y >=142 & pixel_y <=143)|| 
//pixgen for "G"
(pixel_x<=617 & pixel_x>=610 & pixel_y >=138 & pixel_y <=139)|| 
(pixel_x<=617 & pixel_x>=610 & pixel_y >=152 & pixel_y <=153)|| 
(pixel_x<=609 & pixel_x>=608 & pixel_y >=140 & pixel_y <=151)|| 
(pixel_x<=619 & pixel_x>=618 & pixel_y >=140 & pixel_y <=141)|| 
(pixel_x<=619 & pixel_x>=618 & pixel_y >=146 & pixel_y <=151)|| 
(pixel_x<=619 & pixel_x>=616 & pixel_y >=146 & pixel_y <=147)|| 
//pixgen for "G"
(pixel_x<=555 & pixel_x>=548 & pixel_y >=174 & pixel_y <=175)|| 
(pixel_x<=555 & pixel_x>=548 & pixel_y >=188 & pixel_y <=189)|| 
(pixel_x<=547 & pixel_x>=546 & pixel_y >=176 & pixel_y <=187)|| 
(pixel_x<=557 & pixel_x>=556 & pixel_y >=176 & pixel_y <=177)|| 
(pixel_x<=557 & pixel_x>=556 & pixel_y >=182 & pixel_y <=187)|| 
(pixel_x<=557 & pixel_x>=554 & pixel_y >=182 & pixel_y <=183)|| 
//pixgen for "A"
(pixel_x<=569 & pixel_x>=566 & pixel_y >=174 & pixel_y <=175)|| 
(pixel_x<=571 & pixel_x>=570 & pixel_y >=176 & pixel_y <=177)|| 
(pixel_x<=565 & pixel_x>=564 & pixel_y >=176 & pixel_y <=177)|| 
(pixel_x<=573 & pixel_x>=572 & pixel_y >=178 & pixel_y <=189)|| 
(pixel_x<=563 & pixel_x>=562 & pixel_y >=178 & pixel_y <=189)|| 
(pixel_x<=573 & pixel_x>=562 & pixel_y >=182 & pixel_y <=183)|| 
(pixel_x<=575 & pixel_x>=570 & pixel_y >=188 & pixel_y <=189)|| 
(pixel_x<=565 & pixel_x>=560 & pixel_y >=188 & pixel_y <=189)||
//pixgen for "M"
(pixel_x<=595 & pixel_x>=590 & pixel_y >=174 & pixel_y <=175)|| 
(pixel_x<=595 & pixel_x>=590 & pixel_y >=188 & pixel_y <=189)|| 
(pixel_x<=583 & pixel_x>=578 & pixel_y >=174 & pixel_y <=175)|| 
(pixel_x<=583 & pixel_x>=578 & pixel_y >=188 & pixel_y <=189)|| 
(pixel_x<=593 & pixel_x>=592 & pixel_y >=174 & pixel_y <=189)|| 
(pixel_x<=581 & pixel_x>=580 & pixel_y >=174 & pixel_y <=189)|| 
(pixel_x<=591 & pixel_x>=590 & pixel_y >=178 & pixel_y <=179)|| 
(pixel_x<=589 & pixel_x>=588 & pixel_y >=180 & pixel_y <=181)|| 
(pixel_x<=587 & pixel_x>=586 & pixel_y >=182 & pixel_y <=185)|| 
(pixel_x<=585 & pixel_x>=584 & pixel_y >=180 & pixel_y <=181)|| 
(pixel_x<=583 & pixel_x>=582 & pixel_y >=178 & pixel_y <=179)|| 
//pixgen for "E"
(pixel_x<=609 & pixel_x>=598 & pixel_y >=174 & pixel_y <=175)|| 
(pixel_x<=609 & pixel_x>=598 & pixel_y >=188 & pixel_y <=189)|| 
(pixel_x<=607 & pixel_x>=600 & pixel_y >=180 & pixel_y <=181)|| 
(pixel_x<=601 & pixel_x>=600 & pixel_y >=174 & pixel_y <=189)|| 
(pixel_x<=609 & pixel_x>=608 & pixel_y >=174 & pixel_y <=177)|| 
(pixel_x<=609 & pixel_x>=608 & pixel_y >=186 & pixel_y <=189)

 ? 4'h0:4'hF):(4'h0);
 if (x2 >= 464) //& slow_clk <= 16'b11011010111111)
 begin
 red <= video_on ? (
 
 //pixgen for horizontal red lines

(pixel_x<=463 & pixel_x>=16 & pixel_y >=16 & pixel_y <=23) || 

(pixel_x<=143 & pixel_x>=16 & pixel_y >=56 & pixel_y <=63) || 
(pixel_x<=383 & pixel_x>=256 & pixel_y >=56 & pixel_y <=63) || 

(pixel_x<=103 & pixel_x>=16 & pixel_y >=96 & pixel_y <=103) ||
(pixel_x<=303 & pixel_x>=176 & pixel_y >=96 & pixel_y <=103) || 
(pixel_x<=383 & pixel_x>=336 & pixel_y >=96 & pixel_y <=103)|| 

(pixel_x<=103 & pixel_x>=56 & pixel_y >=136 & pixel_y <=143) || 
(pixel_x<=263 & pixel_x>=136 & pixel_y >=136 & pixel_y <=143) ||
(pixel_x<=343 & pixel_x>=296 & pixel_y >=136 & pixel_y <=143) || 
(pixel_x<=423 & pixel_x>=376 & pixel_y >=136 & pixel_y <=143)|| 

(pixel_x<=103 & pixel_x>=56 & pixel_y >=176 & pixel_y <=183) || 
(pixel_x<=303 & pixel_x>=216 & pixel_y >=176 & pixel_y <=183) ||
(pixel_x<=463 & pixel_x>=416 & pixel_y >=176 & pixel_y <=183) || 

(pixel_x<=183 & pixel_x>=96 & pixel_y >=216 & pixel_y <=223)|| 
(pixel_x<=383 & pixel_x>=336 & pixel_y >=216 & pixel_y <=223) || 

(pixel_x<=63 & pixel_x>=16 & pixel_y >=256 & pixel_y <=263)||
(pixel_x<=223 & pixel_x>=136 & pixel_y >=256 & pixel_y <=263) || 
(pixel_x<=343 & pixel_x>=296 & pixel_y >=256 & pixel_y <=263)|| 
(pixel_x<=423 & pixel_x>=376 & pixel_y >=256 & pixel_y <=263) || 

(pixel_x<=183 & pixel_x>=136 & pixel_y >=296 & pixel_y <=303) ||
(pixel_x<=263 & pixel_x>=216 & pixel_y >=296 & pixel_y <=303) || 
(pixel_x<=463 & pixel_x>=336 & pixel_y >=296 & pixel_y <=303)|| 

(pixel_x<=143 & pixel_x>=96 & pixel_y >=336 & pixel_y <=343) || 
(pixel_x<=343 & pixel_x>=256 & pixel_y >=336 & pixel_y <=343) ||
(pixel_x<=423 & pixel_x>=376 & pixel_y >=336 & pixel_y <=343) || 

(pixel_x<=183 & pixel_x>=96 & pixel_y >=376 & pixel_y <=383)|| 
(pixel_x<=463 & pixel_x>=336 & pixel_y >=376 & pixel_y <=383) || 

(pixel_x<=223 & pixel_x>=136 & pixel_y >=416 & pixel_y <=423) ||
(pixel_x<=303 & pixel_x>=256 & pixel_y >=416 & pixel_y <=423) || 
(pixel_x<=463 & pixel_x>=376 & pixel_y >=416 & pixel_y <=423)|| 

(pixel_x<=463 & pixel_x>=16 & pixel_y >=456 & pixel_y <=463) ||

//pixgen for vertical red lines

(pixel_x<=23 & pixel_x>=16 & pixel_y >=16 & pixel_y <=63) || 
(pixel_x<=23 & pixel_x>=16 & pixel_y >=96 & pixel_y <=463) || 

(pixel_x<=63 & pixel_x>=56 & pixel_y >=176 & pixel_y <=263) || 
(pixel_x<=63 & pixel_x>=56 & pixel_y >=296 & pixel_y <=463) ||

(pixel_x<=103 & pixel_x>=96 & pixel_y >=136 & pixel_y <=183) || 
(pixel_x<=103 & pixel_x>=96 & pixel_y >=216 & pixel_y <=343)|| 
(pixel_x<=103 & pixel_x>=96 & pixel_y >=376 & pixel_y <=423) || 

(pixel_x<=143 & pixel_x>=136 & pixel_y >=96 & pixel_y <=183) ||
(pixel_x<=143 & pixel_x>=136 & pixel_y >=256 & pixel_y <=303) || 
(pixel_x<=143 & pixel_x>=136 & pixel_y >=416 & pixel_y <=463)|| 

(pixel_x<=183 & pixel_x>=176 & pixel_y >=56 & pixel_y <=103) || 
(pixel_x<=183 & pixel_x>=176 & pixel_y >=136 & pixel_y <=223) ||
(pixel_x<=183 & pixel_x>=176 & pixel_y >=296 & pixel_y <=423) || 

(pixel_x<=223 & pixel_x>=216 & pixel_y >=16 & pixel_y <=63)|| 
(pixel_x<=223 & pixel_x>=216 & pixel_y >=176 & pixel_y <=223) || 
(pixel_x<=223 & pixel_x>=216 & pixel_y >=256 & pixel_y <=383)||

(pixel_x<=263 & pixel_x>=256 & pixel_y >=56 & pixel_y <=143) || 
(pixel_x<=263 & pixel_x>=256 & pixel_y >=176 & pixel_y <=303)|| 
(pixel_x<=263 & pixel_x>=256 & pixel_y >=336 & pixel_y <=423) || 

(pixel_x<=303 & pixel_x>=296 & pixel_y >=136 & pixel_y <=183) ||
(pixel_x<=303 & pixel_x>=296 & pixel_y >=216 & pixel_y <=303) || 
(pixel_x<=303 & pixel_x>=296 & pixel_y >=336 & pixel_y <=383)|| 

(pixel_x<=343 & pixel_x>=336 & pixel_y >=136 & pixel_y <=183) || 
(pixel_x<=343 & pixel_x>=336 & pixel_y >=256 & pixel_y <=343) ||
(pixel_x<=343 & pixel_x>=336 & pixel_y >=416 & pixel_y <=463) || 

(pixel_x<=383 & pixel_x>=376 & pixel_y >=16 & pixel_y <=63)|| 
(pixel_x<=383 & pixel_x>=376 & pixel_y >=96 & pixel_y <=183) || 
(pixel_x<=383 & pixel_x>=376 & pixel_y >=216 & pixel_y <=263) ||
(pixel_x<=383 & pixel_x>=376 & pixel_y >=336 & pixel_y <=383) || 

(pixel_x<=423 & pixel_x>=416 & pixel_y >=16 & pixel_y <=143) ||
(pixel_x<=423 & pixel_x>=416 & pixel_y >=176 & pixel_y <=263) || 

(pixel_x<=463 & pixel_x>=456 & pixel_y >=16 & pixel_y <=383)|| 
(pixel_x<=463 & pixel_x>=456 & pixel_y >=416 & pixel_y <=463) ||

//pixgen for game banner

//pixgen for "T"
(pixel_x<=507 & pixel_x>=494 & pixel_y >=106 & pixel_y <=107)|| 
(pixel_x<=503 & pixel_x>=498 & pixel_y >=120 & pixel_y <=121)|| 
(pixel_x<=495 & pixel_x>=494 & pixel_y >=106 & pixel_y <=109)|| 
(pixel_x<=507 & pixel_x>=506 & pixel_y >=106 & pixel_y <=109)|| 
(pixel_x<=501 & pixel_x>=500 & pixel_y >=106 & pixel_y <=121)||
//pixgen for "H"
(pixel_x<=515 & pixel_x>=510 & pixel_y >=106 & pixel_y <=107)|| 
(pixel_x<=525 & pixel_x>=520 & pixel_y >=106 & pixel_y <=107)|| 
(pixel_x<=515 & pixel_x>=510 & pixel_y >=120 & pixel_y <=121)|| 
(pixel_x<=525 & pixel_x>=520 & pixel_y >=120 & pixel_y <=121)|| 
(pixel_x<=523 & pixel_x>=512 & pixel_y >=112 & pixel_y <=113)|| 
(pixel_x<=513 & pixel_x>=512 & pixel_y >=106 & pixel_y <=121)|| 
(pixel_x<=523 & pixel_x>=522 & pixel_y >=106 & pixel_y <=121)|| 
//pixgen for "E"
(pixel_x<=539 & pixel_x>=528 & pixel_y >=106 & pixel_y <=107)|| 
(pixel_x<=539 & pixel_x>=528 & pixel_y >=120 & pixel_y <=121)|| 
(pixel_x<=537 & pixel_x>=530 & pixel_y >=112 & pixel_y <=113)|| 
(pixel_x<=531 & pixel_x>=530 & pixel_y >=106 & pixel_y <=121)|| 
(pixel_x<=539 & pixel_x>=538 & pixel_y >=106 & pixel_y <=109)|| 
(pixel_x<=539 & pixel_x>=538 & pixel_y >=118 & pixel_y <=121)|| 
//pixgen for "A"
(pixel_x<=495 & pixel_x>=492 & pixel_y >=140 & pixel_y <=141)|| 
(pixel_x<=497 & pixel_x>=496 & pixel_y >=142 & pixel_y <=143)|| 
(pixel_x<=491 & pixel_x>=490 & pixel_y >=142 & pixel_y <=143)|| 
(pixel_x<=499 & pixel_x>=498 & pixel_y >=144 & pixel_y <=153)|| 
(pixel_x<=489 & pixel_x>=488 & pixel_y >=144 & pixel_y <=153)|| 
(pixel_x<=499 & pixel_x>=488 & pixel_y >=148 & pixel_y <=149)|| 
(pixel_x<=501 & pixel_x>=496 & pixel_y >=154 & pixel_y <=155)|| 
(pixel_x<=491 & pixel_x>=486 & pixel_y >=154 & pixel_y <=155)|| 
//pixgen for "-"
(pixel_x<=507 & pixel_x>=504 & pixel_y >=146 & pixel_y <=147)|| 
//pixgen for "M"
(pixel_x<=527 & pixel_x>=522 & pixel_y >=132 & pixel_y <=135)|| 
(pixel_x<=515 & pixel_x>=510 & pixel_y >=132 & pixel_y <=135)|| 
(pixel_x<=527 & pixel_x>=522 & pixel_y >=160 & pixel_y <=163)|| 
(pixel_x<=515 & pixel_x>=510 & pixel_y >=160 & pixel_y <=163)|| 
(pixel_x<=513 & pixel_x>=512 & pixel_y >=132 & pixel_y <=163)|| 
(pixel_x<=525 & pixel_x>=524 & pixel_y >=132 & pixel_y <=163)|| 
(pixel_x<=515 & pixel_x>=514 & pixel_y >=140 & pixel_y <=143)|| 
(pixel_x<=523 & pixel_x>=522 & pixel_y >=140 & pixel_y <=143)|| 
(pixel_x<=517 & pixel_x>=516 & pixel_y >=144 & pixel_y <=147)|| 
(pixel_x<=521 & pixel_x>=520 & pixel_y >=144 & pixel_y <=147)|| 
(pixel_x<=519 & pixel_x>=518 & pixel_y >=148 & pixel_y <=155)|| 
//pixgen for "A"
(pixel_x<=539 & pixel_x>=536 & pixel_y >=132 & pixel_y <=135)|| 
(pixel_x<=541 & pixel_x>=540 & pixel_y >=136 & pixel_y <=139)|| 
(pixel_x<=535 & pixel_x>=534 & pixel_y >=136 & pixel_y <=139)|| 
(pixel_x<=543 & pixel_x>=542 & pixel_y >=140 & pixel_y <=163)|| 
(pixel_x<=533 & pixel_x>=532 & pixel_y >=140 & pixel_y <=163)|| 
(pixel_x<=543 & pixel_x>=532 & pixel_y >=148 & pixel_y <=151)|| 
(pixel_x<=545 & pixel_x>=540 & pixel_y >=160 & pixel_y <=163)|| 
(pixel_x<=535 & pixel_x>=530 & pixel_y >=160 & pixel_y <=163)|| 
//pixgen for "Z"
(pixel_x<=559 & pixel_x>=548 & pixel_y >=132 & pixel_y <=135)|| 
(pixel_x<=559 & pixel_x>=558 & pixel_y >=136 & pixel_y <=139)|| 
(pixel_x<=549 & pixel_x>=548 & pixel_y >=136 & pixel_y <=139)|| 
(pixel_x<=557 & pixel_x>=556 & pixel_y >=140 & pixel_y <=143)|| 
(pixel_x<=555 & pixel_x>=554 & pixel_y >=144 & pixel_y <=147)|| 
(pixel_x<=553 & pixel_x>=552 & pixel_y >=148 & pixel_y <=151)|| 
(pixel_x<=551 & pixel_x>=550 & pixel_y >=152 & pixel_y <=155)|| 
(pixel_x<=549 & pixel_x>=548 & pixel_y >=156 & pixel_y <=159)|| 
(pixel_x<=559 & pixel_x>=558 & pixel_y >=156 & pixel_y <=159)|| 
(pixel_x<=559 & pixel_x>=548 & pixel_y >=160 & pixel_y <=163)|| 
//pixgen for "E"
(pixel_x<=573 & pixel_x>=562 & pixel_y >=132 & pixel_y <=135)|| 
(pixel_x<=573 & pixel_x>=562 & pixel_y >=160 & pixel_y <=163)|| 
(pixel_x<=571 & pixel_x>=564 & pixel_y >=144 & pixel_y <=147)|| 
(pixel_x<=573 & pixel_x>=572 & pixel_y >=132 & pixel_y <=139)|| 
(pixel_x<=573 & pixel_x>=572 & pixel_y >=156 & pixel_y <=163)|| 
(pixel_x<=565 & pixel_x>=564 & pixel_y >=132 & pixel_y <=163)|| 
//pixgen for "-"
(pixel_x<=579 & pixel_x>=576 & pixel_y >=144 & pixel_y <=145)|| 
//pixgen for "I"
(pixel_x<=587 & pixel_x>=582 & pixel_y >=138 & pixel_y <=139)|| 
(pixel_x<=587 & pixel_x>=582 & pixel_y >=152 & pixel_y <=153)|| 
(pixel_x<=585 & pixel_x>=584 & pixel_y >=138 & pixel_y <=153)|| 
//pixgen for "N"
(pixel_x<=605 & pixel_x>=600 & pixel_y >=138 & pixel_y <=139)|| 
(pixel_x<=605 & pixel_x>=600 & pixel_y >=152 & pixel_y <=153)|| 
(pixel_x<=595 & pixel_x>=590 & pixel_y >=138 & pixel_y <=139)|| 
(pixel_x<=595 & pixel_x>=590 & pixel_y >=152 & pixel_y <=153)|| 
(pixel_x<=603 & pixel_x>=602 & pixel_y >=138 & pixel_y <=153)|| 
(pixel_x<=593 & pixel_x>=592 & pixel_y >=138 & pixel_y <=153)|| 
(pixel_x<=601 & pixel_x>=600 & pixel_y >=148 & pixel_y <=149)|| 
(pixel_x<=599 & pixel_x>=598 & pixel_y >=146 & pixel_y <=147)|| 
(pixel_x<=597 & pixel_x>=596 & pixel_y >=144 & pixel_y <=145)|| 
(pixel_x<=595 & pixel_x>=594 & pixel_y >=142 & pixel_y <=143)|| 
//pixgen for "G"
(pixel_x<=617 & pixel_x>=610 & pixel_y >=138 & pixel_y <=139)|| 
(pixel_x<=617 & pixel_x>=610 & pixel_y >=152 & pixel_y <=153)|| 
(pixel_x<=609 & pixel_x>=608 & pixel_y >=140 & pixel_y <=151)|| 
(pixel_x<=619 & pixel_x>=618 & pixel_y >=140 & pixel_y <=141)|| 
(pixel_x<=619 & pixel_x>=618 & pixel_y >=146 & pixel_y <=151)|| 
(pixel_x<=619 & pixel_x>=616 & pixel_y >=146 & pixel_y <=147)|| 
//pixgen for "G"
(pixel_x<=555 & pixel_x>=548 & pixel_y >=174 & pixel_y <=175)|| 
(pixel_x<=555 & pixel_x>=548 & pixel_y >=188 & pixel_y <=189)|| 
(pixel_x<=547 & pixel_x>=546 & pixel_y >=176 & pixel_y <=187)|| 
(pixel_x<=557 & pixel_x>=556 & pixel_y >=176 & pixel_y <=177)|| 
(pixel_x<=557 & pixel_x>=556 & pixel_y >=182 & pixel_y <=187)|| 
(pixel_x<=557 & pixel_x>=554 & pixel_y >=182 & pixel_y <=183)|| 
//pixgen for "A"
(pixel_x<=569 & pixel_x>=566 & pixel_y >=174 & pixel_y <=175)|| 
(pixel_x<=571 & pixel_x>=570 & pixel_y >=176 & pixel_y <=177)|| 
(pixel_x<=565 & pixel_x>=564 & pixel_y >=176 & pixel_y <=177)|| 
(pixel_x<=573 & pixel_x>=572 & pixel_y >=178 & pixel_y <=189)|| 
(pixel_x<=563 & pixel_x>=562 & pixel_y >=178 & pixel_y <=189)|| 
(pixel_x<=573 & pixel_x>=562 & pixel_y >=182 & pixel_y <=183)|| 
(pixel_x<=575 & pixel_x>=570 & pixel_y >=188 & pixel_y <=189)|| 
(pixel_x<=565 & pixel_x>=560 & pixel_y >=188 & pixel_y <=189)||
//pixgen for "M"
(pixel_x<=595 & pixel_x>=590 & pixel_y >=174 & pixel_y <=175)|| 
(pixel_x<=595 & pixel_x>=590 & pixel_y >=188 & pixel_y <=189)|| 
(pixel_x<=583 & pixel_x>=578 & pixel_y >=174 & pixel_y <=175)|| 
(pixel_x<=583 & pixel_x>=578 & pixel_y >=188 & pixel_y <=189)|| 
(pixel_x<=593 & pixel_x>=592 & pixel_y >=174 & pixel_y <=189)|| 
(pixel_x<=581 & pixel_x>=580 & pixel_y >=174 & pixel_y <=189)|| 
(pixel_x<=591 & pixel_x>=590 & pixel_y >=178 & pixel_y <=179)|| 
(pixel_x<=589 & pixel_x>=588 & pixel_y >=180 & pixel_y <=181)|| 
(pixel_x<=587 & pixel_x>=586 & pixel_y >=182 & pixel_y <=185)|| 
(pixel_x<=585 & pixel_x>=584 & pixel_y >=180 & pixel_y <=181)|| 
(pixel_x<=583 & pixel_x>=582 & pixel_y >=178 & pixel_y <=179)|| 
//pixgen for "E"
(pixel_x<=609 & pixel_x>=598 & pixel_y >=174 & pixel_y <=175)|| 
(pixel_x<=609 & pixel_x>=598 & pixel_y >=188 & pixel_y <=189)|| 
(pixel_x<=607 & pixel_x>=600 & pixel_y >=180 & pixel_y <=181)|| 
(pixel_x<=601 & pixel_x>=600 & pixel_y >=174 & pixel_y <=189)|| 
(pixel_x<=609 & pixel_x>=608 & pixel_y >=174 & pixel_y <=177)|| 
(pixel_x<=609 & pixel_x>=608 & pixel_y >=186 & pixel_y <=189)|| 

//pixgen for all states
(pixel_x<=559 & pixel_x>=540 & pixel_y >=258 & pixel_y <=261)|| 
(pixel_x<=567 & pixel_x>=560 & pixel_y >=262 & pixel_y <=265)|| 
(pixel_x<=539 & pixel_x>=532 & pixel_y >=262 & pixel_y <=265)|| 
(pixel_x<=571 & pixel_x>=568 & pixel_y >=266 & pixel_y <=269)|| 
(pixel_x<=531 & pixel_x>=528 & pixel_y >=266 & pixel_y <=269)|| 
(pixel_x<=575 & pixel_x>=572 & pixel_y >=270 & pixel_y <=273)|| 
(pixel_x<=527 & pixel_x>=524 & pixel_y >=270 & pixel_y <=273)|| 
(pixel_x<=579 & pixel_x>=576 & pixel_y >=274 & pixel_y <=277)|| 
(pixel_x<=523 & pixel_x>=520 & pixel_y >=274 & pixel_y <=277)|| 
(pixel_x<=583 & pixel_x>=580 & pixel_y >=278 & pixel_y <=285)|| 
(pixel_x<=519 & pixel_x>=516 & pixel_y >=278 & pixel_y <=285)|| 
(pixel_x<=587 & pixel_x>=584 & pixel_y >=286 & pixel_y <=323)|| 
(pixel_x<=515 & pixel_x>=512 & pixel_y >=286 & pixel_y <=323)|| 
(pixel_x<=583 & pixel_x>=580 & pixel_y >=324 & pixel_y <=331)|| 
(pixel_x<=519 & pixel_x>=516 & pixel_y >=324 & pixel_y <=331)|| 
(pixel_x<=579 & pixel_x>=576 & pixel_y >=332 & pixel_y <=335)|| 
(pixel_x<=523 & pixel_x>=520 & pixel_y >=332 & pixel_y <=335)|| 
(pixel_x<=575 & pixel_x>=572 & pixel_y >=336 & pixel_y <=339)|| 
(pixel_x<=527 & pixel_x>=524 & pixel_y >=336 & pixel_y <=339)|| 
(pixel_x<=571 & pixel_x>=568 & pixel_y >=340 & pixel_y <=343)|| 
(pixel_x<=531 & pixel_x>=528 & pixel_y >=340 & pixel_y <=343)|| 
(pixel_x<=567 & pixel_x>=560 & pixel_y >=344 & pixel_y <=347)|| 
(pixel_x<=539 & pixel_x>=532 & pixel_y >=344 & pixel_y <=347)|| 
(pixel_x<=559 & pixel_x>=540 & pixel_y >=348 & pixel_y <=351)|| 





// pixgen for win state
(pixel_x<=583 & pixel_x>=516 & pixel_y >=286 & pixel_y <=289)|| 
(pixel_x<=579 & pixel_x>=520 & pixel_y >=290 & pixel_y <=293)|| 
(pixel_x<=579 & pixel_x>=552 & pixel_y >=294 & pixel_y <=299)|| 
(pixel_x<=547 & pixel_x>=520 & pixel_y >=294 & pixel_y <=299)|| 
(pixel_x<=577 & pixel_x>=556 & pixel_y >=300 & pixel_y <=305)|| 
(pixel_x<=543 & pixel_x>=522 & pixel_y >=300 & pixel_y <=305)|| 
(pixel_x<=573 & pixel_x>=560 & pixel_y >=306 & pixel_y <=309)|| 
(pixel_x<=539 & pixel_x>=526 & pixel_y >=306 & pixel_y <=309)|| 
(pixel_x<=571 & pixel_x>=568 & pixel_y >=324 & pixel_y <=327)|| 
(pixel_x<=531 & pixel_x>=528 & pixel_y >=324 & pixel_y <=327)|| 
(pixel_x<=567 & pixel_x>=560 & pixel_y >=328 & pixel_y <=331)|| 
(pixel_x<=539 & pixel_x>=532 & pixel_y >=328 & pixel_y <=331)|| 
(pixel_x<=559 & pixel_x>=540 & pixel_y >=332 & pixel_y <=335)


 ? 4'h0:4'hF):(4'h0);

 green <= video_on ?(

//pixgen for horizontal green lines

(pixel_x<=463 & pixel_x>=16 & pixel_y >=16 & pixel_y <=23) || 

(pixel_x<=143 & pixel_x>=16 & pixel_y >=56 & pixel_y <=63) || 
(pixel_x<=383 & pixel_x>=256 & pixel_y >=56 & pixel_y <=63) || 

(pixel_x<=103 & pixel_x>=16 & pixel_y >=96 & pixel_y <=103) ||
(pixel_x<=303 & pixel_x>=176 & pixel_y >=96 & pixel_y <=103) || 
(pixel_x<=383 & pixel_x>=336 & pixel_y >=96 & pixel_y <=103)|| 

(pixel_x<=103 & pixel_x>=56 & pixel_y >=136 & pixel_y <=143) || 
(pixel_x<=263 & pixel_x>=136 & pixel_y >=136 & pixel_y <=143) ||
(pixel_x<=343 & pixel_x>=296 & pixel_y >=136 & pixel_y <=143) || 
(pixel_x<=423 & pixel_x>=376 & pixel_y >=136 & pixel_y <=143)|| 

(pixel_x<=103 & pixel_x>=56 & pixel_y >=176 & pixel_y <=183) || 
(pixel_x<=303 & pixel_x>=216 & pixel_y >=176 & pixel_y <=183) ||
(pixel_x<=463 & pixel_x>=416 & pixel_y >=176 & pixel_y <=183) || 

(pixel_x<=183 & pixel_x>=96 & pixel_y >=216 & pixel_y <=223)|| 
(pixel_x<=383 & pixel_x>=336 & pixel_y >=216 & pixel_y <=223) || 

(pixel_x<=63 & pixel_x>=16 & pixel_y >=256 & pixel_y <=263)||
(pixel_x<=223 & pixel_x>=136 & pixel_y >=256 & pixel_y <=263) || 
(pixel_x<=343 & pixel_x>=296 & pixel_y >=256 & pixel_y <=263)|| 
(pixel_x<=423 & pixel_x>=376 & pixel_y >=256 & pixel_y <=263) || 

(pixel_x<=183 & pixel_x>=136 & pixel_y >=296 & pixel_y <=303) ||
(pixel_x<=263 & pixel_x>=216 & pixel_y >=296 & pixel_y <=303) || 
(pixel_x<=463 & pixel_x>=336 & pixel_y >=296 & pixel_y <=303)|| 

(pixel_x<=143 & pixel_x>=96 & pixel_y >=336 & pixel_y <=343) || 
(pixel_x<=343 & pixel_x>=256 & pixel_y >=336 & pixel_y <=343) ||
(pixel_x<=423 & pixel_x>=376 & pixel_y >=336 & pixel_y <=343) || 

(pixel_x<=183 & pixel_x>=96 & pixel_y >=376 & pixel_y <=383)|| 
(pixel_x<=463 & pixel_x>=336 & pixel_y >=376 & pixel_y <=383) || 

(pixel_x<=223 & pixel_x>=136 & pixel_y >=416 & pixel_y <=423) ||
(pixel_x<=303 & pixel_x>=256 & pixel_y >=416 & pixel_y <=423) || 
(pixel_x<=463 & pixel_x>=376 & pixel_y >=416 & pixel_y <=423)|| 

(pixel_x<=463 & pixel_x>=16 & pixel_y >=456 & pixel_y <=463) ||

//pixgen for vertical green lines

(pixel_x<=23 & pixel_x>=16 & pixel_y >=16 & pixel_y <=63) || 
(pixel_x<=23 & pixel_x>=16 & pixel_y >=96 & pixel_y <=463) || 

(pixel_x<=63 & pixel_x>=56 & pixel_y >=176 & pixel_y <=263) || 
(pixel_x<=63 & pixel_x>=56 & pixel_y >=296 & pixel_y <=463) ||

(pixel_x<=103 & pixel_x>=96 & pixel_y >=136 & pixel_y <=183) || 
(pixel_x<=103 & pixel_x>=96 & pixel_y >=216 & pixel_y <=343)|| 
(pixel_x<=103 & pixel_x>=96 & pixel_y >=376 & pixel_y <=423) || 

(pixel_x<=143 & pixel_x>=136 & pixel_y >=96 & pixel_y <=183) ||
(pixel_x<=143 & pixel_x>=136 & pixel_y >=256 & pixel_y <=303) || 
(pixel_x<=143 & pixel_x>=136 & pixel_y >=416 & pixel_y <=463)|| 

(pixel_x<=183 & pixel_x>=176 & pixel_y >=56 & pixel_y <=103) || 
(pixel_x<=183 & pixel_x>=176 & pixel_y >=136 & pixel_y <=223) ||
(pixel_x<=183 & pixel_x>=176 & pixel_y >=296 & pixel_y <=423) || 

(pixel_x<=223 & pixel_x>=216 & pixel_y >=16 & pixel_y <=63)|| 
(pixel_x<=223 & pixel_x>=216 & pixel_y >=176 & pixel_y <=223) || 
(pixel_x<=223 & pixel_x>=216 & pixel_y >=256 & pixel_y <=383)||

(pixel_x<=263 & pixel_x>=256 & pixel_y >=56 & pixel_y <=143) || 
(pixel_x<=263 & pixel_x>=256 & pixel_y >=176 & pixel_y <=303)|| 
(pixel_x<=263 & pixel_x>=256 & pixel_y >=336 & pixel_y <=423) || 

(pixel_x<=303 & pixel_x>=296 & pixel_y >=136 & pixel_y <=183) ||
(pixel_x<=303 & pixel_x>=296 & pixel_y >=216 & pixel_y <=303) || 
(pixel_x<=303 & pixel_x>=296 & pixel_y >=336 & pixel_y <=383)|| 

(pixel_x<=343 & pixel_x>=336 & pixel_y >=136 & pixel_y <=183) || 
(pixel_x<=343 & pixel_x>=336 & pixel_y >=256 & pixel_y <=343) ||
(pixel_x<=343 & pixel_x>=336 & pixel_y >=416 & pixel_y <=463) || 

(pixel_x<=383 & pixel_x>=376 & pixel_y >=16 & pixel_y <=63)|| 
(pixel_x<=383 & pixel_x>=376 & pixel_y >=96 & pixel_y <=183) || 
(pixel_x<=383 & pixel_x>=376 & pixel_y >=216 & pixel_y <=263) ||
(pixel_x<=383 & pixel_x>=376 & pixel_y >=336 & pixel_y <=383) || 

(pixel_x<=423 & pixel_x>=416 & pixel_y >=16 & pixel_y <=143) ||
(pixel_x<=423 & pixel_x>=416 & pixel_y >=176 & pixel_y <=263) || 

(pixel_x<=463 & pixel_x>=456 & pixel_y >=16 & pixel_y <=383)|| 
(pixel_x<=463 & pixel_x>=456 & pixel_y >=416 & pixel_y <=463) ||

//pixgen for game banner

//pixgen for "T"
(pixel_x<=507 & pixel_x>=494 & pixel_y >=106 & pixel_y <=107)|| 
(pixel_x<=503 & pixel_x>=498 & pixel_y >=120 & pixel_y <=121)|| 
(pixel_x<=495 & pixel_x>=494 & pixel_y >=106 & pixel_y <=109)|| 
(pixel_x<=507 & pixel_x>=506 & pixel_y >=106 & pixel_y <=109)|| 
(pixel_x<=501 & pixel_x>=500 & pixel_y >=106 & pixel_y <=121)||
//pixgen for "H"
(pixel_x<=515 & pixel_x>=510 & pixel_y >=106 & pixel_y <=107)|| 
(pixel_x<=525 & pixel_x>=520 & pixel_y >=106 & pixel_y <=107)|| 
(pixel_x<=515 & pixel_x>=510 & pixel_y >=120 & pixel_y <=121)|| 
(pixel_x<=525 & pixel_x>=520 & pixel_y >=120 & pixel_y <=121)|| 
(pixel_x<=523 & pixel_x>=512 & pixel_y >=112 & pixel_y <=113)|| 
(pixel_x<=513 & pixel_x>=512 & pixel_y >=106 & pixel_y <=121)|| 
(pixel_x<=523 & pixel_x>=522 & pixel_y >=106 & pixel_y <=121)|| 
//pixgen for "E"
(pixel_x<=539 & pixel_x>=528 & pixel_y >=106 & pixel_y <=107)|| 
(pixel_x<=539 & pixel_x>=528 & pixel_y >=120 & pixel_y <=121)|| 
(pixel_x<=537 & pixel_x>=530 & pixel_y >=112 & pixel_y <=113)|| 
(pixel_x<=531 & pixel_x>=530 & pixel_y >=106 & pixel_y <=121)|| 
(pixel_x<=539 & pixel_x>=538 & pixel_y >=106 & pixel_y <=109)|| 
(pixel_x<=539 & pixel_x>=538 & pixel_y >=118 & pixel_y <=121)|| 
//pixgen for "A"
(pixel_x<=495 & pixel_x>=492 & pixel_y >=140 & pixel_y <=141)|| 
(pixel_x<=497 & pixel_x>=496 & pixel_y >=142 & pixel_y <=143)|| 
(pixel_x<=491 & pixel_x>=490 & pixel_y >=142 & pixel_y <=143)|| 
(pixel_x<=499 & pixel_x>=498 & pixel_y >=144 & pixel_y <=153)|| 
(pixel_x<=489 & pixel_x>=488 & pixel_y >=144 & pixel_y <=153)|| 
(pixel_x<=499 & pixel_x>=488 & pixel_y >=148 & pixel_y <=149)|| 
(pixel_x<=501 & pixel_x>=496 & pixel_y >=154 & pixel_y <=155)|| 
(pixel_x<=491 & pixel_x>=486 & pixel_y >=154 & pixel_y <=155)|| 
//pixgen for "-"
(pixel_x<=507 & pixel_x>=504 & pixel_y >=146 & pixel_y <=147)|| 
//pixgen for "M"
(pixel_x<=527 & pixel_x>=522 & pixel_y >=132 & pixel_y <=135)|| 
(pixel_x<=515 & pixel_x>=510 & pixel_y >=132 & pixel_y <=135)|| 
(pixel_x<=527 & pixel_x>=522 & pixel_y >=160 & pixel_y <=163)|| 
(pixel_x<=515 & pixel_x>=510 & pixel_y >=160 & pixel_y <=163)|| 
(pixel_x<=513 & pixel_x>=512 & pixel_y >=132 & pixel_y <=163)|| 
(pixel_x<=525 & pixel_x>=524 & pixel_y >=132 & pixel_y <=163)|| 
(pixel_x<=515 & pixel_x>=514 & pixel_y >=140 & pixel_y <=143)|| 
(pixel_x<=523 & pixel_x>=522 & pixel_y >=140 & pixel_y <=143)|| 
(pixel_x<=517 & pixel_x>=516 & pixel_y >=144 & pixel_y <=147)|| 
(pixel_x<=521 & pixel_x>=520 & pixel_y >=144 & pixel_y <=147)|| 
(pixel_x<=519 & pixel_x>=518 & pixel_y >=148 & pixel_y <=155)|| 
//pixgen for "A"
(pixel_x<=539 & pixel_x>=536 & pixel_y >=132 & pixel_y <=135)|| 
(pixel_x<=541 & pixel_x>=540 & pixel_y >=136 & pixel_y <=139)|| 
(pixel_x<=535 & pixel_x>=534 & pixel_y >=136 & pixel_y <=139)|| 
(pixel_x<=543 & pixel_x>=542 & pixel_y >=140 & pixel_y <=163)|| 
(pixel_x<=533 & pixel_x>=532 & pixel_y >=140 & pixel_y <=163)|| 
(pixel_x<=543 & pixel_x>=532 & pixel_y >=148 & pixel_y <=151)|| 
(pixel_x<=545 & pixel_x>=540 & pixel_y >=160 & pixel_y <=163)|| 
(pixel_x<=535 & pixel_x>=530 & pixel_y >=160 & pixel_y <=163)|| 
//pixgen for "Z"
(pixel_x<=559 & pixel_x>=548 & pixel_y >=132 & pixel_y <=135)|| 
(pixel_x<=559 & pixel_x>=558 & pixel_y >=136 & pixel_y <=139)|| 
(pixel_x<=549 & pixel_x>=548 & pixel_y >=136 & pixel_y <=139)|| 
(pixel_x<=557 & pixel_x>=556 & pixel_y >=140 & pixel_y <=143)|| 
(pixel_x<=555 & pixel_x>=554 & pixel_y >=144 & pixel_y <=147)|| 
(pixel_x<=553 & pixel_x>=552 & pixel_y >=148 & pixel_y <=151)|| 
(pixel_x<=551 & pixel_x>=550 & pixel_y >=152 & pixel_y <=155)|| 
(pixel_x<=549 & pixel_x>=548 & pixel_y >=156 & pixel_y <=159)|| 
(pixel_x<=559 & pixel_x>=558 & pixel_y >=156 & pixel_y <=159)|| 
(pixel_x<=559 & pixel_x>=548 & pixel_y >=160 & pixel_y <=163)|| 
//pixgen for "E"
(pixel_x<=573 & pixel_x>=562 & pixel_y >=132 & pixel_y <=135)|| 
(pixel_x<=573 & pixel_x>=562 & pixel_y >=160 & pixel_y <=163)|| 
(pixel_x<=571 & pixel_x>=564 & pixel_y >=144 & pixel_y <=147)|| 
(pixel_x<=573 & pixel_x>=572 & pixel_y >=132 & pixel_y <=139)|| 
(pixel_x<=573 & pixel_x>=572 & pixel_y >=156 & pixel_y <=163)|| 
(pixel_x<=565 & pixel_x>=564 & pixel_y >=132 & pixel_y <=163)|| 
//pixgen for "-"
(pixel_x<=579 & pixel_x>=576 & pixel_y >=144 & pixel_y <=145)|| 
//pixgen for "I"
(pixel_x<=587 & pixel_x>=582 & pixel_y >=138 & pixel_y <=139)|| 
(pixel_x<=587 & pixel_x>=582 & pixel_y >=152 & pixel_y <=153)|| 
(pixel_x<=585 & pixel_x>=584 & pixel_y >=138 & pixel_y <=153)|| 
//pixgen for "N"
(pixel_x<=605 & pixel_x>=600 & pixel_y >=138 & pixel_y <=139)|| 
(pixel_x<=605 & pixel_x>=600 & pixel_y >=152 & pixel_y <=153)|| 
(pixel_x<=595 & pixel_x>=590 & pixel_y >=138 & pixel_y <=139)|| 
(pixel_x<=595 & pixel_x>=590 & pixel_y >=152 & pixel_y <=153)|| 
(pixel_x<=603 & pixel_x>=602 & pixel_y >=138 & pixel_y <=153)|| 
(pixel_x<=593 & pixel_x>=592 & pixel_y >=138 & pixel_y <=153)|| 
(pixel_x<=601 & pixel_x>=600 & pixel_y >=148 & pixel_y <=149)|| 
(pixel_x<=599 & pixel_x>=598 & pixel_y >=146 & pixel_y <=147)|| 
(pixel_x<=597 & pixel_x>=596 & pixel_y >=144 & pixel_y <=145)|| 
(pixel_x<=595 & pixel_x>=594 & pixel_y >=142 & pixel_y <=143)|| 
//pixgen for "G"
(pixel_x<=617 & pixel_x>=610 & pixel_y >=138 & pixel_y <=139)|| 
(pixel_x<=617 & pixel_x>=610 & pixel_y >=152 & pixel_y <=153)|| 
(pixel_x<=609 & pixel_x>=608 & pixel_y >=140 & pixel_y <=151)|| 
(pixel_x<=619 & pixel_x>=618 & pixel_y >=140 & pixel_y <=141)|| 
(pixel_x<=619 & pixel_x>=618 & pixel_y >=146 & pixel_y <=151)|| 
(pixel_x<=619 & pixel_x>=616 & pixel_y >=146 & pixel_y <=147)|| 
//pixgen for "G"
(pixel_x<=555 & pixel_x>=548 & pixel_y >=174 & pixel_y <=175)|| 
(pixel_x<=555 & pixel_x>=548 & pixel_y >=188 & pixel_y <=189)|| 
(pixel_x<=547 & pixel_x>=546 & pixel_y >=176 & pixel_y <=187)|| 
(pixel_x<=557 & pixel_x>=556 & pixel_y >=176 & pixel_y <=177)|| 
(pixel_x<=557 & pixel_x>=556 & pixel_y >=182 & pixel_y <=187)|| 
(pixel_x<=557 & pixel_x>=554 & pixel_y >=182 & pixel_y <=183)|| 
//pixgen for "A"
(pixel_x<=569 & pixel_x>=566 & pixel_y >=174 & pixel_y <=175)|| 
(pixel_x<=571 & pixel_x>=570 & pixel_y >=176 & pixel_y <=177)|| 
(pixel_x<=565 & pixel_x>=564 & pixel_y >=176 & pixel_y <=177)|| 
(pixel_x<=573 & pixel_x>=572 & pixel_y >=178 & pixel_y <=189)|| 
(pixel_x<=563 & pixel_x>=562 & pixel_y >=178 & pixel_y <=189)|| 
(pixel_x<=573 & pixel_x>=562 & pixel_y >=182 & pixel_y <=183)|| 
(pixel_x<=575 & pixel_x>=570 & pixel_y >=188 & pixel_y <=189)|| 
(pixel_x<=565 & pixel_x>=560 & pixel_y >=188 & pixel_y <=189)||
//pixgen for "M"
(pixel_x<=595 & pixel_x>=590 & pixel_y >=174 & pixel_y <=175)|| 
(pixel_x<=595 & pixel_x>=590 & pixel_y >=188 & pixel_y <=189)|| 
(pixel_x<=583 & pixel_x>=578 & pixel_y >=174 & pixel_y <=175)|| 
(pixel_x<=583 & pixel_x>=578 & pixel_y >=188 & pixel_y <=189)|| 
(pixel_x<=593 & pixel_x>=592 & pixel_y >=174 & pixel_y <=189)|| 
(pixel_x<=581 & pixel_x>=580 & pixel_y >=174 & pixel_y <=189)|| 
(pixel_x<=591 & pixel_x>=590 & pixel_y >=178 & pixel_y <=179)|| 
(pixel_x<=589 & pixel_x>=588 & pixel_y >=180 & pixel_y <=181)|| 
(pixel_x<=587 & pixel_x>=586 & pixel_y >=182 & pixel_y <=185)|| 
(pixel_x<=585 & pixel_x>=584 & pixel_y >=180 & pixel_y <=181)|| 
(pixel_x<=583 & pixel_x>=582 & pixel_y >=178 & pixel_y <=179)|| 
//pixgen for "E"
(pixel_x<=609 & pixel_x>=598 & pixel_y >=174 & pixel_y <=175)|| 
(pixel_x<=609 & pixel_x>=598 & pixel_y >=188 & pixel_y <=189)|| 
(pixel_x<=607 & pixel_x>=600 & pixel_y >=180 & pixel_y <=181)|| 
(pixel_x<=601 & pixel_x>=600 & pixel_y >=174 & pixel_y <=189)|| 
(pixel_x<=609 & pixel_x>=608 & pixel_y >=174 & pixel_y <=177)|| 
(pixel_x<=609 & pixel_x>=608 & pixel_y >=186 & pixel_y <=189)|| 

//pixgen for all states
(pixel_x<=559 & pixel_x>=540 & pixel_y >=258 & pixel_y <=261)|| 
(pixel_x<=567 & pixel_x>=560 & pixel_y >=262 & pixel_y <=265)|| 
(pixel_x<=539 & pixel_x>=532 & pixel_y >=262 & pixel_y <=265)|| 
(pixel_x<=571 & pixel_x>=568 & pixel_y >=266 & pixel_y <=269)|| 
(pixel_x<=531 & pixel_x>=528 & pixel_y >=266 & pixel_y <=269)|| 
(pixel_x<=575 & pixel_x>=572 & pixel_y >=270 & pixel_y <=273)|| 
(pixel_x<=527 & pixel_x>=524 & pixel_y >=270 & pixel_y <=273)|| 
(pixel_x<=579 & pixel_x>=576 & pixel_y >=274 & pixel_y <=277)|| 
(pixel_x<=523 & pixel_x>=520 & pixel_y >=274 & pixel_y <=277)|| 
(pixel_x<=583 & pixel_x>=580 & pixel_y >=278 & pixel_y <=285)|| 
(pixel_x<=519 & pixel_x>=516 & pixel_y >=278 & pixel_y <=285)|| 
(pixel_x<=587 & pixel_x>=584 & pixel_y >=286 & pixel_y <=323)|| 
(pixel_x<=515 & pixel_x>=512 & pixel_y >=286 & pixel_y <=323)|| 
(pixel_x<=583 & pixel_x>=580 & pixel_y >=324 & pixel_y <=331)|| 
(pixel_x<=519 & pixel_x>=516 & pixel_y >=324 & pixel_y <=331)|| 
(pixel_x<=579 & pixel_x>=576 & pixel_y >=332 & pixel_y <=335)|| 
(pixel_x<=523 & pixel_x>=520 & pixel_y >=332 & pixel_y <=335)|| 
(pixel_x<=575 & pixel_x>=572 & pixel_y >=336 & pixel_y <=339)|| 
(pixel_x<=527 & pixel_x>=524 & pixel_y >=336 & pixel_y <=339)|| 
(pixel_x<=571 & pixel_x>=568 & pixel_y >=340 & pixel_y <=343)|| 
(pixel_x<=531 & pixel_x>=528 & pixel_y >=340 & pixel_y <=343)|| 
(pixel_x<=567 & pixel_x>=560 & pixel_y >=344 & pixel_y <=347)|| 
(pixel_x<=539 & pixel_x>=532 & pixel_y >=344 & pixel_y <=347)|| 
(pixel_x<=559 & pixel_x>=540 & pixel_y >=348 & pixel_y <=351)|| 





// pixgen for win state
(pixel_x<=583 & pixel_x>=516 & pixel_y >=286 & pixel_y <=289)|| 
(pixel_x<=579 & pixel_x>=520 & pixel_y >=290 & pixel_y <=293)|| 
(pixel_x<=579 & pixel_x>=552 & pixel_y >=294 & pixel_y <=299)|| 
(pixel_x<=547 & pixel_x>=520 & pixel_y >=294 & pixel_y <=299)|| 
(pixel_x<=577 & pixel_x>=556 & pixel_y >=300 & pixel_y <=305)|| 
(pixel_x<=543 & pixel_x>=522 & pixel_y >=300 & pixel_y <=305)|| 
(pixel_x<=573 & pixel_x>=560 & pixel_y >=306 & pixel_y <=309)|| 
(pixel_x<=539 & pixel_x>=526 & pixel_y >=306 & pixel_y <=309)|| 
(pixel_x<=571 & pixel_x>=568 & pixel_y >=324 & pixel_y <=327)|| 
(pixel_x<=531 & pixel_x>=528 & pixel_y >=324 & pixel_y <=327)|| 
(pixel_x<=567 & pixel_x>=560 & pixel_y >=328 & pixel_y <=331)|| 
(pixel_x<=539 & pixel_x>=532 & pixel_y >=328 & pixel_y <=331)|| 
(pixel_x<=559 & pixel_x>=540 & pixel_y >=332 & pixel_y <=335)



 ? 4'h0:4'hF):(4'h0);


 blue <= video_on ? (

//pixgen for horizontal blue lines

(pixel_x<=463 & pixel_x>=16 & pixel_y >=16 & pixel_y <=23) || 

(pixel_x<=143 & pixel_x>=16 & pixel_y >=56 & pixel_y <=63) || 
(pixel_x<=383 & pixel_x>=256 & pixel_y >=56 & pixel_y <=63) || 

(pixel_x<=103 & pixel_x>=16 & pixel_y >=96 & pixel_y <=103) ||
(pixel_x<=303 & pixel_x>=176 & pixel_y >=96 & pixel_y <=103) || 
(pixel_x<=383 & pixel_x>=336 & pixel_y >=96 & pixel_y <=103)|| 

(pixel_x<=103 & pixel_x>=56 & pixel_y >=136 & pixel_y <=143) || 
(pixel_x<=263 & pixel_x>=136 & pixel_y >=136 & pixel_y <=143) ||
(pixel_x<=343 & pixel_x>=296 & pixel_y >=136 & pixel_y <=143) || 
(pixel_x<=423 & pixel_x>=376 & pixel_y >=136 & pixel_y <=143)|| 

(pixel_x<=103 & pixel_x>=56 & pixel_y >=176 & pixel_y <=183) || 
(pixel_x<=303 & pixel_x>=216 & pixel_y >=176 & pixel_y <=183) ||
(pixel_x<=463 & pixel_x>=416 & pixel_y >=176 & pixel_y <=183) || 

(pixel_x<=183 & pixel_x>=96 & pixel_y >=216 & pixel_y <=223)|| 
(pixel_x<=383 & pixel_x>=336 & pixel_y >=216 & pixel_y <=223) || 

(pixel_x<=63 & pixel_x>=16 & pixel_y >=256 & pixel_y <=263)||
(pixel_x<=223 & pixel_x>=136 & pixel_y >=256 & pixel_y <=263) || 
(pixel_x<=343 & pixel_x>=296 & pixel_y >=256 & pixel_y <=263)|| 
(pixel_x<=423 & pixel_x>=376 & pixel_y >=256 & pixel_y <=263) || 

(pixel_x<=183 & pixel_x>=136 & pixel_y >=296 & pixel_y <=303) ||
(pixel_x<=263 & pixel_x>=216 & pixel_y >=296 & pixel_y <=303) || 
(pixel_x<=463 & pixel_x>=336 & pixel_y >=296 & pixel_y <=303)|| 

(pixel_x<=143 & pixel_x>=96 & pixel_y >=336 & pixel_y <=343) || 
(pixel_x<=343 & pixel_x>=256 & pixel_y >=336 & pixel_y <=343) ||
(pixel_x<=423 & pixel_x>=376 & pixel_y >=336 & pixel_y <=343) || 

(pixel_x<=183 & pixel_x>=96 & pixel_y >=376 & pixel_y <=383)|| 
(pixel_x<=463 & pixel_x>=336 & pixel_y >=376 & pixel_y <=383) || 

(pixel_x<=223 & pixel_x>=136 & pixel_y >=416 & pixel_y <=423) ||
(pixel_x<=303 & pixel_x>=256 & pixel_y >=416 & pixel_y <=423) || 
(pixel_x<=463 & pixel_x>=376 & pixel_y >=416 & pixel_y <=423)|| 

(pixel_x<=463 & pixel_x>=16 & pixel_y >=456 & pixel_y <=463) ||

//pixgen for vertical blue lines

(pixel_x<=23 & pixel_x>=16 & pixel_y >=16 & pixel_y <=63) || 
(pixel_x<=23 & pixel_x>=16 & pixel_y >=96 & pixel_y <=463) || 

(pixel_x<=63 & pixel_x>=56 & pixel_y >=176 & pixel_y <=263) || 
(pixel_x<=63 & pixel_x>=56 & pixel_y >=296 & pixel_y <=463) ||

(pixel_x<=103 & pixel_x>=96 & pixel_y >=136 & pixel_y <=183) || 
(pixel_x<=103 & pixel_x>=96 & pixel_y >=216 & pixel_y <=343)|| 
(pixel_x<=103 & pixel_x>=96 & pixel_y >=376 & pixel_y <=423) || 

(pixel_x<=143 & pixel_x>=136 & pixel_y >=96 & pixel_y <=183) ||
(pixel_x<=143 & pixel_x>=136 & pixel_y >=256 & pixel_y <=303) || 
(pixel_x<=143 & pixel_x>=136 & pixel_y >=416 & pixel_y <=463)|| 

(pixel_x<=183 & pixel_x>=176 & pixel_y >=56 & pixel_y <=103) || 
(pixel_x<=183 & pixel_x>=176 & pixel_y >=136 & pixel_y <=223) ||
(pixel_x<=183 & pixel_x>=176 & pixel_y >=296 & pixel_y <=423) || 

(pixel_x<=223 & pixel_x>=216 & pixel_y >=16 & pixel_y <=63)|| 
(pixel_x<=223 & pixel_x>=216 & pixel_y >=176 & pixel_y <=223) || 
(pixel_x<=223 & pixel_x>=216 & pixel_y >=256 & pixel_y <=383)||

(pixel_x<=263 & pixel_x>=256 & pixel_y >=56 & pixel_y <=143) || 
(pixel_x<=263 & pixel_x>=256 & pixel_y >=176 & pixel_y <=303)|| 
(pixel_x<=263 & pixel_x>=256 & pixel_y >=336 & pixel_y <=423) || 

(pixel_x<=303 & pixel_x>=296 & pixel_y >=136 & pixel_y <=183) ||
(pixel_x<=303 & pixel_x>=296 & pixel_y >=216 & pixel_y <=303) || 
(pixel_x<=303 & pixel_x>=296 & pixel_y >=336 & pixel_y <=383)|| 

(pixel_x<=343 & pixel_x>=336 & pixel_y >=136 & pixel_y <=183) || 
(pixel_x<=343 & pixel_x>=336 & pixel_y >=256 & pixel_y <=343) ||
(pixel_x<=343 & pixel_x>=336 & pixel_y >=416 & pixel_y <=463) || 

(pixel_x<=383 & pixel_x>=376 & pixel_y >=16 & pixel_y <=63)|| 
(pixel_x<=383 & pixel_x>=376 & pixel_y >=96 & pixel_y <=183) || 
(pixel_x<=383 & pixel_x>=376 & pixel_y >=216 & pixel_y <=263) ||
(pixel_x<=383 & pixel_x>=376 & pixel_y >=336 & pixel_y <=383) || 

(pixel_x<=423 & pixel_x>=416 & pixel_y >=16 & pixel_y <=143) ||
(pixel_x<=423 & pixel_x>=416 & pixel_y >=176 & pixel_y <=263) || 

(pixel_x<=463 & pixel_x>=456 & pixel_y >=16 & pixel_y <=383)|| 
(pixel_x<=463 & pixel_x>=456 & pixel_y >=416 & pixel_y <=463) ||

//pixgen for game banner

//pixgen for "T"
(pixel_x<=507 & pixel_x>=494 & pixel_y >=106 & pixel_y <=107)|| 
(pixel_x<=503 & pixel_x>=498 & pixel_y >=120 & pixel_y <=121)|| 
(pixel_x<=495 & pixel_x>=494 & pixel_y >=106 & pixel_y <=109)|| 
(pixel_x<=507 & pixel_x>=506 & pixel_y >=106 & pixel_y <=109)|| 
(pixel_x<=501 & pixel_x>=500 & pixel_y >=106 & pixel_y <=121)||
//pixgen for "H"
(pixel_x<=515 & pixel_x>=510 & pixel_y >=106 & pixel_y <=107)|| 
(pixel_x<=525 & pixel_x>=520 & pixel_y >=106 & pixel_y <=107)|| 
(pixel_x<=515 & pixel_x>=510 & pixel_y >=120 & pixel_y <=121)|| 
(pixel_x<=525 & pixel_x>=520 & pixel_y >=120 & pixel_y <=121)|| 
(pixel_x<=523 & pixel_x>=512 & pixel_y >=112 & pixel_y <=113)|| 
(pixel_x<=513 & pixel_x>=512 & pixel_y >=106 & pixel_y <=121)|| 
(pixel_x<=523 & pixel_x>=522 & pixel_y >=106 & pixel_y <=121)|| 
//pixgen for "E"
(pixel_x<=539 & pixel_x>=528 & pixel_y >=106 & pixel_y <=107)|| 
(pixel_x<=539 & pixel_x>=528 & pixel_y >=120 & pixel_y <=121)|| 
(pixel_x<=537 & pixel_x>=530 & pixel_y >=112 & pixel_y <=113)|| 
(pixel_x<=531 & pixel_x>=530 & pixel_y >=106 & pixel_y <=121)|| 
(pixel_x<=539 & pixel_x>=538 & pixel_y >=106 & pixel_y <=109)|| 
(pixel_x<=539 & pixel_x>=538 & pixel_y >=118 & pixel_y <=121)|| 
//pixgen for "A"
(pixel_x<=495 & pixel_x>=492 & pixel_y >=140 & pixel_y <=141)|| 
(pixel_x<=497 & pixel_x>=496 & pixel_y >=142 & pixel_y <=143)|| 
(pixel_x<=491 & pixel_x>=490 & pixel_y >=142 & pixel_y <=143)|| 
(pixel_x<=499 & pixel_x>=498 & pixel_y >=144 & pixel_y <=153)|| 
(pixel_x<=489 & pixel_x>=488 & pixel_y >=144 & pixel_y <=153)|| 
(pixel_x<=499 & pixel_x>=488 & pixel_y >=148 & pixel_y <=149)|| 
(pixel_x<=501 & pixel_x>=496 & pixel_y >=154 & pixel_y <=155)|| 
(pixel_x<=491 & pixel_x>=486 & pixel_y >=154 & pixel_y <=155)|| 
//pixgen for "-"
(pixel_x<=507 & pixel_x>=504 & pixel_y >=146 & pixel_y <=147)|| 
//pixgen for "M"
(pixel_x<=527 & pixel_x>=522 & pixel_y >=132 & pixel_y <=135)|| 
(pixel_x<=515 & pixel_x>=510 & pixel_y >=132 & pixel_y <=135)|| 
(pixel_x<=527 & pixel_x>=522 & pixel_y >=160 & pixel_y <=163)|| 
(pixel_x<=515 & pixel_x>=510 & pixel_y >=160 & pixel_y <=163)|| 
(pixel_x<=513 & pixel_x>=512 & pixel_y >=132 & pixel_y <=163)|| 
(pixel_x<=525 & pixel_x>=524 & pixel_y >=132 & pixel_y <=163)|| 
(pixel_x<=515 & pixel_x>=514 & pixel_y >=140 & pixel_y <=143)|| 
(pixel_x<=523 & pixel_x>=522 & pixel_y >=140 & pixel_y <=143)|| 
(pixel_x<=517 & pixel_x>=516 & pixel_y >=144 & pixel_y <=147)|| 
(pixel_x<=521 & pixel_x>=520 & pixel_y >=144 & pixel_y <=147)|| 
(pixel_x<=519 & pixel_x>=518 & pixel_y >=148 & pixel_y <=155)|| 
//pixgen for "A"
(pixel_x<=539 & pixel_x>=536 & pixel_y >=132 & pixel_y <=135)|| 
(pixel_x<=541 & pixel_x>=540 & pixel_y >=136 & pixel_y <=139)|| 
(pixel_x<=535 & pixel_x>=534 & pixel_y >=136 & pixel_y <=139)|| 
(pixel_x<=543 & pixel_x>=542 & pixel_y >=140 & pixel_y <=163)|| 
(pixel_x<=533 & pixel_x>=532 & pixel_y >=140 & pixel_y <=163)|| 
(pixel_x<=543 & pixel_x>=532 & pixel_y >=148 & pixel_y <=151)|| 
(pixel_x<=545 & pixel_x>=540 & pixel_y >=160 & pixel_y <=163)|| 
(pixel_x<=535 & pixel_x>=530 & pixel_y >=160 & pixel_y <=163)|| 
//pixgen for "Z"
(pixel_x<=559 & pixel_x>=548 & pixel_y >=132 & pixel_y <=135)|| 
(pixel_x<=559 & pixel_x>=558 & pixel_y >=136 & pixel_y <=139)|| 
(pixel_x<=549 & pixel_x>=548 & pixel_y >=136 & pixel_y <=139)|| 
(pixel_x<=557 & pixel_x>=556 & pixel_y >=140 & pixel_y <=143)|| 
(pixel_x<=555 & pixel_x>=554 & pixel_y >=144 & pixel_y <=147)|| 
(pixel_x<=553 & pixel_x>=552 & pixel_y >=148 & pixel_y <=151)|| 
(pixel_x<=551 & pixel_x>=550 & pixel_y >=152 & pixel_y <=155)|| 
(pixel_x<=549 & pixel_x>=548 & pixel_y >=156 & pixel_y <=159)|| 
(pixel_x<=559 & pixel_x>=558 & pixel_y >=156 & pixel_y <=159)|| 
(pixel_x<=559 & pixel_x>=548 & pixel_y >=160 & pixel_y <=163)|| 
//pixgen for "E"
(pixel_x<=573 & pixel_x>=562 & pixel_y >=132 & pixel_y <=135)|| 
(pixel_x<=573 & pixel_x>=562 & pixel_y >=160 & pixel_y <=163)|| 
(pixel_x<=571 & pixel_x>=564 & pixel_y >=144 & pixel_y <=147)|| 
(pixel_x<=573 & pixel_x>=572 & pixel_y >=132 & pixel_y <=139)|| 
(pixel_x<=573 & pixel_x>=572 & pixel_y >=156 & pixel_y <=163)|| 
(pixel_x<=565 & pixel_x>=564 & pixel_y >=132 & pixel_y <=163)|| 
//pixgen for "-"
(pixel_x<=579 & pixel_x>=576 & pixel_y >=144 & pixel_y <=145)|| 
//pixgen for "I"
(pixel_x<=587 & pixel_x>=582 & pixel_y >=138 & pixel_y <=139)|| 
(pixel_x<=587 & pixel_x>=582 & pixel_y >=152 & pixel_y <=153)|| 
(pixel_x<=585 & pixel_x>=584 & pixel_y >=138 & pixel_y <=153)|| 
//pixgen for "N"
(pixel_x<=605 & pixel_x>=600 & pixel_y >=138 & pixel_y <=139)|| 
(pixel_x<=605 & pixel_x>=600 & pixel_y >=152 & pixel_y <=153)|| 
(pixel_x<=595 & pixel_x>=590 & pixel_y >=138 & pixel_y <=139)|| 
(pixel_x<=595 & pixel_x>=590 & pixel_y >=152 & pixel_y <=153)|| 
(pixel_x<=603 & pixel_x>=602 & pixel_y >=138 & pixel_y <=153)|| 
(pixel_x<=593 & pixel_x>=592 & pixel_y >=138 & pixel_y <=153)|| 
(pixel_x<=601 & pixel_x>=600 & pixel_y >=148 & pixel_y <=149)|| 
(pixel_x<=599 & pixel_x>=598 & pixel_y >=146 & pixel_y <=147)|| 
(pixel_x<=597 & pixel_x>=596 & pixel_y >=144 & pixel_y <=145)|| 
(pixel_x<=595 & pixel_x>=594 & pixel_y >=142 & pixel_y <=143)|| 
//pixgen for "G"
(pixel_x<=617 & pixel_x>=610 & pixel_y >=138 & pixel_y <=139)|| 
(pixel_x<=617 & pixel_x>=610 & pixel_y >=152 & pixel_y <=153)|| 
(pixel_x<=609 & pixel_x>=608 & pixel_y >=140 & pixel_y <=151)|| 
(pixel_x<=619 & pixel_x>=618 & pixel_y >=140 & pixel_y <=141)|| 
(pixel_x<=619 & pixel_x>=618 & pixel_y >=146 & pixel_y <=151)|| 
(pixel_x<=619 & pixel_x>=616 & pixel_y >=146 & pixel_y <=147)|| 
//pixgen for "G"
(pixel_x<=555 & pixel_x>=548 & pixel_y >=174 & pixel_y <=175)|| 
(pixel_x<=555 & pixel_x>=548 & pixel_y >=188 & pixel_y <=189)|| 
(pixel_x<=547 & pixel_x>=546 & pixel_y >=176 & pixel_y <=187)|| 
(pixel_x<=557 & pixel_x>=556 & pixel_y >=176 & pixel_y <=177)|| 
(pixel_x<=557 & pixel_x>=556 & pixel_y >=182 & pixel_y <=187)|| 
(pixel_x<=557 & pixel_x>=554 & pixel_y >=182 & pixel_y <=183)|| 
//pixgen for "A"
(pixel_x<=569 & pixel_x>=566 & pixel_y >=174 & pixel_y <=175)|| 
(pixel_x<=571 & pixel_x>=570 & pixel_y >=176 & pixel_y <=177)|| 
(pixel_x<=565 & pixel_x>=564 & pixel_y >=176 & pixel_y <=177)|| 
(pixel_x<=573 & pixel_x>=572 & pixel_y >=178 & pixel_y <=189)|| 
(pixel_x<=563 & pixel_x>=562 & pixel_y >=178 & pixel_y <=189)|| 
(pixel_x<=573 & pixel_x>=562 & pixel_y >=182 & pixel_y <=183)|| 
(pixel_x<=575 & pixel_x>=570 & pixel_y >=188 & pixel_y <=189)|| 
(pixel_x<=565 & pixel_x>=560 & pixel_y >=188 & pixel_y <=189)||
//pixgen for "M"
(pixel_x<=595 & pixel_x>=590 & pixel_y >=174 & pixel_y <=175)|| 
(pixel_x<=595 & pixel_x>=590 & pixel_y >=188 & pixel_y <=189)|| 
(pixel_x<=583 & pixel_x>=578 & pixel_y >=174 & pixel_y <=175)|| 
(pixel_x<=583 & pixel_x>=578 & pixel_y >=188 & pixel_y <=189)|| 
(pixel_x<=593 & pixel_x>=592 & pixel_y >=174 & pixel_y <=189)|| 
(pixel_x<=581 & pixel_x>=580 & pixel_y >=174 & pixel_y <=189)|| 
(pixel_x<=591 & pixel_x>=590 & pixel_y >=178 & pixel_y <=179)|| 
(pixel_x<=589 & pixel_x>=588 & pixel_y >=180 & pixel_y <=181)|| 
(pixel_x<=587 & pixel_x>=586 & pixel_y >=182 & pixel_y <=185)|| 
(pixel_x<=585 & pixel_x>=584 & pixel_y >=180 & pixel_y <=181)|| 
(pixel_x<=583 & pixel_x>=582 & pixel_y >=178 & pixel_y <=179)|| 
//pixgen for "E"
(pixel_x<=609 & pixel_x>=598 & pixel_y >=174 & pixel_y <=175)|| 
(pixel_x<=609 & pixel_x>=598 & pixel_y >=188 & pixel_y <=189)|| 
(pixel_x<=607 & pixel_x>=600 & pixel_y >=180 & pixel_y <=181)|| 
(pixel_x<=601 & pixel_x>=600 & pixel_y >=174 & pixel_y <=189)|| 
(pixel_x<=609 & pixel_x>=608 & pixel_y >=174 & pixel_y <=177)|| 
(pixel_x<=609 & pixel_x>=608 & pixel_y >=186 & pixel_y <=189)|| 

//pixgen for all states
(pixel_x<=559 & pixel_x>=540 & pixel_y >=258 & pixel_y <=261)|| 
(pixel_x<=567 & pixel_x>=560 & pixel_y >=262 & pixel_y <=265)|| 
(pixel_x<=539 & pixel_x>=532 & pixel_y >=262 & pixel_y <=265)|| 
(pixel_x<=571 & pixel_x>=568 & pixel_y >=266 & pixel_y <=269)|| 
(pixel_x<=531 & pixel_x>=528 & pixel_y >=266 & pixel_y <=269)|| 
(pixel_x<=575 & pixel_x>=572 & pixel_y >=270 & pixel_y <=273)|| 
(pixel_x<=527 & pixel_x>=524 & pixel_y >=270 & pixel_y <=273)|| 
(pixel_x<=579 & pixel_x>=576 & pixel_y >=274 & pixel_y <=277)|| 
(pixel_x<=523 & pixel_x>=520 & pixel_y >=274 & pixel_y <=277)|| 
(pixel_x<=583 & pixel_x>=580 & pixel_y >=278 & pixel_y <=285)|| 
(pixel_x<=519 & pixel_x>=516 & pixel_y >=278 & pixel_y <=285)|| 
(pixel_x<=587 & pixel_x>=584 & pixel_y >=286 & pixel_y <=323)|| 
(pixel_x<=515 & pixel_x>=512 & pixel_y >=286 & pixel_y <=323)|| 
(pixel_x<=583 & pixel_x>=580 & pixel_y >=324 & pixel_y <=331)|| 
(pixel_x<=519 & pixel_x>=516 & pixel_y >=324 & pixel_y <=331)|| 
(pixel_x<=579 & pixel_x>=576 & pixel_y >=332 & pixel_y <=335)|| 
(pixel_x<=523 & pixel_x>=520 & pixel_y >=332 & pixel_y <=335)|| 
(pixel_x<=575 & pixel_x>=572 & pixel_y >=336 & pixel_y <=339)|| 
(pixel_x<=527 & pixel_x>=524 & pixel_y >=336 & pixel_y <=339)|| 
(pixel_x<=571 & pixel_x>=568 & pixel_y >=340 & pixel_y <=343)|| 
(pixel_x<=531 & pixel_x>=528 & pixel_y >=340 & pixel_y <=343)|| 
(pixel_x<=567 & pixel_x>=560 & pixel_y >=344 & pixel_y <=347)|| 
(pixel_x<=539 & pixel_x>=532 & pixel_y >=344 & pixel_y <=347)|| 
(pixel_x<=559 & pixel_x>=540 & pixel_y >=348 & pixel_y <=351)|| 





// pixgen for win state COOL FACE EMOJI
(pixel_x<=583 & pixel_x>=516 & pixel_y >=286 & pixel_y <=289)|| 
(pixel_x<=579 & pixel_x>=520 & pixel_y >=290 & pixel_y <=293)|| 
(pixel_x<=579 & pixel_x>=552 & pixel_y >=294 & pixel_y <=299)|| 
(pixel_x<=547 & pixel_x>=520 & pixel_y >=294 & pixel_y <=299)|| 
(pixel_x<=577 & pixel_x>=556 & pixel_y >=300 & pixel_y <=305)|| 
(pixel_x<=543 & pixel_x>=522 & pixel_y >=300 & pixel_y <=305)|| 
(pixel_x<=573 & pixel_x>=560 & pixel_y >=306 & pixel_y <=309)|| 
(pixel_x<=539 & pixel_x>=526 & pixel_y >=306 & pixel_y <=309)|| 
(pixel_x<=571 & pixel_x>=568 & pixel_y >=324 & pixel_y <=327)|| 
(pixel_x<=531 & pixel_x>=528 & pixel_y >=324 & pixel_y <=327)|| 
(pixel_x<=567 & pixel_x>=560 & pixel_y >=328 & pixel_y <=331)|| 
(pixel_x<=539 & pixel_x>=532 & pixel_y >=328 & pixel_y <=331)|| 
(pixel_x<=559 & pixel_x>=540 & pixel_y >=332 & pixel_y <=335)


 ? 4'h0:4'hF):(4'h0); 
 end
 
 end 
 else if (~btn)
 begin
 red <= video_on ? ((pixel_x<=140 & pixel_x>=40 & pixel_y >=90 & pixel_y <=120) ||
(pixel_x<=65 & pixel_x>=40 & pixel_y >=120 & pixel_y <=225)|| (pixel_x<=140 & pixel_x>=40 &
pixel_y >=225 & pixel_y <=255) || 
(pixel_x<=140 & pixel_x>=115 & pixel_y >=255 & pixel_y <=360)|| (pixel_x<=140 & pixel_x>=40 &
pixel_y >=360 & pixel_y <=390)|| 
(pixel_x<=255 & pixel_x>=155 & pixel_y >=90 & pixel_y <=120)|| (pixel_x<=220 & pixel_x>=190 &
pixel_y >=120 & pixel_y <=390)|| 
(pixel_x<=370 & pixel_x>=270 & pixel_y >=90 & pixel_y <=120)|| (pixel_x<=290 & pixel_x>=270 &
pixel_y >=120 & pixel_y <=390)|| 
(pixel_x<=370 & pixel_x>=350 & pixel_y >=120 & pixel_y <=390)|| (pixel_x<=350 & pixel_x>=290 &
pixel_y >=240 & pixel_y <=270)|| 
(pixel_x<=485 & pixel_x>=385 & pixel_y >=90 & pixel_y <=120)|| (pixel_x<=405 & pixel_x>=385 &
pixel_y >=120 & pixel_y <=390)|| 
(pixel_x<=485 & pixel_x>=465 & pixel_y >=120 & pixel_y <=220)|| (pixel_x<=455 & pixel_x>=435 &
pixel_y >=250 & pixel_y <=390)|| 
(pixel_x<=485 & pixel_x>=405 & pixel_y >=220 & pixel_y <=250)|| (pixel_x<=600 & pixel_x>=500 &
pixel_y >=90 & pixel_y <=120)|| 
(pixel_x<=570 & pixel_x>=540 & pixel_y >=120 & pixel_y <=390)? 4'h0:4'hF):(4'h0);

 green  <= video_on ? ((pixel_x<=140 & pixel_x>=40 & pixel_y >=90 & pixel_y <=120) ||
(pixel_x<=65 & pixel_x>=40 & pixel_y >=120 & pixel_y <=225)|| (pixel_x<=140 & pixel_x>=40 &
pixel_y >=225 & pixel_y <=255) || 
(pixel_x<=140 & pixel_x>=115 & pixel_y >=255 & pixel_y <=360)|| (pixel_x<=140 & pixel_x>=40 &
pixel_y >=360 & pixel_y <=390)|| 
(pixel_x<=255 & pixel_x>=155 & pixel_y >=90 & pixel_y <=120)|| (pixel_x<=220 & pixel_x>=190 &
pixel_y >=120 & pixel_y <=390)|| 
(pixel_x<=370 & pixel_x>=270 & pixel_y >=90 & pixel_y <=120)|| (pixel_x<=290 & pixel_x>=270 &
pixel_y >=120 & pixel_y <=390)|| 
(pixel_x<=370 & pixel_x>=350 & pixel_y >=120 & pixel_y <=390)|| (pixel_x<=350 & pixel_x>=290 &
pixel_y >=240 & pixel_y <=270)|| 
(pixel_x<=485 & pixel_x>=385 & pixel_y >=90 & pixel_y <=120)|| (pixel_x<=405 & pixel_x>=385 &
pixel_y >=120 & pixel_y <=390)|| 
(pixel_x<=485 & pixel_x>=465 & pixel_y >=120 & pixel_y <=220)|| (pixel_x<=455 & pixel_x>=435 &
pixel_y >=250 & pixel_y <=390)|| 
(pixel_x<=485 & pixel_x>=405 & pixel_y >=220 & pixel_y <=250)|| (pixel_x<=600 & pixel_x>=500 &
pixel_y >=90 & pixel_y <=120)|| 
(pixel_x<=570 & pixel_x>=540 & pixel_y >=120 & pixel_y <=390)? 4'h0:4'hF):(4'h0);

 blue  <= video_on ? ((pixel_x<=140 & pixel_x>=40 & pixel_y >=90 & pixel_y <=120) ||
(pixel_x<=65 & pixel_x>=40 & pixel_y >=120 & pixel_y <=225)|| (pixel_x<=140 & pixel_x>=40 &
pixel_y >=225 & pixel_y <=255) || 
(pixel_x<=140 & pixel_x>=115 & pixel_y >=255 & pixel_y <=360)|| (pixel_x<=140 & pixel_x>=40 &
pixel_y >=360 & pixel_y <=390)|| 
(pixel_x<=255 & pixel_x>=155 & pixel_y >=90 & pixel_y <=120)|| (pixel_x<=220 & pixel_x>=190 &
pixel_y >=120 & pixel_y <=390)|| 
(pixel_x<=370 & pixel_x>=270 & pixel_y >=90 & pixel_y <=120)|| (pixel_x<=290 & pixel_x>=270 &
pixel_y >=120 & pixel_y <=390)|| 
(pixel_x<=370 & pixel_x>=350 & pixel_y >=120 & pixel_y <=390)|| (pixel_x<=350 & pixel_x>=290 &
pixel_y >=240 & pixel_y <=270)|| 
(pixel_x<=485 & pixel_x>=385 & pixel_y >=90 & pixel_y <=120)|| (pixel_x<=405 & pixel_x>=385 &
pixel_y >=120 & pixel_y <=390)|| 
(pixel_x<=485 & pixel_x>=465 & pixel_y >=120 & pixel_y <=220)|| (pixel_x<=455 & pixel_x>=435 &
pixel_y >=250 & pixel_y <=390)|| 
(pixel_x<=485 & pixel_x>=405 & pixel_y >=220 & pixel_y <=250)|| (pixel_x<=600 & pixel_x>=500 &
pixel_y >=90 & pixel_y <=120)|| 
(pixel_x<=570 & pixel_x>=540 & pixel_y >=120 & pixel_y <=390)? 4'h0:4'hF):(4'h0);
 end
 end
endmodule
