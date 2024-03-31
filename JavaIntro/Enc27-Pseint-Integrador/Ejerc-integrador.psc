Algoritmo sin_titulo
	
	Definir i, j, n, m Como Entero
	Definir matriz, palabra Como caracter	
	
	//palabra = "ACDDCADBCDABDBBA"	//prueba 4x4 si anda
	//palabra = "ACDDCADBCDABCBBA"	//prueba 4x4 no anda
	//palabra = "ABACADABA"	///prueba 3x3 si anda
	//palabra = "ABACADABA"	///prueba 3x3 no anda
	palabra = "ACCDBBADDDCCBACABDCBDCBADBDACBBBBDAABBCCBAACCABDBDCDDABDBDADAAACBBBBCDDDCBBBDDCDABBDDABDBDBBACADCDAAADACDDDACCDCACDDABACDCCCAABDDCCACDADDBCBAACCDBCBCDDDCAACCBAADCBBBCDCBBACBDCCDDADBABCAABBACABDCAACCBDADDCAAACCDBDBBCDDDDDACBCDDADDDDCBADADBDCADDABBCDAACBCCDDDADDADADAACCACDCDDABCCCADABBACDACCAADDBCBCCDADBCCADAAABDDDAABBABCADDCCAADDCDDCDCACBADADACADDAADCBDBCDBDDACDCBCDCCABBDCBACDDACCCDADBCADCACAAABBBCADDDDBCBACDBDAAADDDACCDACBBBADACCCDCACCBACDADBCBBDADACABAACBCCADDCCCCACCCCADBCCDAADCAABBABAADDBDADDABABCCABBCDDACCADAAADBBCCDBADCADCBBDADACCDDBCAAABBBDCAAAACBAADBABBABACDDBBCBDCDCADABABBDADCBADAACDBCBDABADBCBADCACADAABCDDCABACDDBDCBCBDCAAACBDABBCACBACCCBACACDCADBDCDCDDCAACDBDCBACDBBDAABDBBCBAAADBABDBAACAAACDCDAAABABDDDBCACADCBBAADCCDABCCCBBCACCBAABDAADDDCDACDDDBCDCCBABDABACCDCDCDABAABCABBADADCBDDACDDCDDCDACDADADCACBCDABABDDCCDBCCDABACDBDAABDBDDDBADDBACABDCDDBACDDBBDDBBACBCCAACABBDADDBCAACCBCCDADDBCAADDADCCCBAAABABBBBBCABAACADBCBBABACCABCDAABADCCCCDCCADDDCCABBDDDAAADDADACBBBCBDAADACABABBAACCCADADDABDBCADDDCCDBBCCBCDCDBDDDDCACDACDBBBDDBADDACADDADDABCACDCBBADDABBBDCBBDCDAABADDDDDBCACCCCAAACBCBCDBACCCDACCCDBCBDCBADBCDDACCDBDBDBCAAACDDCBAABDBCAADCADDBABABDCBCBCBBBCACBCADDCAAAAAACBBACBBCCACBDCDDDDADCAAACBABDDBDADBAADCBABDDBCDBABDBAADDDBACBBBCCCDBDDBDDAADBBADADDDCBCACBABCDBBABAADABCABCDBACBBBCDBADADDBDCBDABBDDDCDDCCACDCBDCADABAABCDCAACCDDBADBDBCDACAAACBCADCCCBAC"
	
	Si longitud(palabra) = 9
		n=3
	SiNo
		Si longitud(palabra) = 16
			n=4
		SiNo
			Si longitud(palabra) = 1369
				n=37
			SiNo
				Imprimir "La cantidad de la secuencia de caracteres es incorrecta"
			FinSi	
		FinSi	
	FinSi
	
	m=n
	
	Dimension matriz(n,m)
	
	Si n=3 o n=4 o n=37
		completar(palabra, matriz, n, m)
		imp(matriz, n, m)
		Si recorreDer(matriz, n, m) = Verdadero
			Si recorrerIzq(matriz, n, m) = Verdadero
				Imprimir "La humanidad tiene esperanza"
			SiNo
				Imprimir "La humanidad está perdida"
			FinSi
		SiNo
			Imprimir "La humanidad está perdida"	
		FinSi
	SiNo
		Imprimir "La humanidad está perdida"	
	FinSi
		
FinAlgoritmo

/////////////////////////////////////////////////////////////////////////////////////

SubProceso completar(palabra, matriz, n, m)
	
	Definir i, j, cont Como Entero
	
	cont=0
	
	Para i=0 hasta n-1
		Para j=0 hasta m-1
			matriz(i,j) = Subcadena(palabra, cont, cont)
			cont=cont+1
		FinPara
	FinPara
	
FinSubProceso

/////////////////////////////////////////////////////////////////////////////////////

SubProceso imp(matriz, n, m)
	Definir i, j Como Entero
	Imprimir "La matriz es la siguiente"
	Para i=0 hasta n-1
		Imprimir Sin Saltar "| "
		Para j=0 hasta m-1
			Si j=m-1
				Imprimir matriz(i,j) " |"
			Sino
				Imprimir Sin Saltar matriz(i,j) " ,"
			FinSi
		FinPara
	FinPara
	
	Imprimir ""
	
FinSubProceso

/////////////////////////////////////////////////////////////////////////////////////

Funcion retorno = recorreDer(matriz, n, m)
	
	Definir i, j, cont Como Entero
	definir valorRef Como Caracter
	Definir retorno Como Logico
	
	cont=1
	
	Para i=0 hasta n-1
		Si i=0 
			valorRef = matriz(i,i)
		SiNo
			Si matriz(i,i) = valorRef
				cont=cont + 1
			FinSi
		FinSi
	FinPara
	
	si cont = n
		retorno = Verdadero
	SiNo
		retorno = falso
	FinSi
	
FinFuncion

/////////////////////////////////////////////////////////////////////////////////////

Funcion retorno = recorrerIzq(matriz, n, m)
	
	Definir i, j, cont Como Entero
	definir valorRef Como Caracter
	Definir retorno Como Logico
	
	cont=1
	
	Para i=0 hasta n-1
		Si i=0
			valorRef = matriz(i,n-1-i)
		SiNo
			Si matriz(i,n-1-i) = valorRef
				cont=cont + 1
			FinSi
		FinSi
	FinPara
	
	si cont = n
		retorno = Verdadero
	SiNo
		retorno = falso
	FinSi
	
FinFuncion

