Algoritmo sin_titulo
	
//	Realizar un programa que rellene un vector de tamaño N, con valores ingresados por el
//	usuario. A continuación, se debe buscar un elemento dentro del arreglo (el número a buscar
//	también debe ser ingresado por el usuario). El programa debe indicar la posición donde se
//	encuentra el valor. En caso que el número se encuentre repetido dentro del arreglo se deben
//	imprimir todas las posiciones donde se encuentra ese valor.
//	Finalmente, en caso que el número a buscar no está adentro del arreglo se debe mostrar un
	//mensaje.

	Definir vector, i, n, encont, encontCont Como Entero
	
	Imprimir "Ingrese el tamaño del vector"
	Leer n
	
	Dimension vector(n)
	
	Imprimir "Ingrese valores enteros para rellenar el vector"
	
	Para i=0 hasta n-1
		Leer vector(i)
	FinPara
	
	Imprimir "Ingrese el valor a ser encontrado"
	Leer encont
	
	encontCont = 0
	
	Para i=0 hasta n-1
		Si vector(i) = encont
			encontCont = encontCont + 1
			Imprimir "En el subindice ", i, ", se encontro el valor buscado"
		FinSi
	FinPara
	
	Si encontCont = 0
		Imprimir "No se encontraron coincidencias"
	FinSi
	
	
	
	
	
FinAlgoritmo
