Algoritmo sin_titulo
	
//	Crear un procedimiento que calcule la temperatura media de un día a partir de la temperatura
//	máxima y mínima. Crear un programa principal, que, utilizando un procedimiento, vaya
//	pidiendo la temperatura máxima y mínima de n días y vaya mostrando la media de cada día. El
	//	programa pedirá el número de días que se van a introducir.
	
	Definir dias Como Entero
	
	Imprimir "Ingrese la cantidad de dias a mostrar"
	Leer dias
	
	tempMedia(dias)
	
FinAlgoritmo

SubProceso tempMedia(dias Por Valor)
	
	Definir i Como Entero
	Definir max, min como Real
	
	max=0
	min=0
	
	para i=1 hasta dias 
		Imprimir "Ingrese la temp máx y min del día: ", i
		Leer max, min
		Imprimir "La temp media es : " , (max-min)/2+min, " °C"
		
	FinPara
	
	
FinSubProceso
	