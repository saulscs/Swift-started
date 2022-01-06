import UIKit

// MARK: - /** Inicializadores o constructores**

// Inicializadores

struct Fahrenheit {
    var temperature : Double
    init(){
        self.temperature = 32
    }
}

var f1 = Fahrenheit()


struct Celsius{
    var temperatura: Double
    init (fromFahrenheit farenheit: Double){
        self.temperatura = (farenheit - 32) / 1.8
    }
    
    init(fromKelvin kelvin:Double){
        self.temperatura = kelvin - 273.15
    }
    
    init(_ celsius: Double){
        self.temperatura = celsius
    }
}


let boillingPointOfWater = Celsius(fromKelvin: 212)
let freezingPointOfWater = Celsius(fromKelvin: 273.15)


// Nombres, etiquetas y optionals

struct Color{
    let red, green, blue: Double
    
    init(red: Double, green: Double, blue: Double){
        self.red = red
        self.green = green
        self.blue = blue
    }
    
    init(white: Double){
        self.red = white
        self.green = white
        self.blue = white
    }
}


let magenta = Color(red: 1, green: 0, blue: 1)
let halfGrey = Color(white: 0.5)

let bodyTemperature = Celsius(37)

class SurveyQuestion{
    var text: String
    var response: String?
    
    init(text: String){
        self.text = text
    }
    
    func ask(){
        print(text)
    }
}

let q1 = SurveyQuestion(text: "¿Te gustan los tacos?")
q1.ask()
q1.response = "Simon"


// Inicializadores en subclases


// Designado -> Designado super clase
// Conveniencia -> Otro init de la misma clase
// El ultimo init que se llame siempre debe ser designado.

class Vehicle {
    var numberOfWheels = 0
    var description: String{
        return "\(numberOfWheels) ruedas"
    }
}

let vehicle = Vehicle()
vehicle.description

class Bicycle: Vehicle{
    override init() {
        super.init()
        numberOfWheels = 2
    }
}

let bicycle = Bicycle()
bicycle.description

class HoverBoard: Vehicle{
    var color: String
    init(color: String){
        self.color = color
        //aqui se llama implicitamente a super.init()
    }
    override var description: String{
        return "\(super.description) en el color \(self.color)"
    }
}


let hoverboard = HoverBoard(color: "Silver")
hoverboard.description

//Failable Initializer
//Puede tener valor o no porque puede dar nil

enum TemperatureUnit{
    case kelvin, celsius, fahrenheit
    
    init?(symbol: Character){
        switch symbol{
        case "K":
            self = .kelvin
        case "C":
            self = .celsius
        case "F":
            self = .fahrenheit
        default:
            return nil
        }
    }
}

let someUnit = TemperatureUnit(symbol: "X")

class Product{
    let name: String
    init?(name: String){
        if name.isEmpty{
            return nil
        }
        self.name = name
    }
}

class CartItem: Product{
    let quantity: Int
    init?(name: String, quantity: Int){
        if quantity < 1{
            return nil
        }
        self.quantity = quantity
        super.init(name: name)
    }
}

if let someSocks = CartItem(name: "Socks", quantity: 2){
    print("\(someSocks.name) - \(someSocks.quantity)")
}

// Destrucción de objetos con deinit
    
class Bank {
    static var coinsInBank = 2_000
    static func distribute(coins numberOfCoinsRequested: Int) -> Int {
        let numberOfCoinsToVend = min(numberOfCoinsRequested, coinsInBank)
        coinsInBank -= numberOfCoinsToVend
        return numberOfCoinsToVend
    }
    
    static func receive(coins: Int){
        coinsInBank += coins
    }
}


class Player {
    var coinsPurse: Int
    init(coins: Int){
        self.coinsPurse = Bank.distribute(coins: coins)
    }
    
    func win(coins: Int){
        coinsPurse += Bank.distribute(coins: coins)
    }
    
    deinit {
        Bank.receive(coins: coinsPurse)
    }
}


var playerOne: Player? = Player(coins: 100)

Bank.coinsInBank
playerOne!.win(coins: 2_000)
Bank.coinsInBank
