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
