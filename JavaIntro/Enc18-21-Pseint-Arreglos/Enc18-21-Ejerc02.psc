Algoritmo sin_titulo
	
//	Realizar un programa que lea 10 números reales por teclado, los almacene en un arreglo y
//	muestre por pantalla la suma, resta y multiplicación de todos los números ingresados al
//	arreglo.
	
	Definir vector, suma, resta, multip Como Real
	Definir i Como Entero
	
	Dimension vector(10)
	
	Imprimir "Ingrese 10 valores reales para realizar suma, resta y multiplicacion"
	
	Para i=0 hasta 9
		Leer vector(i)
	FinPara
	
	suma = 0
	resta = 0
	multip = 1
	
	Para i=0 hasta 9
		suma = suma + vector(i)
		resta = resta - vector(i)
		multip = multip * vector(i)
	FinPara
	
	Imprimir "La suma es: ", suma
	Imprimir "La resta es: ", resta
	Imprimir "La multiplicación es: ", multip
	
FinAlgoritmo
