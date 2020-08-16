//Nicole Prem 18337//
//para todas las variables de los muxes, de izquierd a derecha, d son las entradas, el siguiente dígito
//es del número del mux (si es 2:1 será 2) y el siguiente dígido es el número de la entrada
// en la implementación de los ejercicios, el tercer dígito es el número de tabla

//Mux 2:1

module mux2 (input wire d20, d21, s2, output wire y2);

assign y2 = s2 ? d20  : d21;
endmodule 

 //Mux 4:1
module mux4 (input wire d40, d41, d42, d43, input wire [1:0] s4, output wire y4);

wire low, high;

mux2 lowmux (d40, d41, s4 [0], low);
mux2 highmux (d42, d43, s4 [0], high);
mux2 finalmux (low, high, s4 [1], y4);
endmodule

//Mux 8:1
module mux8 (input wire d80, d81, d82, d83, d84, d85, d86, d87, input wire [2:0] s8, output wire y8);

wire low8, high8, final;

mux4 lowmux8  (d87, d86, d85, d84, s8[1:0], low8);
mux4 highmux8 (d83,d82, d81, d80, s8[1:0], high8);
mux2 muxfinal8 (low8, high8, s8[2], y8);
endmodule 

module mux2_T01 (input wire A201, B201, C201, output wire y201); //mux 2:1 de la tabla 01

mux2 M2_01 ((B201~^C201), (B201^C201), A201, y201);
endmodule 

module mux4_T01 (input wire d410, d411, d412, d413, input wire [1:0] AB01, output wire y401); //mux 4:1 de la tabla 01

mux4 M4_01 (d410, ~d411, ~d412, d413, AB01, y401);
endmodule

module mux8_T01 (input wire d810, d811, d812, d813, d814, d815, d816, d817, input wire [2:0] ABC01, output wire y801); //mux 8:1 de la tabla 01

mux8 M8_01 (~d810, d811, d812, ~d813, d814, ~d815, ~d816, d817, ABC01, y801);
endmodule

module mux2_T02 (input wire A202, B202, C202, output wire y202); //mux 2:1 de la tabla 02

mux2 M2_02 ((B202^C202),(~B202 & ~C202), A202, y202);
endmodule

module mux4_T02 (input wire d420, d421, d422, d423, input wire [1:0] AB02, output wire y402); //mux 4:1 de la tabla 02
wire d424;
assign d424 = 0;

mux4 M4_02 (~d420, d422, d424, ~d423, AB02, y402);
endmodule

module mux8_T02 (input wire d820, d821, d822, d823, d824, d825, d826, d827, input wire [2:0] ABC02, output wire y802); //mux 8:1 de la tabla 01

mux8 M8_01 (d820, ~d821, ~d822, ~d823, ~d824, d825, d826, ~d827, ABC02, y802);
endmodule




