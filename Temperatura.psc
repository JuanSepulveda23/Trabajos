Algoritmo Temperatura
	Escribir "Que tipo de valor va a ingresar", "Celcius(a),Fahrenheit(b),Kelvin(c)","EN MINUSCULAS PORFAVOR"
	leer tipo
	Escribir "Ingrese el valor a calcular"
	leer z
	Si tipo="a" Entonces
		F=(z*(9/5))+32
		K=z+273.15
		Escribir "La temperatura en Fahrenheit es: ",F," y en Kelvin es: ",K
	FinSi
	Si tipo="b" Entonces
		C=(z-32)*(5/9)
		K=(z-32)*(5/9)+273.15
		Escribir "La temperatura en Celsius es: ",C," y en Kelvin es: ",K
	FinSi
	si tipo="c" Entonces
		C=z-273.15
		F=(z-273.15)*(9/5)+32
		Escribir "La temperatura en Celsius es: ",C," y en Fahrenheit es: ",F
	FinSi
FinAlgoritmo
