Algoritmo sin_titulo
	
	Definir i, N, suma, vector Como Entero
	
	Imprimir "Ingrese el tamaño del vector"
	Leer n
	
	Dimension vector(n)
	
	suma = 0
	
	Imprimir "Ingrese los números que se alojarán en el vector"
	
	Para i=0 hasta n-1
		Leer vector(i)
		suma = suma + vector(i)
	FinPara
	
	Imprimir "El promedio es: ", suma/n
	
FinAlgoritmo
