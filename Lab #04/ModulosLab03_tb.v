// Nicole Prem 18337 Testbench de los Modulos

module testbench();
reg A01, B01, C01, B02, A03, B03, C03, D03, A04, B04, C04, D04, A11, B11, C11, D11, C12, B12, A13, B13, C13, D13, A14, B14, C14, A5, B5, A05, B05, 
    A15, B15, A25, B25, A35, B35, A45, B45; //todos los inputs
wire Y01, Y02, Y03, Y04, Y11, Y12, Y13, Y14, Y5, Y05, Y15, Y25, Y35, Y45; //todos los outputs

Tabla01_Ej1 T01 (A01, B01, C01, Y01); //Tabla 01

initial begin
$display("Tabla 01");
$display ("A B C | Y");
$display ("------|---");
$monitor ("%b %b %b | %b", A01, B01, C01, Y01);

A01 = 0; B01 = 0; C01 = 0; //1

#1 C01=1; //2
#1 B01=1; C01=0; //3
#1 C01=1; //4
#1 A01=1; B01=0; C01=0; //5
#1 C01=1; //6
#1 B01=1; C01=0; //7
#1 C01=1; //8
end
 
Tabla02_Ej1 T02 (B02, Y02); //Tabla 02

initial begin
    #10
$display ("Tabla 02");
$display ("B | Y");
$display ("--|---");
$monitor ("%b | %b",B02, Y02);

B02=0;
#1 B02 = 1;

end

Tabla03_Ej1 T03 (A03, B03, C03, D03, Y03); //Tabla 03

initial begin 
    #15
$display("Tabla 03");
$display("A B C D| Y");
$display ("------|---");
$monitor ("%b %b %b %b | %b", A03, B03, C03, D03, Y03);

A03 = 0; B03 = 0; C03 = 0; D03 = 0; //1

#1 D03 = 1; //2
#1 C03=1; D03=0; //3
#1 D03=1; //4
#1 B03=1; C03=0; D03=0; //5
#1 D03=1; //6
#1 C03=1; D03=0; //7
#1 D03=1; //8
#1 A03=1; B03=0; C03=0; D03=0; //9
#1 D03=1; //10
#1 C03=1; D03=0; //11
#1 D03=1; //12
#1 B03=1; C03=0; D03=0; //13
#1 D03=1; //14
#1 C03=1; D03=0; //15
#1 D03=1; //16

end 

Tabla04_Ej1 T04 (A04, B04, C04, D04, Y04); //Tabla 04

initial begin 
    #35
$display("Tabla 04");
$display("A B C D| Y");
$display ("------|---");
$monitor ("%b %b %b %b | %b", A04, B04, C04, D04, Y04);

A04 = 0; B04 = 0; C04 = 0; D04 = 0; //1

#1 D04 = 1; //2
#1 C04=1; D04=0; //3
#1 D04=1; //4
#1 B04=1; C04=0; D04=0; //5
#1 D04=1; //6
#1 C04=1; D04=0; //7
#1 D04=1; //8
#1 A04=1; B04=0; C04=0; D04=0; //9
#1 D04=1; //10
#1 C04=1; D04=0; //11
#1 D04=1; //12
#1 B04=1; C04=0; D04=0; //13
#1 D04=1; //14
#1 C04=1; D04=0; //15
#1 D04=1; //16

end 

Tabla1_Ej2 T11(A11, B11, C11, D11, Y11); //Tabla 11 (tabla 1 del ej 2)

initial begin 
    #55
$display("Tabla 11");
$display("A B C D| Y");
$display ("------|---");
$monitor ("%b %b %b %b | %b", A11, B11, C11, D11, Y11);

A11 = 0; B11 = 0; C11 = 0; D11 = 0; //1

#1 D11 = 1; //2
#1 C11=1; D11=0; //3
#1 D11=1; //4
#1 B11=1; C11=0; D11=0; //5
#1 D11=1; //6
#1 C11=1; D11=0; //7
#1 D11=1; //8
#1 A11=1; B11=0; C11=0; D11=0; //9
#1 D11=1; //10
#1 C11=1; D11=0; //11
#1 D11=1; //12
#1 B11=1; C11=0; D11=0; //13
#1 D11=1; //14
#1 C11=1; D11=0; //15
#1 D11=1; //16

end 

Tabla2_Ej2 T12(C12, B12, Y12); //Tabla 12 (tabla 2 del ej 2)

initial begin
    #75

