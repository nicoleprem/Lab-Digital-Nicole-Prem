//Nicole Prem 18337 testbench ejercicio 02 del lab 09

module Testbench();

always begin #2 clk = ~clk; end

reg clk, reset, enable;
wire salidaT;
FFT FT(clk, reset, enable, salidaT);

initial begin
$display ("\n");
$display ("Ejercicio 02: FF tipo T");
$display ("clk reset enable | salida");
$display ("------------------------------|-------");
$monitor ("%b %b %b | %b", clk, reset, enable, salidaT);

clk=0; reset=0; enable=0;
#5 reset=1;
#5 reset=0;
#5 enable=1;
#15 $finish;
end

initial begin
    $dumpfile ("Modulos2_tb.vcd");
    $dumpvars (0, Testbench);
end

endmodule 
