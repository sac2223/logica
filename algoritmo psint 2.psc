Algoritmo punto_2 
	
	// datos de entrada
	definir nombre Como Caracter
	definir nroId Como Caracter
	Definir metodoPago Como Caracter
	Definir esVIP Como Logico
	Definir valorCompra Como Real
	Definir descuentoBase Como Real
	Definir descuentoAdicional Como Real
	Definir descuentoTotal Como Real
	Definir valorDescuento Como Real
	Definir subtotal Como Real
	Definir valorIVA Como Real
	Definir totalPagar Como Real
	
	Escribir "digite el valor de su compra"
	leer valorCompra
	Escribir " digite su nombre"
	Leer nombre
	Escribir " digite su numero de identificacion"
	Leer nroId
	Escribir "es VIP (verdadero o falso)"
	Leer esVIP
	Escribir  "metodo de pago" 
	Leer metodoPago
	
	
	
	//datos de Proceso 
	segun metodoPago Hacer
		"efectivo":
			descuentoBase <- 0.10
		"tarjeta debito":
			descuentoBase <- 0.05
		"tarjeta credito":
			descuentoBase <- 0
	FinSegun
	
	si ( valorCompra >= 500000) Entonces
		si esVIP Entonces
			descuentoAdicional <- 0.10
		SiNo
			descuentoAdicional <- 0.03
		FinSi 
	SiNo
		descuentoAdicional <- 0
	FinSi
	descuentoTotal <- descuentoBase + descuentoAdicional
	valorDescuento <- valorCompra * descuentoTotal
	subtotal <- valorCompra - valorDescuento
	valorIVA <- subtotal * 0.19
	totalPagar <- subtotal + valorIVA
	
	//datos de salida 
	Escribir " nombre" "---------------------------- " nombre
	Escribir "numero de identificacion" "----------- " nroId
	Escribir "total IVA" "-------------------------- " valorIVA
	Escribir "metodo de pago" "--------------------- " metodoPago
	Escribir "VIP" "-------------------------------- " esVIP
	Escribir "valor del producto" "----------------- " valorCompra
	Escribir "descuento segun metodo de pago" "----- " descuentoBase
	Escribir "descuento adicional" "---------------- " descuentoAdicional
	Escribir  "valor total de descuentos" "--------- " valorDescuento
 	Escribir "descuento total" "-------------------- " descuentoTotal
	Escribir "subtotal" "--------------------------- " subtotal
	Escribir "total a pagar" "---------------------- " totalPagar
	
	
FinAlgoritmo
