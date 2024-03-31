Algoritmo sin_titulo
//	Crea un procedimiento "convertirEspaciado", que reciba como argumento un texto y muestra
//	una cadena con un espacio adicional tras cada letra.
//	Por ejemplo, "Hola, tú" devolverá "H o l a , t ú ". Crea un programa principal donde se use
	//	dicho procedimiento.
	
	Definir frase Como Caracter
	
	Imprimir "Ingrese una frase: "
	Leer frase
	
	convertirEspaciado(frase)
	
	Imprimir "Devuelve: ", frase
	
FinAlgoritmo

SubProceso convertirEspaciado(frase Por Referencia)
	
	Definir fraseCambiada Como Caracter
	Definir largo,i Como Entero
	
	largo=Longitud(frase)
	fraseCambiada = ""
	
	Para i=0 hasta largo-1
		fraseCambiada=fraseCambiada + subcadena(frase,i,i)+" "
	FinPara
	
	frase = fraseCambiada
	
FinSubProceso
