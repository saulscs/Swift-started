import UIKit
// MARK: - /**Enumerations, clase vaga**/


enum someEnumeration{
    //Aqui va la definición del enumerado
}

enum CompassPoint{ // solo se toman encuenta los valores disponibles
    case north
    case south
    case east
    case west
}


enum Planet{
    case mercury, venus, mars, jupiter, saturn, uranus, neptune
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


