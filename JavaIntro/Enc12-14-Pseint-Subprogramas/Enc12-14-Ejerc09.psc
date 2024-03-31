//Los empleados de una fábrica trabajan en dos turnos: Diurno y Nocturno. Se desea calcular el
//jornal diario de acuerdo con las siguientes reglas:
//	a) La tarifa de las horas diurnas es de $ 90
//	b) La tarifa de las horas nocturnas es de $ 125
//	c) En caso de ser feriado, la tarifa se incrementa en un 10% si el turno es diurno y en
//		un 15% si el turno es nocturno.
//			
//		El programa debe solicitar la siguiente información al usuario: el nombre del trabajador, el día
//			de la semana, el turno (diurno o nocturno) y la cantidad de horas trabajadas. Además,
//		
//			debemos preguntarle al usuario si el día de la semana (lunes, martes, miércoles, etc.) era
//				festivo o no, para poder calcular el jornal diario. Utilice una función para realizar el cálculo.


Algoritmo sin_titulo
	Definir nombre,dia, turno Como Caracter
	Definir horasTrabajas Como Entero
	Definir diaFestivo Como Logico
	Definir resultado Como Real
	
	Escribir "ingrese su nombre"
	Leer nombre
	Escribir "ingrese el dia de la semana"
	Leer dia
	Escribir "turno"
	Leer turno
	Escribir "ingrese horas trabajadas"
	Leer horasTrabajas
	Escribir "Ingrese es festivo Verdadero o Falso"
	Leer diaFestivo
	
	Imprimir "Al trabajador: ", nombre
	Imprimir "Le corresponde $ " calcular(horasTrabajadas,turno,diaFestivo)
	
FinAlgoritmo


Funcion resultado  = calcular(horasTrabajadas,turno,diaFestivo)
	Definir resultado, porcentaje Como real
	resultado = 0
	turno = Minusculas(turno)
	Si turno == "diurno" Entonces
		resultado = horasTrabajadas * 90
		Si diaFestivo Entonces
			resultado = resultado * 1.1
		FinSi
	SiNo
		resultado = horasTrabajadas * 125
		Si diaFestivo Entonces
			resultado = resultado * 1.15
		FinSi
	FinSi
FinFuncion