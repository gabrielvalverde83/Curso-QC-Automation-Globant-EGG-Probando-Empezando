Algoritmo sin_titulo
	
//	Realizar un programa con el siguiente menú y le pregunte al usuario que quiere hacer hasta
//que ingrese la opción Salir:
//	A. Llenar Vector A. Este vector es de tamaño N y se debe llenar de manera aleatoria
//	usando la función Aleatorio(valorMin, valorMax) de PseInt.
//	B. Llenar Vector B. Este vector también es de tamaño N y se llena de manera aleatoria.
//	C. Llenar Vector C con la suma de los vectores A y B. La suma se debe realizar elemento
//a elemento. Ejemplo: C = A + B
//	D. Llenar Vector C con la resta de los vectores B y A. La resta se debe realizar elemento a
//elemento. Ejemplo: C = B - A
//E. Mostrar. Esta opción debe permitir al usuario decidir qué vector quiere mostrar: Vector
//	A, B, o C.
//	F. Salir.
//NOTA: El rango de los números aleatorios para los Vectores será de [-100 a 100]. La longitud
//		para todos los vectores debe ser la misma, por lo tanto, esa información sólo se solicitará una
	//vez.
	
	Definir vectorA, vectorB, vectorC, i, n Como Entero
	Definir selecc Como Caracter
	
	Imprimir "Ingrese la dimension de los vectores"
	Leer n
	
	Dimension vectorA(n)
	Dimension vectorB(n)
	Dimension vectorC(n)
	
	Imprimir "Ingrese la opción deseada"
	Imprimir "Ingrese A - para rellenar el vectorA"
	Imprimir "Ingrese B - para rellenar el vectorB"
	Imprimir "Ingrese C - para Sumar el vectorA con el vectorB"
	Imprimir "Ingrese D - para Restar el vectorB con el vectorA"
	Imprimir "Ingrese E - mostrar los vectores"
	Imprimir "Ingrese F - para salir"
	
	
	
	Hacer
		Leer selecc
		selecc = Minusculas(selecc)
	 
		Segun selecc Hacer
			"a":
				rellenar(vectorA, n)
			"b":
				rellenar(vectorB, n)
			"c":
				matem(vectorA, vectorB, vectorC, n, "S")
			"d":
				matem(vectorA, vectorB, vectorC, n, "R")
			"e":
				Imprimir Sin Saltar "El vector A es: "
				imp(vectorA, n)
				Imprimir Sin Saltar "El vector B es: "
				imp(vectorB, n)
				Imprimir Sin Saltar "El vector C es: "
				imp(vectorC, n)
		FinSegun
		
	Mientras Que selecc <> "f"
	
FinAlgoritmo

SubProceso rellenar(vector, n)
	Definir i Como Entero
	Para i=0 hasta n-1
		vector(i) = Aleatorio(-100, 100)
	FinPara
FinSubProceso

SubProceso matem(vector1, vector2, vector3, n, M)
	Definir i Como Entero
	
	Si M="S"
		Para i=0 hasta n-1
			vector3(i) = vector1(i) + vector2(i)
		FinPara
	FinSi
	
	Si M="R"
		Para i=0 hasta n-1
			vector3(i) = vector2(i) - vector1(i)
		FinPara
	FinSi
		
FinSubProceso

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
