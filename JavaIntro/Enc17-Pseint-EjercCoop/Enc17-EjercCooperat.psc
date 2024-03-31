Algoritmo sin_titulo
	
	menu()
	
FinAlgoritmo

Subproceso menu()
	
	Definir num Como Entero
		
	Hacer
		Imprimir "*************************************************"
		Imprimir "Ingrese un numero para elegir una de las opciones"
		Imprimir "*************************************************"
		
		Imprimir " 1 - Calcular muro de ladrillo"
		Imprimir " 2 - Calcular viga de hormigón"
		Imprimir " 3 - Calcular columnas de hormigón"
		Imprimir " 4 - Calcular contrapisos"
		Imprimir " 5 - Calcular techo"
		Imprimir " 6 - Calcular pisos"
		Imprimir " 7 - Calcular pintura"
		Imprimir " 8 - Calcular iluminación"
		Imprimir " 9 - Salir"

		Leer num
			
		Segun num
			1: 
				calcularMuro()
			2:
				calcularViga()
			3:
				calcularColumna()
			4:
				calcularContrapisos()
			5:
				calcularTecho()
			6:
				calcularPisos()
			7:
				calcularPintura()
			8:
				calcularIluminacion()
				
		FinSegun
		
		Imprimir ""
		Imprimir ""
		
	Mientras Que num <> 9
	
FinSubProceso

//////////////////////////////////////////////////////////////

SubProceso calcularSuperficie(a Por Referencia,b Por Valor)
	
	a = a*b
	
FinSubProceso

//////////////////////////////////////////////////////////////

SubProceso calcularVolumen(a Por Referencia,b Por Valor, c Por Valor)
	
	a = a*b*c
	
FinSubProceso

//////////////////////////////////////////////////////////////

SubProceso calcularMuro()
	Definir espesor,  ladrillos como Entero
	Definir cemento, arena, superficie, largo, ancho, a, b Como Real
	
	Escribir "------------------------------"
	Escribir "1.! Calcular muro de ladrillo"
	Escribir "------------------------------"
	
	Hacer 
		Escribir "Indicar espesor de muro (1) 20cm, (2) 30cm"
		Leer espesor
	Mientras Que (espesor <> 1 Y espesor <> 2)
	
	Escribir "Ingresar largo"
	Leer largo
	Escribir "Ingresar ancho"
	Leer ancho
	
	a= largo
	b= ancho
	
	calcularSuperficie(a,b)
	
	superficie = a
	
	Si espesor == 1 Entonces
		cemento = 10.9 * superficie
		arena = 0.09 * superficie
		ladrillos = 90 * superficie
	SiNo
		cemento = 15.2 * superficie
		arena = 0.115 * superficie
		ladrillos = 120 * superficie
	FinSi
	
	Escribir "La superficie del muro es :", superficie
	Escribir Sin Saltar "Se requiere para la construcción del muro de "
	Si espesor==1 Entonces
		Escribir "20 cm :"
	SiNo 
		Escribir "30 cm :"
	FinSi
	
	Escribir "- Cemento :", cemento, " kg"
	Escribir "- Arena :", arena, " m3"
	Escribir "- Ladrillos :", ladrillos, " unidades"
	
FinSubProceso

/////////////////////////////////////////////////////////////

SubProceso calcularViga()
	
	Definir largo, cemento, arena, piedra, hierro8, hierro4 como Real
	
	Escribir "***********************************"
	Imprimir "Ingrese el largo"
	Leer largo
	
	cemento = 9*largo
	arena = 0.02*largo
	piedra = 0.02*largo
	hierro8 = 4*largo
	hierro4 = 3*largo
	
	escribir "La cantidad de cemento que necesita es: " cemento " Kg"
	escribir "La cantidad de arena que necesita es: " arena " m3"
	escribir "La cantidad de piedra que necesita es: " piedra " m2"
	escribir "La cantidad de hierro del 8 que necesita es: " hierro8 " m"
	escribir "La cantidad de hierro del 4 que necesita es: " hierro4 " m"
	
FinSubProceso

/////////////////////////////////////////////////////////////

