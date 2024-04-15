
![banner](https://github.com/diegocab27/proyecto1/assets/162330383/d1251c1c-916c-4b7c-b57b-cab573e44281)

# PROYECTO 1: Algoritmo de Sistema de Costos


En este proyecto se logra realiza un sistema de costo para un producto donde se aplican descuentos,impuesto y costos de envio.

## **ÍNDICE**
* [1. Planteamiento](#Planteamiento)
* [2. Requerimientos](#Requerimientos)
* [3. Solución explicada paso a paso](#Solución-explicada-paso-a-paso)
* * [3.1. Se declaran las variables que se utilizaran](#1-se-declaran-las-variables-que-se-utilizaran)
* [3.2. Se solicita ingresar el precio original del producto](#2-Se-solicita-ingresar-el-precio-original-del-producto)
* [3.3. Se solicita ingresar al cliente el cupon de descuento ](#3-Se-solicita-ingresar-al-cliente-el-cupon-de-descuento)
* [3.4. Se solicita ingresar el iva , la cantidad y el peso del paquete](#4-Se-solicita-ingresar-el-iva-,-la-cantidad-y-el-peso-del-paquete)
* [3.5. Se solicita ingresar la ciudad de destino](#5-Se-solicita-ingresar-la-ciudad-de-destino)
* [3.6. Calculo de cupon de descuento y iva ](#6-Calculo-de-cupon-de-descuento-y-iva)
* [3.7. Calculo de descuento por cantidad](#7-Calculo-de-descuento-por-cantidad)
* [3.8. Calculo de valor de envio](#8-Calculo-de-valor-de-envio)
* [3.9. Calculo de costo total](#9-Calculo-de-costo-total)
* [3.10. Solucion final](#10-Solucion-final)

## Planteamiento

Construir un algoritmo en pseudocódigo que simule un sistema para calcular el costo de un producto con base en su precio original y el porcentaje de descuento aplicado. El algoritmo debe cumplir con los siguientes requisitos:

## Requerimientos

- Leer el precio original del producto.
- Aplicar un descuento al producto si es aplicable (por ejemplo, si el cliente tiene un cupón de descuento).
- Aplicar impuestos al producto (por ejemplo, el IVA u otros impuestos).
- Si el cliente compra más de un artículo, aplicar un descuento por cantidad.
- Calcular el costo de envío basado en el destino y el peso del paquete.
- Calcular el costo final del producto sumando el precio con descuento, impuestos, descuento por cantidad y costo de envío.
- Mostrar el costo final del producto, desglosando los diferentes componentes (descuentos, impuestos, descuento por cantidad y costo de envío).

## Solución explicada paso a paso

#### 1. Se declaran las variables que se utilizaran

- `preciociudad,ciudad` son arreglos unidimensionales los cuales contienen los valores de costo de envio para 
       cada ciudad
- `precio,cupdescuento,i,cantidad,peso,destino` son enteros que se usarán para controlar los bucles y 
      realizar cálculos.


      
```scss
	Dimension preciociudad[3] 
	Dimension ciudad[3] 
	
	preciociudad[1]=10
	preciociudad[2]=12
	preciociudad[3]=15
	
	ciudad[1]="Nueva York"
	ciudad[2]="Los Angeles"
	ciudad[3]="Miami"
	
	Definir precio,cupdescuento,i,cantidad,peso,destino como entero
```

#### 2. Se solicita ingresar el precio original del producto

- Se muestra en pantalla que ingrese el precio
- Se lee el precio y se guarda en la variable `precio` 

```scss
Escribir "Ingrese el precio de producto"
Leer precio
```

#### 3. Se solicita ingresar al cliente el cupon de descuento 

- Se muestra en pantalla si tiene descuento o no 
- Se lee la respuesta y se guarda en la variable `aplicacupon`
- Se ejecuta la condicion `SI` si la respuesta es : si
- Si la respueta es si se muetra en pantalla que ingrese el valor del cupon y lo guarda en la variable `cupdescuento`
- Si el cupon es mayor o igual a `100` se aplica el bucle `mientras` para  mostrar en pantalla que el cupon no es valido y se solicita nuevamente leyendo la variable `cupdescuento` hasta ingresar un valor menor que `100`
- Si la respuesta es que no tiene cupon la variable `cupdescuento` se iguala a `0`

```scss
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
```		

#### 4. Se solicita ingresar el iva , la cantidad y el peso del paquete

- Se muestra en pantalla que ingrese el iva 
- Se lee el iva y se guarda en la variable `iva` 
- Se muestra en pantalla que ingrese la cantidad de productos
- Se lee la cantidad y se guarda en la variable `cantidad`
- Se muestra en la pantalla que ingrese el peso del paquete
- Se lee el peso y se guarda en la variable `peso`


```scss
    Escribir "Ingrese el valor de IVA"
		leer iva
		
		Escribir "Ingrese la cantidad de productos"
		Leer cantidad
		
    Escribir " Ingrese el peso del producto en Kg"
		leer peso
```


#### 5. Se solicita ingresar la ciudad de destino

- Se muestra en pantalla que elija la opcion de ciudad
- Se utiliza el bucle `Para` para mostrar un desgloce de las 3 ciudades 
- Se lee la opcion y se guarda en la variable `ciudadelegida`

```scss
Escribir "Elija la opcion de la ciudad de destino :"
		Para i=1 Hasta 3 Con Paso 1 Hacer
			Escribir i ".-" ciudad[i]
		Fin Para
		
		leer ciudadelegida
```

#### 6. Calculo de cupon de descuento y iva 

- Se realiza el calculo del precio con descuento y se guarda en la variable `preciodescuento`
- Se realiza el calculo del precio mas el iva y se guarda en la variable `precioiva`
- Se muestra en pantalla el valor del cupon de descuento
- Se muestra en pantalla el valor del precio unitario con el descuento del cupon aplicado
- Se muestra en pantalla el iva ingresado y el precio unitario con el iva aplicado

```scss
    preciodescuento = precio - (precio * cupdescuento/100 )
		precioiva = preciodescuento * (1+iva/100) 
		
		Escribir "-Cupon de descuento :" cupdescuento "%"	
		Escribir "-Precio unitario con cupon de descuento : $" preciodescuento
		Escribir "-Precio unitario con iva de " iva "% : $" precioiva
		
```     

#### 7. Calculo de descuento por cantidad

- Se aplica la condicion `SI` si la cantidad ingresada en la variable `cantidad` es mayor o igual a `2` 
- Si la variable `cantidad` es mayor o igual a 2 se realiza el calculo del descuento de la variable `precioiva` por el `5% (0.95)`y se guarda en la variable `precio_desc_cantida`
- Se muestra en pantalla el precio con descuento por unidad y el precio con descuento con la cantidad aplicada
- Si la variable `cantidad` es menor a `2` se muestra en pantalla que no se aplica descuento y se iguala la variable `precio_desc_cantida` a la variable `precioiva`

```scss
Si cantidad >= 2 Entonces
			precio_desc_cantidad= precioiva * 0.95
			Escribir "-Precio unitario con descuento del 5% por productos :$" precio_desc_cantidad 
			Escribir "-Precio con descuento aplicado para " cantidad " productos = $ "  precio_desc_cantidad * cantidad
		SiNo
			Escribir "-No aplica descuento por cantidad"
			precio_desc_cantidad= precioiva 
		Fin Si
```        

#### 8. Calculo de valor de envio
- Se realiza el calculo de costo de envio sumando el arreglo `preciociudad[ciudadelegida]` mas 2 por la variable `peso`
- Se muestra en pantalla la formula del valor de envio y el costo total


```scss
costoenvio= preciociudad[ciudadelegida] + 2 * peso
		Escribir "-Valor de envio: valor de envio a " ciudad[ciudadelegida] ": $" preciociudad[ciudadelegida] " + $2 * " peso " Kg= $" costoenvio " total "
```

#### 9. Calculo de costo total
- Se realiza el calculo del costo total multiplicando la variable `precio_desc_cantidad` por la variable `cantidad` mas la variable `costoenvio`
- Se muestra en pantalla el costo final y el costo final redondeado

```scss
    costofinal=(precio_desc_cantidad * cantidad) + costoenvio
		Escribir "-Costo final del producto es de :$" costofinal " y redondeado es: *** $" redon(costofinal) "***"
```	

#### 10. Solucion final

```scss

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

```	

