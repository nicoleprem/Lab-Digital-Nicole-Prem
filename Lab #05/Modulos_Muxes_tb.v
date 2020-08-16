//Nicole Prem 18337
//testbench

module testbench();

reg d20, d21, s2, d40, d41, d42, d43, d80, d81, d82, d83, d84, d85, d86, d87, A201, B201, C201, d410, d411, d412, d413, d810, d811, d812, d813, d814, d815, d816, d817,
A202, B202, C202, d420, d421, d422, d423, d820, d821, d822, d823, d824, d825, d826, d827; 
reg [1:0] s4;
reg [2:0] s8;
wire y2, y4, y8, y201, y401, y801, y202, y402, y802;


mux2 M2 (d20, d21, s2, y2); //mux 2:1
initial begin
$display("\n");
$display("Mux 2:1");
$display("S D0 D1 Y");
$display("-------|--");
$monitor ("%b %b %b | %b", s2, d20, d21, y2);

s2 = 0; d20 = 0; d21 = 0; //1

#1 d21=1; //2
#1 d20=1; d21=0; //3
#1 d21=1; //4
#1 s2=1; d21=0; d20=0; //5
#1 d21=1; //6
#1 d20=1; d21=0; //7
#1 d21=1; //8
end

mux4 M4 (d40, d41, d42, d43, s4, y4); //mux 4:1
initial begin
    #15
    $display("\n");
    $display("Mux 4:1");
    $display ("S D0 D1 D2 D3 Y");
    $display ("-----------|--");
    $monitor ("%b %b %b %b %b | %b", s4, d40, d41, d42, d43, y4);

s4 = 2'b00; d40 = 0; d41 = 0; d42 = 0; d43 = 0; //00
#1 d43 = 1;
#1 s4 = 2'b01; d42 = 1; d43 = 0; //01
#1 s4 = 2'b10; d41 = 1; d42 = 0; //10
#1 s4 = 2'b11; d40 = 1; d41 = 0; //11
end

mux8 M8 (d80, d81, d82, d83, d84, d85, d86, d87, s8, y8); //mux 8:1
initial begin
    #25
    $display("\n");
    $display ("Mux 8:1");
    $display ("S D0 D1 D2 D3 D4 D5 D6 D7 Y");
    $display ("----------------------|--");
    $monitor ("%b %b %b %b %b %b %b %b %b| %b", s8, d80, d81, d82, d83, d84, d85, d86, d87, y8);

s8 = 3'b000; d80 = 0; d81 = 0; d82 = 0; d83 = 0; d84 = 0; d85 = 0; d86 = 0; d87 = 0; //t1
#1 s8= 3'b000; d80 = 1; //t2
#1 s8= 3'b001; d81 = 1; d80 =0; //t3
#1 s8= 3'b010; d82 = 1; d81 = 0; //t4
#1 s8= 3'b011; d83 = 1; d82 = 0; //t5
#1 s8= 3'b100; d84 = 1; d83 = 0; //t6
#1 s8= 3'b101; d85 = 1; d84 = 0; //t7
#1 s8= 3'b110; d86 = 1; d85 = 0; //t8
#1 s8= 3'b111; d87 = 1; d86 = 0;
end

mux2_T01 M201 (A201, B201, C201, y201); //tb del mux 2:1 de la tabla 01
initial begin
    #40
$display("\n");
$display("Mux 2:1 Tabla 01");
$display("A B C Y");
$display("-------|--");
$monitor ("%b %b %b | %b", A201, B201, C201, y201);

A201 = 0; B201 = 0; C201 = 0; //1

#1 C201=1; //2
#1 B201=1; C201=0; //3
#1 C201=1; //4
#1 A201=1; B201=0; C201=0; //5
#1 C201=1; //6
#1 B201=1; C201=0; //7
#1 C201=1; //8
end

mux4_T01 M401 (d410, d411, d412, d413, s4, y401); //tb del mux 4:1 de la tabla 01

initial begin
    #55
$display("\n");
$display("Mux 4:1 Tabla 01");
$display("A B C Y");
$display("-----|--");
$monitor ("%b %b | %b", s4, d413, y401);

s4 = 2'b00; d410 = 0; d411 = 0; d412 = 0; d413 = 0; //t1

