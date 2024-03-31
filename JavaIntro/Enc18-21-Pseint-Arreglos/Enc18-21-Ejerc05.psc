Algoritmo sin_titulo
//	Realizar un programa que rellene un vector de tamaño N, con valores ingresados por el
//	usuario. A continuación, se deberá crear una función que reciba el vector y devuelva el valor
//	más grande del vector.
	
	Definir vector, n, i Como Entero
	
	Imprimir "Ingrese el tamaño del vector"
	Leer n
	
	Dimension vector(n)
	
	Imprimir "Ingrese los valores del vector"
	Para i=0 hasta n-1
		Leer vector(i)
	FinPara
	
	Imprimir "El mayor numero dentro del vector es: " Recorrer(vector,n)
	
FinAlgoritmo


Funcion retorno = Recorrer(vector,n)
	Definir retorno,i Como Entero
	
	retorno = 0
	
	Para i=0 hasta n-1
		Si vector(i) > retorno
			retorno = vector(i)
		FinSi
	FinPara
	
FinFuncion
	