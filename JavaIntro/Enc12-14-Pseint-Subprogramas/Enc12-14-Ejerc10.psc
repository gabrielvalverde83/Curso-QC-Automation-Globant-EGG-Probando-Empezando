Algoritmo sin_titulo
//	Realizar una función que calcule la suma de los dígitos de un número.
//Ejemplo: 25 = 2 + 5 = 7
//Nota: Para obtener el último número de un digito de 2 cifras o más debemos pensar en el
//		resto de una división entre 10. Recordar el uso de la función Mod y Trunc.
	
	Definir num Como Real
	Leer num
	
	Imprimir "La suma de los numeros es: ", sumar(num)
	
	//suma = sumar(num)
	
FinAlgoritmo

Funcion retorno = sumar(num)
	
	Definir retorno Como Entero
	
	retorno = 0
	
	Hacer
		retorno = retorno + num mod 10		
		num = num/10
		num = trunc(num)
	Mientras que num > 0
	
FinFuncion
