//Nicole Prem 18337 Ejercicio 02 del lab 10

module tristate_data_buss(input[4:0]in, input en, output tri [4:0]out); //bussdriver que lleva los operandos 
assign out= en ? in : 5'bz;
endmodule

module tristate_ALU_result(input[4:0]inA, input enA, output tri [4:0]outA); //bussdriver que devuelve el valor de la ALU
assign outA= enA ? inA : 5'bz;
endmodule

module ALU (input wire [2:0]F, input wire [4:0]A, B, output reg [4:0]Y, output reg C, ZE);
always @ (*)
begin 
    case (F)
    'b000: begin 
            Y <= A; C <= Y[0];
    end 
    'b001: begin 
            Y <= A - B; C <= Y[4];
    end
    'b010: begin 
            Y <= B; C <= Y[0];
    end 
    'b011: begin 
            Y <= A + B; C<= Y[4];
    end 
    'b100: begin 
            Y <= ~(A & B); C <= Y[0];
    end 
    endcase
if (Y==0)
    ZE=1;
else 
    ZE=0;
  
end 
endmodule 

module FFD1 (input clk, reset, D, enable, output reg salidaF); //FF tipo D de 1 bit
always @(posedge clk, posedge reset )
begin
    if (reset)
    salidaF <= 'b0;
    else if (enable && clk)
    salidaF <= D;
end
endmodule 

module Accu(input clk, reset, input [4:0]D2, input enable, output wire [4:0] ACCU); //FF tipo D de 5 bits
FFD1 D0(clk, reset, D2[0], enable, ACCU[0]);
FFD1 D1(clk, reset, D2[1], enable, ACCU[1]);
FFD1 D8(clk, reset, D2[2], enable, ACCU[2]);
FFD1 D3(clk, reset, D2[3], enable, ACCU[3]);
FFD1 D4(clk, reset, D2[4], enable, ACCU[4]);
endmodule

module Procesador(input [2:0]F, input [4:0]A, B, input clk, reset, enableDB, enableR, enableFF, output [4:0]outDB, outR, outALU, outFF, output  C, ZE);
tristate_data_buss TDB(B, enableDB, outDB);
Accu AC(clk, reset, outALU, enableFF, outFF);
ALU Al(F, outFF, outDB, outALU, C, ZE);
tristate_ALU_result AR(outALU, enableR, outR);
endmodule
