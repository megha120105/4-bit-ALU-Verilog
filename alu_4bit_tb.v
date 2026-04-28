`timescale 1ns/100ps
module alu_4bit_tb;
  
  reg [3:0] A;
  reg [3:0] B;
  reg [2:0] sel;

  wire [3:0] Y;
  wire carry;

alu_4bit uut(A, B, sel, Y, carry);

initial
begin 
$monitor("time = %d \t A = %b \t B = %b \t sel = %b \t Y = %b \t carry = %b", $time, A, B, sel, Y, carry ); 

A = 4'b0101;
B = 4'b0011;

sel = 3'b000; #10;  
sel = 3'b001; #10;  
sel = 3'b010; #10;   
sel = 3'b011; #10;  
sel = 3'b100; #10;   
sel = 3'b101; #10;   
sel = 3'b110; #10;   
sel = 3'b111; #10;  

$finish;

end 
endmodule