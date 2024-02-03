//Ismael Espinosa
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
//#include <iostream>

/*Se ha instalado un sensor submarino para contar el número de peces que pasan bajo él en un
lago. El sensor tiene un temporizador que envía el carácter “T” al procesador cada segundo. De
detectarse la presencia de un pez, el sensor envía el carácter “P” al procesador. Al finalizarse el
período de temporización, a la “T” le sigue inmediatamente una F. Como ejemplo, un flujo de
datos normal podría ser: T P T T T P P T P P P P T P T F
*/

int main(){


printf("--- Sensor Peces ---\n \n");
printf("Opciones del sondeo (T = Sin registro, P = Pez detectado, F = Fin del Sondeo)\n \n");

char ctrl;
int i=0, pez=0, pezcon=0;
int max=0;

do{
    i++;
    printf("Ingrese el dato del sensor [%d]: ", i);
    scanf("%c",&ctrl);
    getchar();

    if(ctrl == 'T'){
        if(pezcon>max){
            max=pezcon;

            
        }
        pezcon=0;
    }else if (ctrl == 'P'){
        pez++;
        pezcon++;
        

    }

}while (!(ctrl == 'F'));

if(pezcon>max){
            max=pezcon;
            

            
        }




printf("RESULTADOS: .\n1. El sondeo duro %d segundos\n2. Un total de %d peces pasaron bajo el sensor.\n3. El mayor numero de peces consecutivos que pasaron bajo el sensor fue de %d.", i, pez, max);
    return 0;   
}
