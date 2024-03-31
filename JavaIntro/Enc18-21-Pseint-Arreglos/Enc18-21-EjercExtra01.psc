Algoritmo sin_titulo
//	Realizar un programa que rellene dos vectores al mismo tiempo, con 5 valores aleatorios y los
	//	muestre por pantalla.
	
	Definir vectorA, vectorB, i Como Entero
	
	Dimension vectorA(5)
	Dimension vectorB(5)
	
	Para i = 0 hasta 4
		vectorA(i) = Aleatorio(0,10)
		vectorB(i) = Aleatorio(0,10)
	FinPara
	
	imp(vectorA)
	imp(vectorB)
		
FinAlgoritmo

SubProceso imp(vector)
	Definir i Como Entero
	Imprimir "El vector es el siguiente"
	Imprimir Sin Saltar " ("
	Para i=0 hasta 4
		Si i=4
			Imprimir vector(i) ")"
		Sino
			Imprimir Sin Saltar vector(i) " ,"
		FinSi
	FinPara
FinSubProceso
