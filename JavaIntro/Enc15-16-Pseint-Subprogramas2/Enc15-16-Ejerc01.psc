Algoritmo sin_titulo
	
//	Realizar un procedimiento que permita intercambiar el valor de dos variables de tipo entero.
//	La variable A, debe terminar con el valor de la variable B.
	
	Definir num1, num2 Como Entero
	
	Imprimir "Ingrese 2 numeros"
	
	Leer num1, num2
	
	cambioLugar(num1, num2)	
	
	Imprimir "Ahora el num1 es: ", num1, " y el num2 es: ", num2
	
FinAlgoritmo

SubProceso cambioLugar(num1 Por Referencia, num2 Por Referencia)	
	Definir num3 Como Entero
	
	num3=num1
	num1=num2
	num2=num3
	
	
FinSubProceso
