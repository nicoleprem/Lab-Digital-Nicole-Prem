// Nicole Prem 18337 
//Testbench del lab 06

module testbench ();

reg clk, reset, set, A, B, A3;
reg [3:0]D;
wire [3:0]Q;
wire Y1;
wire [2:0]Y3;

always begin #5 clk = ~clk; end

FF_Ej05_4b FF(clk, reset, set, D, Q);
initial begin
$display ("\n");
$display ("Ejercicio 05");
$display("clk reset set D | Q");
$display("----------------|--");
$monitor("%b %b %b %b | %b", clk, reset, set, D, Q);

clk = 0; reset = 0; set = 0; D=4'b0000;
#3 reset=1;
#1 reset =0;
#10 D=4'b1111;
#10 D=4'b0101;
#4 reset=1;
#1 reset=0;
#10 D=4'b1010;
#10 set=1;
#10 set=0; 
#10 D=4'b0001;
#10 D=4'b0110;


end

FSM_Ej01 FG(clk, reset, set, A, B, Y1);
initial begin
#90
$display ("\n");
$display ("Ejercicio 01");
$display("clk reset A B | Y");
$display("----------------|--");
$monitor("%b %b %b %b | %b", clk, reset, A, B, Y1);
reset=0; A=0; B=0;
#5 reset=1;
#5 reset = 0;
#10 A=1;
#10 B=1; A=0;
#10 A=1;
end

FSM_Ej03 FI(clk, reset, set, A3,Y3);
initial begin
#150
$display ("\n");
$display ("Ejercicio 03");
$display("clk reset A  | Y");
$display("----------------|--");
$monitor("%b %b %b  | %b", clk, reset, A3, Y3);
reset=0; A3=1;
#5 reset=1;
#5 reset=0;
#100 A3=0;
#50 $finish;
end


initial begin
    $dumpfile ("Modulo_Lab06_tb.vcd");
    $dumpvars (0, testbench);
end

endmodule 
