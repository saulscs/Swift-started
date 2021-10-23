import UIKit // Libreria

/**VARIABLES Y CONSTANTES**/


//Crea una variable de tipo String llamada parcial1 y asígnale un texto con una nota entre 1 y 10 (sin decimales).
let parcial1 = "9";
let parcial2 = "3";

let result = Int(parcial1);
let result2 = Int(parcial2);

print(result2 ?? "User instance is nil");


//Crea tres variables que corresponden a las notas de los parciales de una materia y en una cuarta variable calcula la nota final de la materia promediando dichos parciales.

//Crea una variable materiaAprobada que indique si la materia se aprobó.

//Crea una variable requiereFinal que indique si es necesario presentar el examen final.

//Utilizando las variables del punto 2 y 3, crea una variable materiaReprobada que indique si la materia fue reprobada.

let cal1: Double = 8.0;
let cal2: Double = 9.4;
let cal3: Double = 7.6;

let promedio: Double = cal1 + cal2 + cal3 / 3.0;

let materiaAprobada = promedio >= 7.0;
let requiereFinal = promedio >= 4.0 && promedio <= 7.0;
let materiaReprobada = materiaAprobada && requiereFinal;


//Crea una variable del tipo string llamada miEdadEnTexto y asígnale un texto con tu edad en números.

//Crea una variable opcional del tipo entero llamada miEdad y asígnale el resultado de convertir miEdadEnTexto a entero.

//Toma la variable miEdad creada anteriormente y muestra en consola un mensaje indicando tu edad, por ejemplo “Mi edad es 30 años”. Utiliza nil coalescing para mostrar 0 como edad por defecto en caso de que el valor sea nil.

let miEdadEnTexto = "26";
let miEdad = Int(miEdadEnTexto) ?? 0;

print("Mi edad es \(miEdad) años");



//Type Annotations

var welcomeMessage: String

welcomeMessage = "Hola que ace"

var red, green, blue: Double
