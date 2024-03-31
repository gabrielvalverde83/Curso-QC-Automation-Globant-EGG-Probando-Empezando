Algoritmo sin_titulo
	
//	Realizar un programa que rellene un vector con 5 valores ingresados por el usuario y los
	//	muestre por pantalla.
	
	Definir i , n Como Entero
	Definir vector Como caracter
	
	Imprimir "De cuanto queres el vector"
	Leer n
	
	Dimension vector(n)
	
	Imprimir "Ingrese los n valores enteros"
	
	Para i=0 hasta n-1
		Leer vector(i)		
	FinPara
	
	Imprimir "El vector es el siguiente"
	
	Para i=0 hasta n-1			
		Imprimir vector(i)
	FinPara
	
	
	
FinAlgoritmo
