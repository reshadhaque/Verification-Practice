`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2024 08:36:03 AM
// Design Name: 
// Module Name: tb
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
//`include "uvm_macros.svh"
//import uvm_pkg::*;

class first;
    
    rand bit [3:0] data;

endclass

module tb;
    first f;
    initial
    begin
    
    f = new();
    f.randomize();
    $display("Value of Data: %0d", f.data);
    end
  
endmodule
