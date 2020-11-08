//Nicole Prem 18337 Testbench del Ejercicio 02 del Lab 10

module Testbench ();
reg clk, reset, enableDB, enableR, enableFF;
reg [4:0] A,B;
reg [2:0]F;
wire C, ZE;
wire [4:0]outDB, outR, outALU, outFF;

always begin #2 clk = ~clk; end

Procesador PE(F, A, B, clk, reset, enableDB, enableR, enableFF, outDB, outR, outALU, outFF, C, ZE);
initial begin
$display ("\n");
$display ("Ejercicio 02 de Lab 10");
$display ("F A B clk reset enableDB enableR enableFF | outDB outR outALU outFF C ZE");
$display ("------------------------------|-------");
$monitor ("%b %b %b %b %b %b  %b %b %b| %b %b %b  %b %b", F, A, B, clk, reset, enableDB, enableR, enableFF, outDB, outR, outALU, outFF, C, ZE);
F=3'b000; A=5'b00000; B=5'b00000; clk=0; reset=0; enableDB=0; enableR=0; enableFF=0; 
#10 reset=1;
#10 reset=0;
#10 enableDB=1; enableR=1; enableFF=1;
#10 B=5'b00011; F=3'b010;
#10 B=5'b00001;
#10 F=011;
#10 B=5'b00100;
#10 F=001;
#10 $finish;
end 

initial begin
    $dumpfile ("Modulos2_tb.vcd");
    $dumpvars (0, Testbench);
end
endmodule 