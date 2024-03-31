Algoritmo sin_titulo
	
	definir aux, num, var Como Entero
	num = 35
	aux=num				//num = 35
	var=aux mod 10		// var = 35 resto 10 = 5
	
	Imprimir "var = " var
	
	mientras aux > 9
		aux = trunc(aux/10)		// 	3
		imprimir "aux = " aux
		aux = aux mod 10
		imprimir "aux = " aux
		var = var * 10 + aux // 50 + 0
		imprimir "var final = " var
	FinMientras
	
	
FinAlgoritmo
