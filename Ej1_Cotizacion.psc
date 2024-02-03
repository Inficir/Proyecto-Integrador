Algoritmo Cotizacion
	Definir empresas Como Entero
    empresas <- 5
    Definir cotizacion[empresas] Como Real
	
    // Ingreso de las cotizaciones
    Escribir "Ingrese el monto de la cotizacion:"
    Para i <- 0 Hasta empresas - 1 Con Paso 1 Hacer
        Escribir "Cotizacion empresa ", i + 1, ": "
        Leer cotizacion[i]
    Fin Para
	
    // Inicia la diferenciaci�n de la cotizaci�n m�s alta vs la m�s baja
    Definir cotizacionmin Como Entero
    Definir cotizacionmax Como Entero
    cotizacionmin <- 0
    cotizacionmax <- 0
	
    Para i <- 1 Hasta empresas - 1 Con Paso 1 Hacer
        Si cotizacion[i] > cotizacion[cotizacionmax] Entonces
            cotizacionmax <- i
        Fin Si
		
        Si cotizacion[i] < cotizacion[cotizacionmin] Entonces
            cotizacionmin <- i
        Fin Si
    Fin Para
	
    // Mostrar cotizaciones eliminadas
    Escribir "\nCotizaciones eliminadas:"
    Escribir "La cotizaci�n m�s alta es: ", cotizacion[cotizacionmax]
    Escribir "La cotizaci�n m�s baja es: ", cotizacion[cotizacionmin]
	
    // Para las cotizaciones restantes
    Definir sumacot Como Real
    Definir contador Como Entero
    sumacot <- 0
    contador <- 0
	
    Para i <- 0 Hasta empresas - 1 Con Paso 1 Hacer
        Si i <> cotizacionmin Y i <> cotizacionmax Entonces
            sumacot <- sumacot + cotizacion[i]
            contador <- contador + 1
        Fin Si
    Fin Para
	
    Definir promediocot Como Real
    promediocot <- sumacot / contador
	
    Escribir "\nEl promedio de las cotizaciones restantes es: ", promediocot
FinAlgoritmo
