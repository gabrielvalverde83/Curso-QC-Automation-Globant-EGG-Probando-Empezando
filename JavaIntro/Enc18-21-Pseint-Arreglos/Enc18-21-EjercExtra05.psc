Algoritmo sin_titulo
//	Disponemos de un vector unidimensional de 20 elementos de tipo carácter. Se pide
//desarrollar un programa que:
//	a) Pida una frase al usuario y luego ingrese la frase dentro del arreglo letra por letra.
//Ayuda: utilizar la función Subcadena de PSeInt.
//	b) Una vez completado lo anterior, pedirle al usuario un carácter cualquiera y una
//	posición dentro del arreglo, y el programa debe intentar ingresar el carácter en la
//	posición indicada, si es que hay lugar (es decir la posición está vacía o es un espacio
//	en blanco). De ser posible debe mostrar el vector con la frase y el carácter ingresado,
//	de lo contrario debe darle un mensaje al usuario de que esa posición estaba ocupada.
//Por ejemplo, suponiendo la siguiente frase y los subíndices del vector:
//	H o l a m u n d o c r u e l !
//	0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19
//Si se desea ingresar el carácter "%" en la posición 10, entonces el resultado sería:
//		H o l a m u n d o % c r u e l !
//		0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19
//	
	
	Definir frase, vector, caract, mov Como Caracter
	Definir i, posic, long, posicMe, posicMa como Entero
	
	Dimension vector(20)
	
	Hacer
		Imprimir "Ingrese una frase de 20 caracteres o menos"
		Leer frase
		long = Longitud(frase)
	Mientras que long > 20
	
	Para i=0 hasta long-1
		vector(i) = Subcadena(frase,i,i)
	FinPara
	
	Si long < 20
		Para i=long hasta 19
			vector(i) = " "
		FinPara
	FinSi
	
	Imprimir "Ingrese un caracter que quiere ingresar en la frase"
	Leer caract
	Hacer
		Imprimir "Ingrese la posición donde lo quiere colocar, de 0 a 19"
		Leer posic
	Mientras Que posic > 19
	
	Si posic=0
		posicMe=long+1
	SiNo
		Para i=posic hasta 0 con paso -1
			Si vector(i) = " "
				posicMe = i
				i = 0
			SiNo
				posicMe=long+1
			FinSi
		FinPara
	FinSi
	
	Para i=posic hasta long-1
		Si vector(i) = " "
			posicMa = i
			i = long-1
		SiNo
			posicMa = long+1
		FinSi
	FinPara
	
	Si posicMa = long+1 y posicMe = long+1
		Imprimir "No hay lugar para ingresar un caracter"
		mov = "n"
	Sino	
		Si abs(posic - posicMa) <= abs(posic - posicMe)
			mov = "d"
		SiNo
			mov = "i"
		FinSi
	FinSi
	
	Si mov = "d"
		Para i=long-1 hasta posic con paso -1
			vector(i+1)=vector(i)
		FinPara
		vector(posic)=caract
		Si posic>long
			long = posic+1
		SiNo
			long = long+1
		FinSi
	SiNo
		Si mov = "i"
			Para i=1 hasta posic
				vector(i-1) = vector (i)
			FinPara
			vector(posic)=caract
		FinSi
	FinSi
	
	Para i=0 hasta long-1
		Imprimir sin saltar vector(i)
	FinPara
	
	Imprimir ""
		
FinAlgoritmo
