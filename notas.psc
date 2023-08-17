Algoritmo notas
	Escribir "Cuantas notas va a ingresar"
	leer n
	p=0
	para i<-1 hasta n con paso 1 Hacer
		Escribir "ingrese la nota numero ",i
		leer z
		p=p+z
	FinPara
	op=p/n
	op1=(p/n)*0.20
	Escribir "El promedio es: ",op," y el porcentaje de la tercera nota es: ",op1
FinAlgoritmo
