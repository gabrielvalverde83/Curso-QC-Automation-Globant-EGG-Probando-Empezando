Algoritmo ejercicio_5
	
//	Realizar una función que calcule y retorne la suma de todos los divisores del número n
//	distintos de n. El valor de n debe ser ingresado por el usuario.
	
	Definir num Como Entero
	Escribir "Ingrese un numero: "
	Leer num
	Escribir "Es primo? " verificarNumero(num)
FinAlgoritmo

Funcion esPrimo <- verificarNumero(num)
	definir esPrimo Como Logico
	definir i, contador Como Entero
	contador = 0
	Para i<-1 Hasta num Con Paso 1 Hacer
		
		Si num mod i == 0 Entonces
			contador = contador + 1
		Fin Si
	Fin Para
	Si contador <= 2 Entonces
		esPrimo = Verdadero 
	SiNo
		esPrimo = falso
	Fin Si
	
FinFuncion