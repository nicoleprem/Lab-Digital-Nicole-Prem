//Nicole Prem 18337 testbench ejercicio 03 del lab 09

module Testbench();

always begin #2 clk = ~clk; end

reg clk, reset, enable, J, K;
wire salidaJK;
FFJK FJK(clk, reset, J, K, enable, salidaJK);

initial begin
$display ("\n");
$display ("Ejercicio 03: FF tipo JK");
$display ("clk reset J K enable | salida");
$display ("------------------------------|-------");
$monitor ("%b %b %b %b %b| %b", clk, reset, J, K, enable, salidaJK);

clk=0; reset=0; enable=0; J=0; K=0;
#5 reset=1;
#5 reset=0;
#5 enable=1;
#5 J=1;
#5 J=0;
#5 K=1;
#5 J=1;
#15 $finish;
end

initial begin
    $dumpfile ("Modulos3_tb.vcd");
    $dumpvars (0, Testbench);
end

endmodule 
