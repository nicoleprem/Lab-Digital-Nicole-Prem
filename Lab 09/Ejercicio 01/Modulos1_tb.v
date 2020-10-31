//Nicole Prem 18337 testbench ejercicio 01 del lab 09

module Testbench();

always begin #2 clk = ~clk; end

//Con 1 bit

reg clk, reset, enable, D;
wire salida;

//FF de 1 bit
FFD1 F1(clk, reset, D, enable, salida);
initial begin
$display ("\n");
$display ("Ejercicio 01: FF tipo D de 1 bit");
$display ("clk reset enable D | salida");
$display ("------------------------------|-------");
$monitor ("%b %b %b %b | %b", clk, reset, D, enable, salida);

clk=0; reset=0; D=0; enable=0;
#5 reset=1;
#1 reset=0;
#5 D=1;
#5 enable=1;
#10 enable=0;
#5 enable=1; D=0;
end

//FF de 2 bits

reg [1:0] D2;
wire [1:0] salida2;
FFD2 F2(clk, reset, D2, enable, salida2);
initial begin
$display ("\n");
$display ("Ejercicio 01: FF tipo D de 2 bit");
$display ("clk reset enable D | salida");
$display ("------------------------------|-------");
$monitor ("%b %b %b %b | %b", clk, reset, D2, enable, salida2);

clk=0; reset=0; D2=2'b00; enable=0;
#5 reset=1;
#1 reset=0;
#5 enable=1;
#5 D2=2'b01;
#5 D2=2'b11;
#10 enable=0;
#10 enable=1; D2=2'b10;
end

//FF de 4 bits
reg [3:0]D4;
wire [3:0]salida4;
FFD4 F4(clk, reset, D4, enable, salida4);
initial begin
$display ("\n");
$display ("Ejercicio 01: FF tipo D de 4 bit");
$display ("clk reset enable D | salida");
$display ("------------------------------|-------");
$monitor ("%b %b %b %b | %b", clk, reset, D4, enable, salida4);  

clk=0; reset=0; D4=4'b0000; enable=0;
#5 reset=1;
#1 reset=0;
#5 enable=1;
#5 D4=4'b0010;
#5 D4=4'b1000;
#5 enable=0;
#5 D4=5'b0101;
#5enable=1;
#5 $finish;
end





initial begin
    $dumpfile ("Modulos1_tb.vcd");
    $dumpvars (0, Testbench);
end

endmodule 
