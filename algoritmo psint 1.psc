Algoritmo Punto 1 
	
	//datos de entrada
	Definir nombre Como Caracter
	Definir nroHijos Como Entero
	Definir valorHora Como Real
	Definir horaTrabajada Como Entero
	Definir valorHoraExtra Como Real
	Definir bonoHijos Como Real
	Definir horaExtra Como Entero
	Definir totalDevengado Como Real
	Definir valorHoraSemanal Como Real
	Definir devengadoHoras Como Real
	Definir netoPagar Como Real
	
	
	Escribir "nombre"
	Leer nombre
	Escribir "numero de hijos"
	Leer nroHijos
	Escribir "horas trabajadas"
	Leer horaTrabajada
	
	//datos de Proceso 
	valorHora <-1750900 / 168
	valorHoraSemanal <- valorHora * 42
	
	si (nroHijos > 3) Entonces
		bonoHijos <- 10 * valorHora * nroHijos
	SiNo
		bonoHijos<- 5 * valorHora * nroHijos
	FinSi
	 
	si (horaTrabajada > 42) Entonces
		horaExtra <- horaTrabajada - 42
		valorHoraExtra <- valorHora * 1.35
	SiNo
		horaExtra <- 0
		valorHoraExtra <- 0
	FinSi
	devengadoHoras <- valorHoraSemanal + ( horaExtra * valorHoraExtra)
	netoPagar <- bonoHijos + devengadoHoras
	
	//datos de salida
	Escribir mensaje " TOTAL"
	Escribir " nombre" " --------------------------------> " nombre
	Escribir " numero de hijos" " -----------------------> " nroHijos
	Escribir " bono por hijos" " ------------------------> " bonoHijos
	Escribir " valor hora " " ---------------------------> " valorHora
	Escribir " valor de las horas (42) semana" " --------> " valorHoraSemanal
	Escribir " horas trabajadas" " ----------------------> " horaTrabajada
	Escribir " horas extras trabajadas" " ---------------> " horaExtra
 	Escribir " valor de la hora extra" " ----------------> " valorHoraExtra
	Escribir " total devenado horas + extras" " ---------> " devengadoHoras
	Escribir " neto a pagar" " --------------------------> " netoPagar
	
	
	
FinAlgoritmo