#1 d413 = 1; //t2
#1 s4 = 2'b01; d412 = 0; d413 = 0; $monitor ("%b %b | %b", s4, d412, y401); //t3
#1 s4 = 2'b01; d412 = 1; //t4
#1 s4 = 2'b10; d411 = 0;  $monitor ("%b %b | %b", s4, d411, y401); //t5
#1 s4 = 2'b10; d411 = 1; //t6 
#1 s4 = 2'b11; d410 = 0; $monitor ("%b %b | %b", s4, d410, y401); //t7
#1 s4 = 2'b11; d410 = 1; $monitor ("%b %b | %b", s4, d410, y401); //t8
end

mux8_T01 M801 (d810, d811, d812, d813, d814, d815, d816, d817, s8, y801); //mux 8:1 de la tabla 01

initial begin
    #70
$display("\n");
$display("Mux 8:1 Tabla 01");
$display("A B C Y");
$display("-----|--");
$monitor("%b | %b", s8, y801);

s8 = 3'b000; d810 = 1; d811 = 0; d812 = 0; d813 = 0; d814 = 0; d815 = 0; d816 = 0; d817 = 0; //t1
#1 s8= 3'b001; d811 = 1; d810 = 0; //t2
#1 s8= 3'b010; d812 = 1; d811 =0; //t3
#1 s8= 3'b011; d813 = 1; d812 = 0; //t4
#1 s8= 3'b100; d814 = 1; d813 = 0; //t5
#1 s8= 3'b101; d815 = 1; d814 = 0; //t6
#1 s8= 3'b110; d816 = 1; d815 = 0; //t7
#1 s8= 3'b111; d817 = 1; d816 = 0; //t8

end

mux2_T02 M202 (A202, B202, C202, y202); //tb del mux 2:1 de la tabla 02
initial begin
    #85
$display("\n");
$display("Mux 2:1 Tabla 02");
$display("A B C Y");
$display("-------|--");
$monitor ("%b %b %b | %b", A202, B202, C202, y202);

A202 = 0; B202 = 0; C202 = 0; //1

#1 C202=1; //2
#1 B202=1; C202=0; //3
#1 C202=1; //4
#1 A202=1; B202=0; C202=0; //5
#1 C202=1; //6
#1 B202=1; C202=0; //7
#1 C202=1; //8
end

mux4_T02 M402 (d420, d421, d422, d423, s4, y402); //tb del mux 4:1 de la tabla 02

initial begin
    #100
$display("\n");
$display("Mux 4:1 Tabla 02");
$display("A B C Y");
$display("-----|--");
$monitor ("%b %b | %b", s4, d423, y402);

s4 = 2'b00; d420 = 0; d421 = 0; d422 = 0; d423 = 0; //t1

#1 d423 = 1; //t2
#1 s4 = 2'b01; d422 = 0; d423 = 0; $monitor ("%b %b | %b", s4, d422, y402); //t3
#1 s4 = 2'b01; d422 = 1; //t4
#1 s4 = 2'b10; d421 = 0;  $monitor ("%b %b | %b", s4, d421, y402); //t5
#1 s4 = 2'b10; d421 = 1; //t6 
#1 s4 = 2'b11; d420 = 0; $monitor ("%b %b | %b", s4, d420, y402); //t7
#1 s4 = 2'b11; d420 = 1; $monitor ("%b %b | %b", s4, d420, y402); //t8
end

mux8_T02 M802 (d820, d821, d822, d823, d824, d825, d826, d827, s8, y802); //mux 8:1 de la tabla 01

initial begin
    #120
$display("\n");
$display("Mux 8:1 Tabla 02");
$display("A B C Y");
$display("-----|--");
$monitor("%b | %b", s8, y802);

s8 = 3'b000; d820 = 1; d821 = 0; d822 = 0; d823 = 0; d824 = 0; d825 = 0; d826 = 0; d827 = 0; //t1
#1 s8= 3'b001; d821 = 1; d820 = 0; //t2
#1 s8= 3'b010; d822 = 1; d821 =0; //t3
#1 s8= 3'b011; d823 = 1; d822 = 0; //t4
#1 s8= 3'b100; d824 = 1; d823 = 0; //t5
#1 s8= 3'b101; d825 = 1; d824 = 0; //t6
#1 s8= 3'b110; d826 = 1; d825 = 0; //t7
#1 s8= 3'b111; d827 = 1; d826 = 0; //t8
#1 $finish; //lo acarreo

end


initial begin
    $dumpfile("Modulos_Muxes_tb.vcd");
    $dumpvars(0, testbench);
end 

endmodule 