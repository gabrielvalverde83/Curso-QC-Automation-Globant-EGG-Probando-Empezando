Algoritmo sin_titulo
	
	Definir num Como Real
	
	Imprimir "Ingrese un numero para ver si es capicua: "
	Leer num
	
	Imprimir "El numero: ", num, " es capicua?????: ", Capi(num)
		
FinAlgoritmo


Funcion retorno = Capi(num)
	
	Definir i, parcial Como Entero
	Definir num2 como Real
	Definir retorno Como Logico
	
	i=0
	num2 = 0
	parcial=num
	
	Hacer 
		i = i + 1
		num2 = num2 + num MOD 10 * 10^(-i)
		
		num = num / 10
		num = trunc(num)
			  
	Mientras Que num > 0 
	
	Imprimir num2*10^(i)
	
	Si num2*10^(i) - parcial = 0
		retorno = Verdadero
	Sino	
		retorno = Falso
	FinSi
	
FinFuncion
