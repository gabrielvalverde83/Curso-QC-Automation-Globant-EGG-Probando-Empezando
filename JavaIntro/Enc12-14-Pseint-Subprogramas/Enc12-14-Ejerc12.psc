Algoritmo sin_titulo
	//Serie de Fibonacci
	
	Definir num Como Entero
	
	Imprimir "Ingrese un numero: "
	Leer num
	
	Imprimir "La serie de Fibonacci para el numero: ", num, " es: ", Fibo(num)
	
FinAlgoritmo


Funcion retorno = Fibo(num)
	
	Definir suma, prim, seg, terc, i, retorno Como Entero
	
	prim=0
	seg=1
	terc=0
	retorno=0
	
	para i=1 hasta num-1 Hacer
	
		terc = prim + seg
		
		prim=seg
		seg=terc
		
	FinPara	
	
	retorno = terc
	
FinFuncion
	