.global _start
_start:
//R0: Imagen Original
//R1: Imagen Procesada
//R2: Frecuencia
//R3: Remapeo
//R4: Operaciones
//R5: Puntero contador
//R6: Puntero salto para frecuencia
//R7: Cargado de datos 1
//R8: Cargado de datos 2
//R9: Frecuencia acumulada

MOV R0, #0x00000
MOV R1, #0x10000
MOV R2, #0x20000
MOV R3, #0x20000
ADD R3, #0x00100
MOV R5, #0x00000


//Frecuencia
FREQ:
CMP R5, R1 //Verifica que el puntero R5 no supere R1 (recorre imagen)
BGE MOV_TO_ACFREQ
LDR R7, [R5] //Carga en R7 el valor de la imagen en R5
ADD R6, R2, R7 //En R6 se guarda el valor de R2 (Dirección frec) más el valor de la imagen
LDR R7, [R6] //Carga en R7 el valor de la posición R6 (o sea, frec+valor img)
ADD R7, R7, #1 //Aumenta R7 en una unidad pues se encontró una coincidencia
STR R7, [R6] //Se guarda en R6 (freq + valor img) ese nuevo valor aumentado en 1
ADD R5, R5, #1 //Aumenta puntero
B FREQ

MOV_TO_ACFREQ:
MOV	R5, R2 //Mueve el puntero a R2 (para recorrer frecuencia)
MOV	R6, R2 //Mueve R6 al valor R2
ADD R5, #1 //Se adelanta el puntero 5 una unidad, para ir verificando dos valores a la vez
B ACFREQ

ACFREQ:
CMP R5, R3 //Verifica que el puntero R5 no supere R3 (recorre frecuencia)
BGE DISTFREQ
LDR R7, [R5] //Carga en R7 el valor del puntero adelantado
LDR R8, [R6] //Carga en R8 el valor del puntero atrasado
ADD R9, R7, R8 //Suma los valores
STR R9, [R5] //Guarda en R5 el valor R9
ADD R5, R5, #1 // Aumenta ambos punteros
ADD R6, R6, #1
B ACFREQ

DISTFREQ:
LSR R9, R9, #8 //Distribuye la frecuencia dividiendo entre 256
B MOV_TO_REMAPPER

MOV_TO_REMAPPER:
MOV	R5, R2 //Mueve el puntero a R2 (para recorrer frecuencia)
MOV R6, R3 //Mueve el puntero 2 a R3 (para recorrer remapeo)
B REMAPPER

REMAPPER:
CMP R5, R3 //Verifica que el puntero R5 no supere R3 (recorre frecuencia)
BGE MOV_TO_NEW_IMAGE
MOV R4, #0
LDR R7, [R5] //Carga el valor de frecuencia
B DIVISION

DIVISION:
CMP R9, R7 //Verfica que 256 quepa en r7 para poder dividir
BGT ADJUST_NEAREST
SUB R7, R7, R9
ADD R4, R4, #1 //aumenta el valor de remapeo
B DIVISION

ADJUST_NEAREST: //Si el sobrante está más cerca de arriba agrega un uno al valor de remapeo
CMP R7, #128
BGT ADD_EXTRA
B NEXT_REMAP

ADD_EXTRA:
ADD R4, R4, #1
B NEXT_REMAP

NEXT_REMAP: //Guarda valor de remapeo y continúa con el remapeo
STR R4, [R6]
ADD R5, R5, #1
ADD R6, R6, #1
B REMAPPER

MOV_TO_NEW_IMAGE:
MOV	R5, R0 //Mueve el puntero a R0 (para recorrer imagen original)
MOV R6, R1 //Mueve el puntero 2 a R1 (para recorrer imagen nueva)
B NEW_IMAGE

NEW_IMAGE:
CMP R5, R1 //Verifica que el puntero R5 no supere R1 (recorre imagen)
BGE DONE
LDR R7, [R5] //Carga el valor de imagen
LDR R8, [R7] //Carga de remapeo el valor en la posición del valor de la imagen
STR R8, [R6]
ADD R5, R5, #1
ADD R6, R6, #1
B NEW_IMAGE

DONE:

	
	