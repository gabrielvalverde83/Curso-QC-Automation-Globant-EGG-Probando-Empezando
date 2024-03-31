Algoritmo sin_titulo
	//	Diseñar una función que reciba un numero en forma de cadena y lo devuelva como numero
	//entero. El programa podrá recibir números de hasta 3 dígitos. Nota: no poner números con
	//decimales ni letras. Ejemplo: ingresando "100"(carácter) debe convertirse en 100(entero).
	Definir textNum Como Cadena
	Definir numText Como Entero
	Escribir "Escriba un número de 3 cifras."
	Hacer
		Leer textNum
	Mientras Que longitud(textNum)>3
	numText=aNum(textNum)
	Escribir "El numero ingresado es: " numText
FinAlgoritmo

Funcion num <- aNum(textNum)
	Definir num Como Entero
	num=ConvertirANumero(textNum)
FinFuncion