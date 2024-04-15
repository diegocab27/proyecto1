Algoritmo sistema_de_costo
	Dimension preciociudad[3] 
	Dimension ciudad[3] 
	
	preciociudad[1]=10
	preciociudad[2]=12
	preciociudad[3]=15
	
	ciudad[1]="Nueva York"
	ciudad[2]="Los Angeles"
	ciudad[3]="Miami"
	
	Definir precio,cupdescuento,i,cantidad,peso,destino como entero
	
		Escribir "Ingrese el precio del producto"
		Leer precio
		
		Escribir "Si tiene cupon de descuento escriba si o no"
		leer aplicacupon
		
		Si aplicacupon="si" Entonces
			Escribir "Ingrese el valor del cupon de descuento"
			leer cupdescuento
			Mientras cupdescuento >= 100 Hacer
				Escribir "cupon no valido ingrese nuevamente" 
				leer cupdescuento
			Fin Mientras
		SiNo
			cupdescuento =0
	    Fin Si	
		
		Escribir "Ingrese el valor de IVA"
		leer iva
		
		Escribir "Ingrese la cantidad de productos"
		Leer cantidad
		
	    Escribir " Ingrese el peso del producto en Kg"
		leer peso
		
		Escribir "Elija la opcion de la ciudad de destino :"
		Para i=1 Hasta 3 Con Paso 1 Hacer
			Escribir i ".-" ciudad[i]
		Fin Para
		
		leer ciudadelegida
		
		
		preciodescuento = precio - (precio * cupdescuento/100 )
		precioiva = preciodescuento * (1+iva/100) 
		
		Escribir "-Cupon de descuento :" cupdescuento "%"	
		Escribir "-Precio unitario con cupon de descuento : $" preciodescuento
		Escribir "-Precio unitario con iva de " iva "% : $" precioiva
		
		
		Si cantidad >= 2 Entonces
			precio_desc_cantidad= precioiva * 0.95
			Escribir "-Precio unitario con descuento del 5% por productos : $" precio_desc_cantidad 
			Escribir "-Precio con descuento aplicado para " cantidad " productos = $"  precio_desc_cantidad * cantidad
		SiNo
			Escribir "-No aplica descuento por cantidad"
			precio_desc_cantidad= precioiva 
		Fin Si
		
		costoenvio= preciociudad[ciudadelegida] + 2 * peso
		Escribir "-Valor de envio: valor de envio a " ciudad[ciudadelegida] ":$" preciociudad[ciudadelegida] " + $2 * " peso " Kg = $" costoenvio " total "
		
		
		costofinal=(precio_desc_cantidad * cantidad) + costoenvio
		Escribir "-Costo final del producto es de : $" costofinal " y redondeado es: *** $" redon(costofinal) "***"
	
FinAlgoritmo
