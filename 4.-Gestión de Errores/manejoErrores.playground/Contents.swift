import UIKit

/**GESTION DE ERRORES**/

//Uso de try y catch

func canThrowError () throws{
    // codigo que puede causar un error
}

do {
    try canThrowError()
    // si llegamos aqui, no hay error
} catch{
    // ocurrio error
}

func makeSandwich() throws {
    
}

do {
    try makeSandwich()
    // Me como el Sandwich
}catch{
    // tengo platos -> lavar platos
    // tengo ingredientes -> ir a hacer la compra
    // no tengo hambre -> esperar dentro de una hora
}

// reto

var hayIngredientes: Bool = true
var hayPlatos: Bool = true

//Se crean los errores
enum ErrorSandwich: Error
{
    case noHayIngredientes
    case noHayPlatosLimpios
}
//Función
func makeASandwich() throws {
    if hayIngredientes && hayPlatos {
        print("Aquí está tu sandwich 😜")
    }else if hayPlatos{
        throw ErrorSandwich.noHayIngredientes
    }else{
        throw ErrorSandwich.noHayPlatosLimpios
    }
}
//Manejo de errores
do{
    try makeASandwich()
    //Me como el sandwich
}catch ErrorSandwich.noHayIngredientes{
    print("Comprar ingredientes")
}catch ErrorSandwich.noHayPlatosLimpios{
    print("Lavar los platos")
}


// Aserciones (debug) y Precondiciones (build)

let age = -5
// assert(age >= 0, "La edad no puede ser negativa") // desarrollo
// precondition (age >= 0, "La edad no puede ser negativa") // producion

//if age > 10 {
//    print("Puedes subir a la montaña rusa")
//} else if age >= 0 {
//    print("Eres muy pequeño")
//} else {
//    assertionFailure("La edad de una persona no puede ser negativa")
//}


// Reto

let batteryPercentage = -10

if batteryPercentage < 20,
    batteryPercentage > 0{
    print("bateria baja")
}else if batteryPercentage > 20,
    batteryPercentage <= 100 {
    print("bateria ok")
}else{
    assertionFailure( "La carga de la bateria no puede ser mayor a 100% o menor a 0%")
}
