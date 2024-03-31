//Realizar una función que calcule y retorne la suma de todos los divisores del número n
//distintos de n. El valor de n debe ser ingresado por el usuario.

Algoritmo sin_titulo
	Definir num, resultado Como Entero
	escribir "Ingrese un número para averiguar la suma de sus divisores " 
	leer num
	resultado = sumaDivisores(num) 
	Escribir "el resultado de la suma de los divisores es " resultado
	
FinAlgoritmo

Funcion sumDivisores <- sumaDivisores (num)
	Definir i, sumDivisores como entero
	sumDivisores = 0	
	Para i = 1 Hasta num - 1 Con Paso 1 Hacer	
		
		si num mod i == 0 Entonces
			escribir "es divisible por " i
			sumDivisores = sumDivisores + i
			
		FinSi
	Fin Para	
Fin Funcion