SubProceso calcularColumna ()
	Definir largo_columna, cemento, arena, piedra, hierro10, hierro4  Como Real
	//Pedir información
	Escribir "***********************************"
	Escribir "** Calcular columnas de hormigón **"
	Escribir "Ingrese el largo de la columna"
	leer largo_columna
	
	//Ralizar cálculos
	cemento<-7.5*largo_columna	
	arena <-0.016*largo_columna
	piedra <-0.016*largo_columna
	hierro10 <-6*largo_columna
	hierro4 <-3*largo_columna
	
	//Mostrar resultados
	Escribir "Cantidad de materiales necesaria: "
	Escribir "Cemento: ", cemento, " kg"
	Escribir "Arena: ", arena, " m3"
	Escribir "Piedra: ", piedra, " m3"
	Escribir "Hierro de 10: ", hierro10, " m"
	Escribir "Hierro de 4: ", hierro4, " m"
	Escribir "***********************************"
FinSubProceso

/////////////////////////////////////////////////////////////

SubProceso calcularContrapisos()
	definir a,b,c, cemento, arena, piedra Como Real
	
	escribir "Ingrese el espesor en cm"
	leer a
	escribir "Ingrese el ancho en m"
	leer b
	escribir "Ingrese el largo en m"
	leer c
	
	calcularVolumen(a,b,c)
	
	cemento = 105*a
	arena = 0.45*a
	piedra = 0.9*a
	
	escribir "La cantidad de cemento que necesita es: " cemento " Kg"
	escribir "La cantidad de arena que necesita es: " arena " m3"
	escribir "La cantidad de piedra que necesita es: " piedra " m2"
	
FinSubProceso

/////////////////////////////////////////////////////////////

SubProceso  calcularTecho()
	//Definir variables
	Definir espesor,ancho, largo, cemento, arena, piedra, hierro8, hierro6,a  Como Real
	//Pedir información
	Escribir "******** Calcular techo ********"
	Escribir "Ingrese el espesor"
	leer espesor
	Escribir "Ingrese el ancho"
	leer ancho
	Escribir "Ingrese el largo"
	leer largo
	a = espesor
	calcularVolumen(a, ancho, largo)
	
	//Ralizar cálculos
	cemento<-33*a	
	arena <-0.072*a
	piedra <-0.072*a
	hierro8 <-7*a
	hierro6 <-4*a
	
	//Mostrar resultados
	Escribir "Cantidad de materiales necesaria: "
	Escribir "Cemento: ", cemento, " kg"
	Escribir "Arena: ", arena, " m3"
	Escribir "Piedra: ", piedra, " m3"
	Escribir "hierro de 8: ", hierro8, " m"
	Escribir "hierro de 6: ", hierro6, " m"
	Escribir "***********************************"
	
FinSubProceso

/////////////////////////////////////////////////////////////

SubProceso calcularPisos()
	Definir a, b Como Real
	Escribir "------------------------------"
	Escribir "1.! Calcular pisos"
	Escribir "------------------------------"
	
	Escribir "Ingresar largo del paño del piso a colocar"
	Leer a
	Escribir "Ingresar ancho del paño del piso a colocar"
	Leer b
	
	calcularSuperficie(a,b)
	
	Escribir "Superficie Pisos + 10% extra para recortes: ", (a*1.10), " m2"
	
	
FinSubProceso

/////////////////////////////////////////////////////////////

SubProceso calcularPintura()	//7
	
	Definir a, b Como Real
	
	Escribir "***********************************"
	Imprimir "Ingrese el ancho de la pared y el alto"
	Leer a, b
	
	calcularSuperficie(a, b)
	
	Imprimir "La cantidad de pintura a utilizar es ", a/6, " litros"
	
FinSubProceso

/////////////////////////////////////////////////////////////

SubProceso calcularIluminacion()	//8
	
	Definir a,b Como Real
	
	Escribir "***********************************"
	Imprimir "Ingrese el ancho y el largo de la habitación"
	Leer a, b
	
	calcularSuperficie(a, b)
	
	Imprimir "La cantidad minima de superf. de iluminac. natural es: ", a*0.2, " m2"

FinSubProceso

