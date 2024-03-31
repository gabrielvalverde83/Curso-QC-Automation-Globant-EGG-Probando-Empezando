Algoritmo sin_titulo
	
//	Crear un vector que contenga 100 notas de 100 supuestos estudiantes, con valores entre 0 y
//	20 generadas aleatoriamente mediante el uso de la función azar() o aleatorio() de PseInt.
//Luego, de acuerdo a las notas contenidas, el programa debe indicar cuántos estudiantes son:
//	a) Deficientes 0-5
//	b) Regulares 6-10
//	c) Buenos 11-15
	//	d) Excelentes 16-20
	
	Definir i, vector, def, reg, bue, exc Como Entero
	
	Dimension vector(100)
	
	def = 0
	reg = 0
	bue = 0
	exc = 0
	
	Para i=0 hasta 99
		vector(i) = Aleatorio(0,20)
		Si vector(i) <= 5 Entonces
			def = def + 1
		SiNo
			Si vector(i) > 5 y vector(i) <= 10
				reg = reg + 1
			SiNo
				Si vector(i) > 10 y vector(i) <= 15
					bue = bue + 1
				Sino
					exc = exc + 1
				FinSi
			FinSi
		FinSi
	FinPara
	
	Imprimir "La cantidad de alumnos Deficientes es: ", def
	Imprimir "La cantidad de alumnos Regulares es: ", reg
	Imprimir "La cantidad de alumnos Buenos es: ", bue
	Imprimir "La cantidad de alumnos Excelentes es: ", exc

FinAlgoritmo
