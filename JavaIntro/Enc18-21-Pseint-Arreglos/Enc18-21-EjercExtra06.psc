Algoritmo sin_titulo
//	Crear una función que devuelva la diferencia que hay entre el valor más chico de un arreglo y 
	//	su valor más grande
	
	Definir i, n, mayor, menor, vector Como Entero
	
	Imprimir "Ingrese la dimension del vector"
	Leer n
	Dimension vector(n)
	
	Para i=0 hasta n-1
		vector(i)=Aleatorio(-10, 10)
	FinPara
	
	mayor=vector(0)
	menor=vector(0)
	
	Para i=0 hasta n-1
		Si vector(i) > mayor
			mayor = vector(i)
		SiNo
			Si vector(i) < menor
				menor = vector(i)
			FinSi
		FinSi
	FinPara
	
	imp(vector, n)
	
	Imprimir "El numero mayor del vector es: ", mayor
	Imprimir "El numero menor del vector es: ", menor
	
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
