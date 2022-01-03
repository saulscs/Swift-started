import UIKit
import Foundation

// MARK: - /**Properties**/

// Stored Properties

struct FixedLengthRange{
    var firstValue: Int
    var length: Int
}

var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)

rangeOfThreeItems.firstValue = 6

let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)

//rangeOfFourItems.firstValue = 5 error comun porque es constante


// Lazy Stored Properties

class DataImporter {
    var filename = "data.txt"
}

class DataManager {
    lazy var importer = DataImporter() // con lazy indicamos que solo se cree cuando se va a usar.
    var data = [String]()
}


let manager = DataManager()
manager.data.append("Algo de datos")
manager.data.append("Muchos datos")
//Hasta este punto el importer no ha sido creado.
manager.importer.filename // Arranca hasta este punto

// Computed Properties

struct Point {
    var x = 0.0
    var y = 0.0
}

struct Size {
    var width = 0.0
    var height = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    
    var center:Point {
        get {
            let centerX = origin.x + size.width/2
            let centerY = origin.y + size.height/2
            
            return Point(x: centerX, y: centerY)
        }
        set (newCenter){
            origin.x = newCenter.x - size.width/2
            origin.y = newCenter.y - size.height/2
        }
    }
}


var square = Rect(origin: Point(x: 0, y: 0), size: Size(width: 10, height: 10))

square.center

let initialSquareCenter = square.center
square.center = Point(x: 20, y: 20)

// Computed Properties de sólo lectura


struct Cuboid {
    var width = 0.0
    var height = 0.0
    var depth = 0.0
    
    var volume: Double { // si no indicamos el get swift entiende que es una variable de solo lectura
        get {
            return width * height * depth
        }
    }
}

// una variable de solo lectura no puede ser modficada por fuera
let cuboid = Cuboid(width: 4.0, height: 5.0, depth: 2.0)
cuboid.volume


struct Person{
    var name: String
    var age: Int
}

struct PeopleViewModel {
    let people: [Person]
    
    var oldest: Person? {
        people.sorted { (lhs, rhs) -> Bool in
            lhs.age > rhs.age
        }.first
    }
}

let peopleViewModel = PeopleViewModel(people: [
    Person(name: "Antoine", age: 30),
    Person(name: "Jan", age: 69),
    Person(name: "Lady", age: 3),
    Person(name: "Jaap", age: 3)
])
print(peopleViewModel.oldest!.name)

// Property Observers

// willSet - justo antes de cambiar el valor de la property
// didSet - despues de cambiar el valor de una property

class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newTotalSteps){
            print(" El numero de pasos va a subir hasta \(newTotalSteps)")
        }
        didSet{
            if totalSteps > oldValue {
                print("El numero de pasos a incrementado en \(totalSteps - oldValue)")
            }
        }
    }
}


let stepCounter = StepCounter()
stepCounter.totalSteps = 200

stepCounter.totalSteps = 520


class Jugador {
  var vida: Int = 100 {
    willSet(newVida){
      switch newVida {
        case 1...100:
              vida > newVida ? print("Daño obtenido \(vida - newVida)") : print("Vida obtenida \(newVida - vida)")
        case ...0:
              print("Has perdido.")
        default:
            self.vida=100
      }
    }
    didSet{
      switch vida {
        case 50...100:
              print("Tienes bastante vida \(vida)")
        case 1...50:
              print("Te queda poca vida \(vida)")
        default:
            self.vida=100
      }
    }
  }
}

let player = Jugador()

player.vida -= 20
player.vida += 40
player.vida += 200
player.vida -= 70
player.vida -= 100

// Type Properties

struct SomeStruct {
    var counter = 0
    static var storedTypeProperty = "SOME VALUE" // con esto se vuelve comun a todas las instancias de la estructura
    static var computedTypeProperty: Int {
        return 1
    }
}

var instanceStr = SomeStruct()

enum SomeEnum {
    static var storedTypeProperty = "someValue"
    static var computedTypeProperty: Int {
        return 5
    }
}


SomeEnum.storedTypeProperty

class SomeClass {
    static var storedTypeProperty = "Somo value"
    static var computedTypeProperty: Int {
        return -9
    }
    
    class var overrideableComputedTypeProperty: Int {
        return 108
    }
}



class membersOfFamily{
    
    static var budget = 1000
    
    func spendMoney(_ cost: Int) -> Void {
            membersOfFamily.budget -= cost
        print(" the budget is now \(membersOfFamily.budget)")
    }

    func addMoney(_ cost: Int) -> Void {
            membersOfFamily.budget += cost
            print(" the budget is now \(membersOfFamily.budget)")
        }
    }

let george = membersOfFamily()
let jack = membersOfFamily()

george.spendMoney(10)
jack.addMoney(10)
