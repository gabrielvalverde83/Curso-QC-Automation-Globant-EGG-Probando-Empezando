Algoritmo sin_titulo
	
//	Realice un algoritmo que solicite al usuario una fecha y muestre por pantalla la fecha anterior.
//		Para ello se deberá utilizar un procedimiento llamado diaAnterior que reciba una fecha
//			representada a través de tres enteros dia, mes y anio, y retorne la fecha anterior. Puede
//			asumir que dia, mes y anio representan una fecha válida. Realice pruebas de escritorio para
	//				los valores dia=5, mes=10, anio=2012 y para dia=1, mes=3, anio=2004.
	
	
	//bisiesto la diferencia divida cuatro 2024
	
	Definir dia, mes, anio Como Entero
	
	Imprimir "Ingrese 3 valores correspondientes a dia, mes y año"
	Leer dia, mes, anio
	Imprimir "El dia ingresado es: ", dia, "/", mes, "/", anio
	
	diaAnterior(dia, mes, anio)
	
	Imprimir "El dia anterior es: ", dia, "/", mes, "/", anio
	
	
FinAlgoritmo

SubProceso 	diaAnterior(dia Por Referencia, mes Por Referencia, anio Por Referencia)
	
	Definir bisiesto Como Entero
	Definir bisiestoLog Como Logico
	
	bisiesto = abs(2024-anio)
	bisiesto = bisiesto MOD 4

	Si bisiesto = 0
		bisiestoLog = Verdadero
	SiNo
		bisiestoLog = Falso
	FinSi
	
	Si dia = 1 y mes=1
		dia=31
		mes=12
		anio=anio-1
	SiNo
		Si dia = 1 y mes = 3 y bisiestoLog = Verdadero
			dia = 29
			mes = 2
		SiNo
			Si dia=1 y mes = 3
				dia=28
				mes=2
			Sino
				Si dia=1 y (mes = 5 o mes = 7 o mes =8 o mes = 10 o mes = 12) 
					dia=30
					mes=mes-1
				SiNo
					Si dia=1
						dia=31
						mes=mes-1
					SiNo
						dia=dia-1
					FinSi
				FinSi
			FinSi
		Finsi
	FinSi
	

	
FinSubProceso
