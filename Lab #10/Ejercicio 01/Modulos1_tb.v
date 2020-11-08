//Nicole Prem 18337 Lab 10: ejercicio 1, testbench

module Testbench ();
reg clk, reset, enableC, loadC, enableF;
reg [11:0] inC;
wire [11:0] PC;
wire [3:0] instrP, oprndP;

always begin #2 clk = ~clk; end

Procesador PR(inC, clk, reset, enableC, loadC, enableF,instrP, oprndP,PC);
initial begin
$display ("\n");
$display ("Ejercicio 01 de Lab 10");
$display ("inc clk reset enableC loadC enableF  | instrP opdndP pc");
$display ("------------------------------|-------");
$monitor ("%b %b %b %b %b %b | %b %b %b", inC, clk, reset, enableC, loadC, enableF,instrP, oprndP,PC);

inC= 12'b000000000000; clk=0; reset=0; enableC=0; loadC=0; enableF=0; 
#10 reset=1;
#10 reset=0;
#10 enableF=1;
#10 enableC=1;
#10 loadC=1;
#10 inC=12'b000000110010;
#10 loadC=0;
#10 loadC=1;
#10 inC=12'b000001010101;
#10 enableC =0; enableF=0;
#10 inC=12'b000001111000;
#10 enableC =1; enableF=1;
#10 inC=12'b000010110100;
#10 $finish;

end

initial begin
    $dumpfile ("Modulos1_tb.vcd");
    $dumpvars (0, Testbench);
end
endmodule 
