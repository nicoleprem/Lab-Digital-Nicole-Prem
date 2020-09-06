//Nicole Prem 18337

module FF_Ej05 (input clk, reset, set, D1, output reg Q1); //primero hice un flip flop como el que me piden pero de 1 bt para luego unirlo a 4
always @(posedge clk or posedge reset) begin //reset asíncrono
    if (reset) Q1<=1'b0; //reset pasa Q a 0
    else if (set) Q1<=1'b1; //flanco hace que Q sea igual a D 
    else Q1<=D1;
    end
endmodule 

module FF_Ej05_4b (input clk, reset, set, input [3:0]D, output [3:0]Q); //comienzo el módulo del FF de 4 bits
FF_Ej05 K0(clk, reset, set, D[0], Q[0]);
FF_Ej05 K1(clk, reset, set, D[1], Q[1]);
FF_Ej05 K2(clk, reset, set, D[2], Q[2]);
FF_Ej05 K3(clk, reset, set, D[3], Q[3]);
endmodule

module FSM_Ej01 (input clk, reset, set, A, B, output Y1); //FSM del ejercicio 1
wire S0, S1, E0, E1; //S son mis estados actuales y E los estados futuros
FF_Ej05 C0(clk, reset, set, E0, S0);
FF_Ej05 C1(clk, reset, set, E1, S1);
assign E0 = S0&A&B | S1&B;
assign E1 = ~S0&~S1&B;
assign Y1 = S0&A&B;
endmodule

module FSM_Ej03 (input clk, reset, set, A3, output [2:0]Y3);
wire F0, F1, F2, N0, N1, N2; //F son mis estados actuales y N los estados futuros
FF_Ej05 S00(clk, reset, set, N0, F0);
FF_Ej05 S11(clk, reset, set, N1, F1);
FF_Ej05 S22(clk, reset, set, N2, F2);
assign N0 = (~F0 & ~F1 & ~F2 & ~A3) | (~F0 & F1 & F2 & A3) | (F0 & F1 & F2 & ~A3) | (F0 & F1 & ~F2) | (F0 & ~F1 & A3) | (F0 & ~F1 & F2);
assign N1 =  (~F0 & ~F1 & ~F2 & ~A3) | (~F0 & F1 & F2 & ~A3) | (F0 & F1 & F2 & ~A3) | (F0 & ~F1 & ~F2 & ~A3) | (F1 & ~F2 & A3) | (~F1 & F2 & A3);
assign N2 = ~F2;
assign Y3[2] = F0;
assign Y3[1] = (~F0 & F1 & F2 & A3) | (~F0 & F1 & F2 & ~A3) | (F0 & ~F1 & ~F2 & ~A3) | (~F0 & F1 & ~F2) | (F0 &~F1 & A3) | (F0 & ~F1 & ~F2);
assign Y3[0] = (~F0 & F1 & ~F2) | (F0 & F1 & ~F2) | (~F1 & F2);
endmodule

