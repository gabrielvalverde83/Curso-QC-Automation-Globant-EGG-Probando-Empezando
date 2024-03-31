Algoritmo sin_titulo
	
//	Realizar un procedimiento que permita realizar la división entre dos números y muestre el
//	cociente y el resto utilizando el método de restas sucesivas.
//	El método de división por restas sucesivas consiste en restar el dividendo con el divisor hasta
//	obtener un resultado menor que el divisor, este resultado es el residuo, y el número de restas
//realizadas es el cociente. Por ejemplo: 50 / 13:
//		50 ? 13 = 37 una resta realizada
//		37 ? 13 = 24 dos restas realizadas
//		24 ? 13 = 11 tres restas realizadas
	//	dado que 11 es menor que 13, entonces: el residuo es 11 y el cociente es 3.
	
	Definir num1, num2 Como Entero
	
	Imprimir "Ingrese 2 numeros: "
	
	Hacer 
		Leer num1, num2
	Mientras Que num2=0 o num2>num1
	
	
	Imprimir "Si dividimos :", num1 , " / ", num2
	
	resta(num1,num2)
	
	Imprimir "Obtenemos el cociente de:,", num2, " y el residuo es: ", num1
	
FinAlgoritmo

SubProceso resta(num1 Por Referencia,num2 Por Referencia)
	
	Definir num3,i Como Entero
	
	num3=0
	i=0
	
	Hacer
		num3=num1-num2
		num1=num3
		i=i+1
	Mientras Que num3 > num2
	
	num2 = i		//i es el resto
	//num1 = num3		// num3 es el residuo
	
	
	
	
FinSubProceso
