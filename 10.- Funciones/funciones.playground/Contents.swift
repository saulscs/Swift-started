import UIKit
import Foundation

/**FUNCIONES**/

// Declarar una función

func greeting(person: String) -> String{
    let greet = "Hola \(person)"
    return greet
}

greeting(person: "Saul")

//Parámetros de entrada

func sayHelloWorld() -> String{ // Sin parametros
    return "Hello world"
}

sayHelloWorld()


func greeatingTwo(person: String, isMale: Bool) -> String{
    if isMale {
        return "Bienvenido Caballero \(person)"
    } else{
        return "Bienvenida señorita \(person)"
    }
}

greeatingTwo(person: "Juan", isMale: true)

// Valores de Retorno, Optionals y Parámetros de Salida

func newGreet(person:String){ // Esta no devuelve nada solo ejecuta el codigo
    print("hola \(person)")
}

newGreet(person: "Lopez")


func priceAndCount(string: String) -> Int {
    print(string)
    return string.count
}

priceAndCount(string: "Hola que tal")

func printWithOutCounting(string: String){
    let _ = priceAndCount(string: string)
}

priceAndCount(string: "HI")
printWithOutCounting(string: "Hola que hace")


func minMax(array: [Int]) -> (min: Int, max: Int)?{
    if array.isEmpty { return nil }
    
    var currentMin = array[0]
    var currentMax = array[0]
    
    for value in array[1..<array.count]{
        if value < currentMin{
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
     return (currentMin, currentMax)
}

let bounds = minMax(array: [6,3,-8,3])
print("Los valores se hallan en \(bounds!.min) y \(bounds!.max)")

minMax(array: [])

// Etiquetas de Params y Variadics

func someFunctions(f1 firstParamsName: Int, f2 secondParamName: Int){
    // Argumentos para evitar tener que usar nombre tan largos
    print(firstParamsName + secondParamName)
}

someFunctions(f1: 5, f2: 4)

func greeating(_ person: String, from homeTown: String) -> String {
    return "hola \(person) un placer que no visites desde \(homeTown)"
}

greeating("Juan gabriel", from: "Mallorca")


 
func mean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers{
        total += number
    }
    return total / Double(numbers.count)
}

mean(1,2,4,45,21,1)


// Parámetros tipo inout

let x = 5
func addOne(number: Int){
    var number2 = number
    number2 += 1
    print("El numero vale \(number2)")
}

addOne(number: x)


func swapTwoInts(_ a: inout Int, _ b: inout Int){ //Estamos haciendo una referencia realemnte no se modifican, porque los parametros son constantes solo referenciamos el valor de las variables externas
    let tempA = a
    a = b
    b = tempA
}

var someInt = 2
var otherInt =  4

swapTwoInts(&someInt, &otherInt)

// Function Types

func addTwoInts(_ a: Int, _ b: Int) -> Int{
    return a + b
}

func multiplyTwoInts(_ a: Int, _ b: Int) -> Int{
    return a * b
}


var mathFunction: (Int, Int) -> Int = multiplyTwoInts
mathFunction(4,5)

func printMathResults(_ mathFunc: (Int, Int) -> Int, _ a: Int, _ b: Int){
    print("Resultado \(mathFunction(a,b))")
}

printMathResults(multiplyTwoInts, 5, 9)


func stepForward(_ input: Int) -> Int {
    return input + 1
}

func stepBackward(_ input: Int) -> Int {
    return input - 1
}

func chooseStepFunction(backward: Bool) -> (Int) -> Int{
    return backward ? stepBackward : stepForward
}

var value = 7
let moveNearerzero = chooseStepFunction(backward: value > 0)

while value != 0{
    print("\(value)")
    value = moveNearerzero(value)
}

print("Cero")
