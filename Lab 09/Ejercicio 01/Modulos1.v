//Nicole Prem 18337 Ejercicio 01 de Lab 09

module FFD1 (input clk, reset, D, enable, output reg salida);
always @(posedge clk, posedge reset )
begin
    if (reset)
    salida <= 'b0;
    else if (enable && clk)
    salida <= D;
end
endmodule 

module FFD2(input clk, reset, input [1:0]D2, input enable, output wire [1:0] salida);
FFD1 D0(clk, reset, D2[0], enable, salida[0]);
FFD1 D1(clk, reset, D2[1], enable, salida[1]);
endmodule

module FFD4(input clk, reset, input[3:0]D4, input enable, output wire [3:0]salida4);
FFD2 D2(clk, reset, D4[1:0], enable, salida4[1:0]);
FFD2 D3(clk, reset, D4[3:2], enable, salida4[3:2]);
endmodule