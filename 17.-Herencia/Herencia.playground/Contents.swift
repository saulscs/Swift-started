import UIKit

// MARK: - /** Metodos, subìndices y herencia**

// Herencia

class Vehicle {
    var currentSpeed = 0.0
    var description: String{
        return "Viajando a \(currentSpeed) km/h"
    }
    
    func makeNoise(){
        // do nothing, porque cada vehiculo tiene su propia forma de ruido
    }
}

let someVehicle = Vehicle()
print(someVehicle.description)


class Bicycle: Vehicle {
    var hasBasket = false
}

let bicycle = Bicycle()
bicycle.hasBasket = true
bicycle.currentSpeed = 15.0

print(bicycle.description)

class Tandem: Bicycle{
    var currentNumberOfPassengers = 0
}

let tandem = Tandem()
tandem.hasBasket = true
tandem.currentNumberOfPassengers = 2
tandem.currentSpeed = 22.0
print(tandem.description)


class Car : Vehicle{
    enum KindOfCar{
    case electric, combustion
    }
    
    var kindOfCar = KindOfCar.self
    var maxSpeed = 0.0
}

class ElectricCar : Car{
    var autonomy = 0.0
}

class CombustionCar : Car{
    var performance = 0.0
}

let electricCar = ElectricCar()
electricCar.kindOfCar.electric
electricCar.maxSpeed = 220
electricCar.autonomy = 450

let combustionCar = CombustionCar()
combustionCar.kindOfCar.combustion
combustionCar.maxSpeed = 200
combustionCar.performance = 8

//Sobreescritura de variables y métodos

class Train: Vehicle {
     var numbersOfWagons = 0
    
    override func makeNoise() {
        print("Choo Choo")
    }
}

let train = Train()
train.makeNoise()

class Car2: Vehicle{
    var gear = 1
    override var description: String{
        return super.description + "en la marcha \(gear)"
    }
}

let car2 = Car2()
car2.currentSpeed = 55
car2.gear = 3

print(car2.description)

class AutomaticCar: Car2{
    override var currentSpeed: Double{
        didSet {
            gear = Int(currentSpeed / 15.0) + 1
        }
    }
}

let automaticCar = AutomaticCar()
automaticCar.currentSpeed = 55
print(automaticCar.description)


