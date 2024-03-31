Algoritmo sin_titulo
	
//	Crear un subproceso que rellene dos arreglos de tamaño n, con números aleatorios. Después,
//		hacer una función que reciba los dos arreglos y diga si todos sus valores son iguales o no. La
//				función debe devolver el resultado de está validación, para mostrar el mensaje en el
//				algoritmo. Nota: recordar el uso de las variables de tipo lógico.
	
	Definir n, vectorA, vectorB Como Entero
	Definir retorno Como Logico
	
	Imprimir "Ingrese el tamaño de los vectores"
	Leer n
	
	Dimension vectorA(n)
	Dimension vectorB(n)
	
	Rellenar(vectorA,n)
	Rellenar(vectorB,n)
	
	Imp(vectorA, n)
	Imp(vectorB, n)
	
	retorno = revisar(vectorA, vectorB, n)
	
	Imprimir "Todos los valores de los 2 vectores coinciden ?: ", retorno
	
FinAlgoritmo

SubProceso Rellenar(vector,n)
	Definir i Como Entero
	
	Para i=0 Hasta n-1
		vector(i) = Aleatorio(0,10)		
	FinPara
	
FinSubProceso

Funcion retorno = revisar(vectorA, vectorB, n)
	
	Definir i, coincidencias Como Entero
	Definir retorno Como Logico
	
	coincidencias = 0
	
	Para i=0 hasta n-1
		Si vectorA(i) = vectorB(i)
			coincidencias = coincidencias + 1
			Imprimir "Hubo una coincidencia en la posición: ", i, " del valor:", vectorA(i)
		FinSi
	FinPara
	
	Imprimir "Hubo ", coincidencias, ", coincidencias"
	
	Si coincidencias = n-1
		retorno = Verdadero
	SiNo
		retorno = Falso
	FinSi
	
FinFuncion

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
	