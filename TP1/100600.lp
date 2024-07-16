/* Objective function */
min: 11 x115 + 11 x114 + 11 x112 + 10 x105 + 10 x104 + 10 x102 + 7 x75 + 7 x74 + 7 x72 - 7 x92 - 7 x114;

/* Variable bounds */
R1.RESIDUAL1: x65 + x54 + x32 >= 0;
R2.RESIDUAL3: x85 + x74 + x52 - x32 >= 0;
//SUBTRAÇÃO DE x32, permite que se consiga ainda empacotar no contentor de comprimento de 3, um item de 2//
R3.RESIDUAL6: x115 + x104 + x82 - x65 - x64 - x62 >= 0;
//SUBTRAÇÃO DE x65, x64, x62, permite que se consiga ainda empacotar no contentor de comprimento de 6, itens de 2, 4, 5//
R4.RESIDUAL8: x102 - x85 - x84 - x82 >= 0;
//SUBTRAÇÃO DE x85, x84, x82, permite que se consiga ainda empacotar no contentor de comprimento de 8, itens de 2, 4, 5//
R5.RESIDUAL9: x112 - x95 - x94 - x92 >= 0;
//SUBTRAÇÃO DE x95, x94, x92, permite que se consiga ainda empacotar no contentor de comprimento de 9, itens de 2, 4, 5//

R6.EMPACOTAMENTO.ITEM2: x112 + x102 + x92 + x82 + x75 + x64 + x62 + x52 + 2 x42 + x32 >= 8;
R7.EMPACOTAMENTO.ITEM4: x114 + x104 + x95 + x94 + 2 x84 + x74 + x64 + x62 + x54 - x42 >= 2;
//SUBTRAÇÃO DE x42, permite que se consiga ainda empacotar no contentor de comprimento de 4, um item de 2//
R8.EMPACOTAMENTO.ITEM5: x115 + 2 x105 + x95 + x94 + x85 + x75 + x72 + x65 - x54 - x52 >= 5;
//SUBTRAÇÃO DE x54, x52, permite que se consiga ainda empacotar no contentor de comprimento de 8, itens de 2, 4//

R9.EMPACOTAMENTO.CONTENTOR11: x115 + x114 + x112 >= 0;
R10.EMPACOTAMENTO.CONTENTOR10: x105 + x104 + x102 <= 1;
R11.EMPACOTAMENTO.CONTENTOR7: x75 + x74 + x72 - x114 - x92 <= 1;
//SUBTRAÇÃO DE x114, x92, permite que se consiga ainda empacotar no contentor de comprimento de 11 e 9, itens de 2, 4, limitando o uso de contentores 7, visto que é <= 1//

int x32, x42, x52, x54, x62, x64, x65, x72, x74, x75, x82, x84, x85, x92, x94, x95, x102, x104, x105, x112, x114, x115;