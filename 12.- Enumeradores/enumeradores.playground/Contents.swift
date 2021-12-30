import UIKit
// MARK: - /**Enumerations, clase vaga**/


enum someEnumeration{
    //Aqui va la definición del enumerado
}

enum CompassPoint: String { // solo se toman encuenta los valores disponibles
    case north
    case south
    case east
    case west
}


enum Planet: Int{
    case mercury = 1, venus, mars, jupiter, saturn, uranus, neptune
}


var directionToGo = CompassPoint.east
directionToGo = .north


switch directionToGo {
case .north:
    print("Hay que ir al norte")
case .south:
    print("Hay pingüinos en el sur")
case .east:
    print("Mordor se extien hacia la tierra del este")
case .west:
    print("Cuidado con los vaqueros")
}

let somePlanet = Planet.venus

switch somePlanet {
case .venus:
    print("No es seguro")
default:
    print("No es seguro ir a ese planeta")
}


enum Beverage: CaseIterable { // Para poder hacerlo iterable
    case coffe, tes, juice, redbull
}

let numberOfChoices = Beverage.allCases.count // Protocolo para contar

for beverage in Beverage.allCases { // Ciclo for
    print(beverage)
}



//Enumerations, "códigos de barras"


enum Barcode {
    case upc(Int, Int, Int,Int)
    case qrCode(String)
}

var producBarCode = Barcode.upc(8, 7897, 3233, 3)
producBarCode = .qrCode("DSADFAS")


switch producBarCode {
case let .upc(numberSystem, manuFacturer, product, check):
    print("UPC: \(numberSystem), \(manuFacturer), \(product), \(check)")
case .qrCode(let productCode):
    print("QR: \(productCode)")
}

//Enumeradores con raw values

enum ASCIIControlCharacter: Character{
    case tab = "\t"
    case lineFeed = "\n"
    case carriageReturn = "\r"
}

let earthOrder = Planet.mercury.rawValue

let northDirection = CompassPoint.north.rawValue

let possiblePlanet = Planet(rawValue: 5)

let planetPosition = 11

if let anyPlanet = Planet(rawValue: planetPosition){
    switch anyPlanet {
    case .mercury:
        print("Este es mercurio")
    default:
        print("No es seguro este planeta")
    }
} else {
    print("El planeta indicado no existe...")
}
