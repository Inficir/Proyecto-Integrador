Algoritmo sin_titulo
	Definir caracter Como Caracter
    Definir segundos Como Entero
    Definir totalPeces Como Entero
    Definir pecesConsecutivos Como Entero
    Definir maxPecesConsecutivos Como Entero
	
    segundos <- 0
    totalPeces <- 0
    pecesConsecutivos <- 0
    maxPecesConsecutivos <- 0
	
    Escribir "Ingrese los datos del sensor (T para temporizador, P para detección de pez, F para finalizar):"
	
    Mientras Verdadero Hacer
        Leer caracter
		
        Si caracter = 'T' Entonces
            segundos <- segundos + 1
			
            Si pecesConsecutivos > maxPecesConsecutivos Entonces
                maxPecesConsecutivos <- pecesConsecutivos
            Fin Si
			
            pecesConsecutivos <- 0
        Sino Si caracter = 'P' Entonces
				totalPeces <- totalPeces + 1
				pecesConsecutivos <- pecesConsecutivos + 1
			Sino Si caracter = 'F' Entonces
					Salir
				Fin Si
			Fin Mientras
			
			// Considerar el último periodo si termina con 'T'
			Si pecesConsecutivos > maxPecesConsecutivos Entonces
				maxPecesConsecutivos <- pecesConsecutivos
			Fin Si
			
			Escribir "\nResultados:"
			Escribir "1. El sondeo duró ", segundos, " segundos."
			Escribir "2. Un total de ", totalPeces, " peces pasaron bajo el sensor."
			Escribir "3. El mayor número de peces que pasaron en segundos consecutivos fue de ", maxPecesConsecutivos, "."
FinAlgoritmo