$display("Tabla 12");
$display("B C | Y");
$display("----|--");
$monitor("%b %b | %b", B12, C12, Y12);

B12=0; C12=0; 

#1 C12=1;
#1 B12=1; C12=0;
#1 C12=1;


end

Tabla3_Ej2 T13(A13, B13, C13, D13, Y13);

initial begin
    #85

$display("Tabla 13");
$display("A B C D| Y");
$display ("------|---");
$monitor ("%b %b %b %b | %b", A13, B13, C13, D13, Y13);

A13 = 0; B13 = 0; C13 = 0; D13 = 0; //1

#1 D13 = 1; //2
#1 C13=1; D13=0; //3
#1 D13=1; //4
#1 B13=1; C13=0; D13=0; //5
#1 D13=1; //6
#1 C13=1; D13=0; //7
#1 D13=1; //8
#1 A13=1; B13=0; C13=0; D13=0; //9
#1 D13=1; //10
#1 C13=1; D13=0; //11
#1 D13=1; //12
#1 B13=1; C13=0; D13=0; //13
#1 D13=1; //14
#1 C13=1; D13=0; //15
#1 D13=1; //16


end 

Tabla4_Ej2 T14 (A14, B14, C14, Y14);

initial begin
    #107

$display("Tabla 14");
$display ("A B C | Y");
$display ("------|---");
$monitor ("%b %b %b | %b", A14, B14, C14, Y14);

A14 = 0; B14 = 0; C14 = 0; //1

#1 C14=1; //2
#1 B14=1; C14=0; //3
#1 C14=1; //4
#1 A14=1; B14=0; C14=0; //5
#1 C14=1; //6
#1 B14=1; C14=0; //7
#1 C14=1; //8

end
 

//------------------------------ Desde aquí empieza el ejercicio 5 ----------------------------------------------//


TablaSOP_Ej5_GLM T5 (A5, B5, Y5); //ecuación SOP GLM del ej 5

initial begin
    #120

$display("Tabla SOP GLM Ej5");
$display("A B | Y");
$display("----|--");
$monitor ("%b %b | %b", A5, B5, Y5);

A5 = 0; B5 = 0;

#1 B5=1;
#1 A5=1; B5=0;
#1 B5=1;


end

TablaPOS_Ej5_GLM T05 (A05, B05, Y05); //ecuación POS GLM del ej 5

initial begin
    #130

$display("Tabla POS GLM Ej5");
$display("A B | Y");
$display("----|--");
$monitor ("%b %b | %b", A05, B05, Y05);

A05 = 0; B05 = 0;

#1 B05=1;
#1 A05=1; B05=0;
#1 B05=1;


end

KMap_GLM K0(A15, B15, Y15); //ecuación del Kmap del ej 5 GLM

initial begin 
    #140
    
$display("Tabla K-Map GLM Ej5");
$display("A B | Y");
$display("----|--");
$monitor ("%b %b | %b", A15, B15, Y15);

A15 = 0; B15 = 0;

#1 B15=1;
#1 A15=1; B15=0;
#1 B15=1;


end

TablaSOP_Ej5_BM T15 (A25, B25, Y25); // ecuación SOP BM

initial begin 
    #150
    
$display("Tabla POS BM Ej5");
$display("A B | Y");
$display("----|--");
$monitor ("%b %b | %b", A25, B25, Y25);

A25 = 0; B25 = 0;

#1 B25=1;
#1 A25=1; B25=0;
#1 B25=1;

end 

TablaPOS_Ej5_BM T25 (A35, B35, Y35); //ecuación POS BM

initial begin 
    #160
    
$display("Tabla SOP BM Ej5");
$display("A B | Y");
$display("----|--");
$monitor ("%b %b | %b", A35, B35, Y35);

A35 = 0; B35 = 0;

#1 B35=1;
#1 A35=1; B35=0;
#1 B35=1;
end 

KMap_BM T35 (A45, B45, Y45); //ecuación del K map BM

initial begin 
    #170
    
$display("Tabla K-Map BM Ej5");
$display("A B | Y");
$display("----|--");
$monitor ("%b %b | %b", A45, B45, Y45);

A45 = 0; B45 = 0;

#1 B45=1;
#1 A45=1; B45=0;
#1 B45=1;
#1 $finish; //esto voy acarreando
end 

initial begin //todo esto va de último
    $dumpfile("ModulosLab03_tb.vcd");
    $dumpvars(0,testbench);
    
end
endmodule


