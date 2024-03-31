Algoritmo sin_titulo
//	Crea una función EsMultiplo que reciba los dos números pasados por el usuario, validando
//	que el primer número múltiplo del segundo y devuelva verdadero si el primer número es
	//		múltiplo del segundo, sino es múltiplo que devuelva falso.
	
	Definir num1, num2 Como Entero
	
	Imprimir "Ingrese 2 números"
	Leer num1, num2
	
	Imprimir "El primer numero es múltiplo del segundo? ", Resultado(num1, num2)
		
FinAlgoritmo



Funcion retorno = Resultado(num1, num2)
	
	Definir retorno Como Logico
	Definir resultParc Como Real
	
	resultParc = num1 MOD num2
	
	Si resultParc1 = 0 Entonces
		retorno = Verdadero
	SiNo
		retorno = Falso
	FinSi
	
FinFuncion
