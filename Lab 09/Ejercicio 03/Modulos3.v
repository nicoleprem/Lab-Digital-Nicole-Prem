//Nicole Prem 18337 ejercicio 03 del lab 09

module FFD1 (input clk, reset, D, enable, output reg salida); 
always @(posedge clk, posedge reset )
begin
    if (reset)
    salida <= 'b0;
    else if (enable && clk)
    salida <= D;
end
endmodule 



//FF tipo JK
module FFJK (input clk, reset, J, K, enable, output salidaJK);
    wire A1, A2, A3, A4, A5;
    FFD1 FD(clk, reset, A1, enable, salidaJK);
    not N1(A2, salidaJK);
    nand NA1(A3, J, A2);
    not N2(A4, K);
    nand NA2(A5, A4, salidaJK);
    nand NA3(A1, A5, A3);

endmodule


