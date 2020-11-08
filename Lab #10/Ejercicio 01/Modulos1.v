//Nicole Prem 18337 Lab 10: ejercicio 1

//Contador
module Contador (input logic [11:0]entrada, input clk, reset, enable, load, output logic [11:0]salida);
always @ (posedge clk, posedge reset, load, entrada)
begin 
    if (reset)
    salida <= 11'b0;    
    else if (load)
    salida <= entrada;
    else if (enable)
    salida <= salida +1;
end
endmodule 

//ROM 
module ROM (input wire [11:0]in, output reg [7:0]out); 
reg [7:0] memoria [0:4096];

initial begin
    $readmemb("memoria.txt", memoria);
end
always @ (*) 
begin
    out<=memoria[in];
end
endmodule

//Fetch

module FFD1 (input clk, reset, D, enable, output reg salidaF); //FF tipo D de 1 bit
always @(posedge clk, posedge reset )
begin
    if (reset)
    salidaF <= 'b0;
    else if (enable && clk)
    salidaF <= D;
end
endmodule 

module Fetch(input clk, reset, input [7:0]D2, input enable, output wire [3:0] instrF, oprndF); //FF tipo D de 2 bits
FFD1 D0(clk, reset, D2[0], enable, oprndF[0]);
FFD1 D1(clk, reset, D2[1], enable, oprndF[1]);
FFD1 D8(clk, reset, D2[2], enable, oprndF[2]);
FFD1 D3(clk, reset, D2[3], enable, oprndF[3]);
FFD1 D4(clk, reset, D2[4], enable, instrF[0]);
FFD1 D5(clk, reset, D2[5], enable, instrF[1]);
FFD1 D6(clk, reset, D2[6], enable, instrF[2]);
FFD1 D7(clk, reset, D2[7], enable, instrF[3]); 
endmodule

module Procesador (input [11:0] inC, input clk, reset, enableC, loadC, enableF, output [3:0]instrP, oprndP, output [11:0]PC); //enableC es para el contador y enableF es para el fetch
    wire [7:0]program_byte;
    Contador Con(inC, clk, reset, enableC, loadC, PC);
    ROM RM(PC, program_byte);
    Fetch FE(clk, reset, program_byte, enableF, instrP, oprndP);
endmodule
