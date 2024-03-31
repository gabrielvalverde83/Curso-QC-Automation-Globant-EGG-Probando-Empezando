Algoritmo sin_titulo
//	Realizar un subproceso que reciba una letra y muestre un mensaje si esa letra esta entre las
//			letras "M" y "T". Recordar que Pseint le da un valor numérico a cada letra a través del Código
	//			Ascii, lo que nos deja usar operadores relacionales con letras y cadenas.
	
	
	Definir letra Como Caracter
	
	Imprimir "Escriba una letra"
	Leer letra
	
	Mensaje(letra)
	
FinAlgoritmo

SubProceso Mensaje(letra)
	
	letra=Minusculas(letra)
	
	Si letra >= "m" y letra <= "t"
		Imprimir "La letra ingresada es correcta"
	SiNo
		Imprimir "La letra ingresada no es correcta"
	FinSi
	
FinSubProceso
