import UIKit

// MARK: - /** Metodos, subìndices y herencia**/

// Metodos de instancia

class Counter {
    var count = 0
    
    func increment(){
        self.count += 1
    }
    
    func increment(by amount: Int){
        self.count += amount
    }
    
    func reset(){
        self.count = 0
    }
}


let counter = Counter()

counter.increment()

counter.increment(by: 9)

counter.reset()


struct Point {
    var x = 0.0, y = 0.0
    
    func isToTheRight(of x: Double) -> Bool {
        return self.x > x // la de color blanco es el argumento de la funcion y self.x es la variable
    }
    
    mutating func moveBy(x deltaX: Double, y deltaY: Double){
        self.x += deltaX
        self.y += deltaY
    }
}

var somePoint = Point(x:4, y:5)
somePoint.isToTheRight(of: 1)
somePoint.isToTheRight(of: 53)


// Mutating Methods

somePoint.moveBy(x: 2, y: -3)


enum DifferenceStateSwitch{
    case off, low, high
    mutating func next(){
        switch self {
        case .off:
            self = .low
        case .low:
            self = .high
        case .high:
            self = .off
        }
    }
}

var controllerStatus = DifferenceStateSwitch.off
controllerStatus.next()
controllerStatus.next()
controllerStatus.next()


//Métodos de clase

class SomeClass{
    class func someMethod(){
        print("HELLO")
    }
}

SomeClass.someMethod()

struct LevelTracker {
    static var highestUnlockedLevel = 1
    var currentLevel = 1
    
    static func unlock(_ level:Int){
        if level > highestUnlockedLevel{
            highestUnlockedLevel = level
        }
    }
    
    static func isUnlocked(_ level: Int) -> Bool {
        return level <= highestUnlockedLevel
    }
    
    mutating func advance(to level:Int) -> Bool {
        if LevelTracker.isUnlocked(level){
            currentLevel = level
            return true
        } else {
            return false
        }
    }
}


class Player{
    var tracker = LevelTracker()
    let playerName: String
    func complete(level: Int){
        LevelTracker.unlock(level + 1 )
        tracker.advance(to: level + 1)
    }
    
    init(name: String){
        self.playerName = name
    }
}


var player = Player(name: "JUAN")

player.complete(level: 1)


if player.tracker.advance(to: 7){
    print("Podemos avanzar hasta el nivel 7")
} else {
    print("EL nivel 7 sigue bloqueado")
}

