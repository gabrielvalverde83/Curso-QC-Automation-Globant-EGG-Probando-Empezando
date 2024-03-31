Algoritmo sin_titulo
	
//	Diseñar un procedimiento que reciba una frase, y el programa remueva todas las vocales
//	repetidas. Al final el procedimiento mostrará la frase final.
//Por ejemplo:
//Entrada: "Habia una vez un barco"
//Salida: "Habi un vez n brco"
//	Se marcan en rojo las repetidas sólo para explicar la consigna. Las vocales ?e?, ?i? y ?o? quedan
//		al no estar repetidas.
	
	Definir frase como caracter
	
	Imprimir "Ingrese una frase"
	Leer frase
	
	fraseCamb(frase)
	
	Imprimir frase
		
FinAlgoritmo

SubProceso fraseCamb(frase Por Referencia)
	
	Definir letra, frase2 Como Caracter
	Definir i, letraA, letraE, letraI, letraO, letraU, long Como Entero
	
	long=Longitud(frase)
	letraA=0
	letraE=0
	letraI=0
	letraO=0
	letraU=0
	
	frase2 = ""
	
	para i=0 hasta long-1
		letra=Subcadena(frase,i,i)
		Segun letra Hacer
			"a" o "A":
				letraA=letraA+1
				Si letraA<2
					frase2=frase2 + letra
				FinSi
			"e" o "E":
				letraE=letraE+1
				Si letraE<2
					frase2=frase2 + letra
				FinSi
			"i" o "I":
				letraI=letraI+1
				Si letraI<2
					frase2=frase2 + letra
				FinSi
			"o" o "O":
				letraO=letraO+1
				Si letraO<2
					frase2=frase2 + letra
				FinSi
			"u" o "U":
				letraU=letraU+1
				Si letraU<2
					frase2=frase2 + letra
				FinSi
			De Otro Modo:
				frase2=frase2 + letra
		FinSegun
	FinPara
	
	frase = frase2
	
FinSubProceso
