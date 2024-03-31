Algoritmo sin_titulo
	
	Definir matriz, palabra Como Caracter
	Definir i Como Entero
	
	//n=9
	//m=12
	
	Dimension matriz(9,12)
	
	inicializarMatriz(matriz)
	
	Para i=0 hasta 8
		Imprimir "Ingrese la palabra de la fila: ", i
		Leer palabra
		palabra = Mayusculas(palabra)
		agregarPalabra(matriz, palabra, i)
	FinPara
	
	imp(matriz)
	
	acomodarPalabra(matriz)
	
	imp(matriz)
		
FinAlgoritmo

///////////////////////////////////////////////////////////////////////////////////////

SubProceso inicializarMatriz(matriz)
	Definir i, j Como Entero
	
	Para i=0 hasta 8
		Para j=0 hasta 11
			matriz(i,j) = "*"
		FinPara
	FinPara
	
FinSubProceso

///////////////////////////////////////////////////////////////////////////////////////

SubProceso agregarPalabra(matriz, palabra, i)
	
	Definir j, long Como Entero
	
	long = Longitud(palabra)
	
	Para j=0 hasta long-1
		matriz(i,j) = Subcadena(palabra, j, j)
	FinPara
	
FinSubProceso

/////////////////////////////////////////////////////////////////////////////////////

SubProceso acomodarPalabra(matriz)
	Definir i, j, distancia Como Entero
	
	Para i=0 hasta 8
		distancia = abs(5 - buscarR(matriz, i))
		Para j=11 hasta 0 Con Paso -1
			Si matriz(i,j) <> "*" y distancia <> 0
				matriz(i,j+distancia) = matriz(i,j)
				matriz(i,j)="*"
			FinSi
		FinPara
	FinPara
	
FinSubProceso

///////////////////////////////////////////////////////////////////////////////////////

Funcion retorno = buscarR(matriz, i)
	
	Definir j Como Entero
	Definir retorno Como Entero
	
	Para j=0 hasta 11
		Si matriz(i,j) = "R"
			retorno = j
			j=11
		FinSi
	FinPara
	
FinFuncion

///////////////////////////////////////////////////////////////////////////////////////

SubProceso imp(matriz)
	Imprimir ""
	Definir i, j Como Entero
	Imprimir "La matriz es la siguiente"
	Para i=0 hasta 8
		Imprimir Sin Saltar "| "
		Para j=0 hasta 11
			Si j=11
				Imprimir matriz(i,j) " |"
			Sino
				Imprimir Sin Saltar matriz(i,j) " ,"
			FinSi
		FinPara
	FinPara
	
FinSubProceso

	