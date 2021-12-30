import UIKit

// MARK: - /**TIPOS DE CLOSURES**/

// Closures
let names = ["christian", "ricardo", "juan gabriel", "edgar", "freddy"]

func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}

backward("Juan gabriel", "Edgar")

var reverseNames = names.sorted(by: backward)
reverseNames = names.sorted(by: { (s1: String, s2: String) -> Bool in return s1 > s2
})

reverseNames = names.sorted(by: {s1, s2 in return s1 > s2})
reverseNames = names.sorted(by: {s1, s2 in s1 > s2})
reverseNames = names.sorted(by: {$0 > $01})
reverseNames = names.sorted(by: >)


// Trailing Closures recibir una closure como parámetro de una función se usan también para llamadas asincronas a un servicio

func someFunctionThatTakesClosure(closure: () -> Void){
    // Cuerpo de la función
}

someFunctionThatTakesClosure (closure: {
    // cuerpo de la closure
})

someFunctionThatTakesClosure {
    // aqui va la closure
}

// Trailing closure sin parentesis
reverseNames = names.sorted{$0 > $1}



let digitNames = [0: "Cero", 1: "Uno", 2: "Dos", 3: "Tres", 4: "Cuatro",
                  5: "Cinco", 6: "Seis", 7: "Siete", 8: "Ocho", 9: "Nueve"]

let numbers = [16,58,510,2127, -9, -20, -101]

let numberString = numbers.map { (number) -> String in
    var number = number // reconvertimos la constante a variable con esta linea
    var output = ""
    let minus = "menos"
    var isMinus = false
    
    if number < 0 {
        number *= -1
        isMinus = true
    } else {
        number
    }
    
    repeat{
        output = digitNames[number%10]! + " " + output
        number /= 10
    } while number > 0
    if(isMinus){output = minus + " " + output}
    return output
}


// captura de valores

func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    
    func incrementer() -> Int { //funciones que capturan los valores que la rodean
        runningTotal += amount
        return runningTotal
    }
    
    return incrementer
}

let incrementByTen = makeIncrementer(forIncrement: 10)
incrementByTen()
incrementByTen()

//Los closures capturan el ambiente en el que fueron creados, lo que significa que toman una copia de los valores que son usados dentro de ellos.


let incrementBySeven = makeIncrementer(forIncrement: 7)
incrementBySeven()
incrementBySeven()

//Escaping Closure

var completionHandlers: [ () -> Void ] = []

func someFunctionWithScapingClosure(completionHandler: @escaping () -> Void){
    completionHandlers.append(completionHandler)
}

completionHandlers.count


func someFunctionWithNoneEscapingClosure(closure: () -> Void){
    closure()
}

class SomeClass{
    var x = 10
    func doSomething(){
        someFunctionWithScapingClosure {
            self.x = 100 // Se tiene que indicar el self en las escaping closures
        }
        someFunctionWithNoneEscapingClosure{
            x = 200 // como se ejecuta al momento no lleva el self
        }
    }
}

let instance = SomeClass()
print(instance.x)
instance.doSomething()
print(instance.x)

completionHandlers.count
completionHandlers.first?() // llavamos el closure escaping
print(instance.x)
