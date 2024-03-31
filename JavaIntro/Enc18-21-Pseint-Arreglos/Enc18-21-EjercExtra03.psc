Algoritmo sin_titulo
	
//	Crear dos vectores que tengan el mismo tamaño (el tamaño se pedirá por teclado) y
//	almacenar en uno de ellos nombres de personas como cadenas. En el segundo vector se
//	debe almacenar la longitud de cada uno de los nombres (para ello puedes usar la función
//		Longitud() de PseInt). Mostrar por pantalla cada uno de los nombres junto con su longitud.
	
	Definir i, n, vectorL Como Entero
	Definir vectorN como caracter
	
	
	
	Imprimir "Ingrese el tamaño de los vectores"
	Leer n
	
	Dimension vectorN(n)
	Dimension vectorL(n)
	
	Imprimir "Igrese los nombres que compondrán el vector"
	
	Para i=0 hasta n-1
		Leer vectorN(i)
		vectorL(i) = Longitud(vectorN(i))		
	FinPara
	
	Imprimir "***********************************"
	Imprimir "El listado es el siguiente"
	
	para i=0 hasta n-1
		Imprimir "El nombre: ", vectorN(i), " ,tiene: ", vectorL(i), " caracteres"
	FinPara
	
	
	
FinAlgoritmo
