Algoritmo sin_titulo
//	Programe una función que calcule el producto de un arreglo de números enteros. Para esto 
//		imagine, por ejemplo, que para un vector V de tamaño 4, el producto de todos los valores es 
	//			igual a (V[1]*V[2]*V[3]*V[4]
	
	Definir vector, i, n, mult Como Entero
	
	Imprimir "Ingrese la dimension del vector"
	Leer n
	Dimension vector(n)
	
	Para i=0 hasta n-1
		vector(i)=Aleatorio(1, 10)
	FinPara
	
	mult=1
	
	Para i=0 hasta n-1
		mult=mult*vector(i)
	FinPara
	
	imp(vector, n)
	
	Imprimir "La multiplicación de todos los números entre si es: ", mult
	
FinAlgoritmo

SubProceso imp(vector, n)
	Definir i Como Entero
	Imprimir "El vector es el siguiente"
	Imprimir Sin Saltar " ("
	Para i=0 hasta n-1
		Si i=n-1
			Imprimir vector(i) ")"
		Sino
			Imprimir Sin Saltar vector(i) " ,"
		FinSi
	FinPara
FinSubProceso
