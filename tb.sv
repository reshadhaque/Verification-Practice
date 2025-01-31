`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////


`include "uvm_macros.svh";
import uvm_pkg::*;

class first extends uvm_object;
    rand bit[4:0] data;
    
    function new(string path = "first");
        super.new(path);
    endfunction
    
    `uvm_object_utils_begin(first)
    `uvm_field_int(data, UVM_DEFAULT);
    `uvm_object_utils_end
endclass

class second extends uvm_object;
    first f;
    
    function new(string path = "second");
        super.new(path);
        f = new("first");
    endfunction
    
    `uvm_object_utils_begin(second)
     `uvm_field_object(f, UVM_DEFAULT);
    `uvm_object_utils_end
endclass

module tb;
    
    second s1;
    second s2;
    
    initial begin
        s1 = new("s1");
        //s2 = new("s2");
        s1.f.randomize();
        $cast(s2, s1.clone());
        s1.f.data = 8;
        s1.print();
        s2.print();
    end
    
endmodule