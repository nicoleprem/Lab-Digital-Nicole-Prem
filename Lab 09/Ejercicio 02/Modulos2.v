//Nicole Prem 18337 Ejercicio 02 del lab 09

//FF tipo D:
module FFD1 (input clk, reset, D, enable, output reg salida); 
always @(posedge clk, posedge reset )
begin
    if (reset)
    salida <= 'b0;
    else if (enable && clk)
    salida <= D;
end
endmodule 

//FF tipo T
module FFT(input clk, reset, enable, output wire salidaT);
wire E;
reg M;
FFD1 FT(clk, reset, E, enable, salidaT);
always @(posedge clk)
begin
    assign M=~salidaT;
end
assign E=M;
endmodule