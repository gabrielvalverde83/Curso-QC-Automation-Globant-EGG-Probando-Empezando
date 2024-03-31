Algoritmo sin_titulo
	
//	Escribir un programa que procese una secuencia de caracteres ingresada por teclado y
//terminada en punto, y luego codifique la palabra o frase ingresada de la siguiente manera:
//	cada vocal se reemplaza por el carácter que se indica en la tabla y el resto de los caracteres
//	(incluyendo a las vocales acentuadas) se mantienen sin cambios.
//	
//	a e i o u
//	@ # $ % *
//	
//	Realice un subprograma que reciba una secuencia de caracteres y retorne la codificación
//	correspondiente. Utilice la estructura "según" para la transformación.
//	Por ejemplo, si el usuario ingresa: Ayer, lunes, salimos a las once y 10.
	//		La salida del programa debería ser: @y#r, l*n#s, s@l$m%s @ l@s %nc# y 10.
//NOTA: investigue el uso de la función concatenar de PSeInt para armar la palabra/frase.
	
	Definir frase, p Como Caracter
	Definir long Como Entero
	
	Imprimir "Ingrese una frase y cuando quiera terminar presione punto+enter"
	frase=""
	long=-1
	
	Hacer
		Leer p
		frase=frase+p
		long=long+1
	Mientras Que p <> "."
	
	Imprimir frase	
	
	cambioFrase(frase, long)
	
	Imprimir "La frase cambiada es: ", frase
	
FinAlgoritmo

SubProceso cambioFrase(frase Por Referencia, long por valor)
	
	Definir i Como Entero
	Definir fraseN, p como caracter
	
	frase=Minusculas(frase)
	fraseN=""
	
	Para i=0 hasta long-1
		p=Subcadena(frase, i, i)
	
		Segun p Hacer
			"a":
				p="@"
			"e":
				p="#"
			"i":
				p="$"
			"o":
				p="%"
			"u":
				p="*"
			De Otro Modo:
				p=p
		FinSegun
		
		fraseN=fraseN+p
				
	FinPara
	
	frase=fraseN
	
FinSubProceso




