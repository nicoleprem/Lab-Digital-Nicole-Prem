//Nicole Prem 18337

module Tabla01_Ej1 (input wire A01, B01, C01, output wire Y01); //Variables para la tabla 01 del ej 1

wire notA01, notB01, notC01, out01, out02, out03; //Ecuación a implementar: Y01 = (A01'& C01') | (A01& & C01) | (A01 & B01') 

not NotA01 (notA01, A01);
not NotB01 (notB01, B01);
not NotC01 (notC01, C01);

and And01 (out01, notA01, notC01);
and And02 (out02, A01, C01);
and And03 (out03, A01,notB01);
or Or1 (Y01, out01, out02, out03);

endmodule

module Tabla02_Ej1 (input wire B02, output wire Y02); //Variables para la tabla 02 del ej 1

not NotB01 (Y02, B02);

endmodule 

module Tabla03_Ej1 (input wire A03, B03, C03, D03, output wire Y03); //Variables tabla 03 del ej 1

assign Y03 = (~A03 & ~B03 & ~C03 & ~D03) | (A03 & B03 & ~C03 & ~D03) | (~A03 & B03 & ~C03 & D03) | (A03 & ~B03 & ~C03 & D03) | (~A03 & ~B03 & C03 & D03) |
            (A03 & B03 & C03 & D03) | (~A03 & B03 & C03 & ~D03) | (A03 & ~B03 & C03 & ~D03);

endmodule 

module Tabla04_Ej1 (input wire A04, B04, C04, D04, output wire Y04); //Variables tabla 04 del ej 1

assign Y04 = (A04 & B04) | (A04 & C04) | (A04 & ~C04 & ~D04);

endmodule 

module Tabla1_Ej2 (input wire A11, B11, C11, D11, output wire Y11); //Variables tabla 1 del ej 2

assign Y11 = (A11 & ~C11) | (~B11 & ~C11 & ~D11) | (A11 & ~B11) | (A11 & C11 & ~D11);

endmodule 

module Tabla2_Ej2 (input wire C12, B12, output wire Y12); //Variables tabla 2 ej 2

wire notB12;

not NotB12 (notB12, B12);

or Or12 (Y12, notB12, C12);

endmodule

module Tabla3_Ej2 (input wire A13, B13, C13, D13, output wire Y13); //Variables tabla 3 del ej 2

assign Y13 = (~B13 & ~C13 & D13) | (B13) | (A13 & ~B13 & D13);

endmodule 

module Tabla4_Ej2 (input wire A14, B14, C14, output wire Y14); //Variables tabla 4 del ej 2

wire notA14, notC14, out11;

not NotA14 (notA14, A14);
not NotC14 (notC14, C14);

and And14 (out11, notA14, notC14);

or Or14 (Y14, out11, B14);

endmodule


// ----------------------------------------------- Desde aquí empieza el ejercicio 5 ---------------------------------------------------


module TablaSOP_Ej5_GLM (input wire A5, B5, output wire Y5); //variables de la ecuacuación SOP del ej 5, GLM = gate level modelling

wire notA5, notB5, out5, out6, out7;

not NotA5 (notA5, A5);
not NotB5 (notB5, B5);

and And5 (out5, notA5, B5);
and And6 (out6, A5, notB5);
and And7 (out7, A5, B5);
or Or5 (Y5, out5, out6, out7);

endmodule 

module TablaPOS_Ej5_GLM (input wire A05, B05, output wire Y05); //variables ecuación POS del ej 5, GLM

or Or05 (Y05, A05, B05);

endmodule

module KMap_GLM (input wire A15, B15, output wire Y15); // variables de la ecuación obtenida del K-Map del ej 5, GLM

or Or15 (Y15, A15, B15);

endmodule 

module TablaSOP_Ej5_BM (input wire A25, B25, output wire Y25); // variables de la ecuación SOP del ej 5, BM = behavioral modelling

assign Y25 = (~A25 & B25) | (A25 & ~B25) | (A25 & B25);

endmodule

module TablaPOS_Ej5_BM (input wire A35, B35, output wire Y35); // variables de la ecuación POS del ej 5, BM

assign Y35 = (A35 & B35);

endmodule

module KMap_BM (input wire A45, B45, output wire Y45); // variables de la ecuación del K-Map del ej 5, BM

assign Y45 = (A45 & B45);

endmodule
