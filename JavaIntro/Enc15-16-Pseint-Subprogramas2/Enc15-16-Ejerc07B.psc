Algoritmo sin_titulo
		Definir num como Entero
		Escribir "Ingrese un número"
		Leer num
		escalera(num)
FinAlgoritmo

SubProceso escalera(num Por Referencia)
	Definir i como Entero
	Definir fila Como Caracter
	fila = ""
	Para i=1 Hasta num
		fila =  Concatenar(fila, ConvertirATexto(i))
		Escribir fila
	FinPara
FinSubProceso

