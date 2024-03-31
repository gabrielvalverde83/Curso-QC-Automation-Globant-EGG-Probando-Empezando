Algoritmo sin_titulo
//	Realizar una función que reciba un numero ingresado por el usuario y averigüe si el número
//	tiene todos sus dígitos impares (ejemplo: 333, 55, etc.). Para esto vamos a tener que separar el
//			numero en partes (si es un numero de más de un digito) y ver si cada número es par o impar.
//			Nota: recordar el uso de la función Mod y Trunc(). No podemos pasar el numero a cadena para
	//					realizar el ejercicio.
	
	
	Definir num Como Real
	Leer num
	
	Imprimir "El numero ingresado es IMPAR????: ", Impar(num)
	
FinAlgoritmo

Funcion retorno = Impar(num)
	
	Definir retorno Como Logico
	
	Hacer
		num = num MOD 10		
		
		Si num MOD 2 <> 0
			num = num / 10 			
			num = trunc(num)	
			retorno = Verdadero
		Sino 
			retorno = Falso
			num = 0
		FinSi
				
	Mientras Que num > 0
	
	
FinFuncion
