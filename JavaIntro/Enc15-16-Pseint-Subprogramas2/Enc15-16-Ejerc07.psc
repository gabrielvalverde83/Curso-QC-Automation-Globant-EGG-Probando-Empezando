Algoritmo sin_titulo
//	Crear un programa que dibuje una escalera de números, donde cada línea de números
//	comience en uno y termine en el número de la línea. Solicitar la altura de la escalera al usuario
//al comenzar. Ejemplo: si se ingresa el número 3:
//1
//12
	//123
	
	Definir num ,i ,j Como Entero
	
	Imprimir "Ingrese un numero de escalones"
	Leer num
	
	Para i=1 hasta num
		Para j=1 hasta i
			Escribir Sin Saltar j
		FinPara
		Escribir ""
	FinPara
	
	
FinAlgoritmo
