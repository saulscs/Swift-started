import UIKit
import Foundation

/*SENTENCIAS DE CONTROL*/

// Ciclo for in

let names = ["Ricardo Celis", "Juan gabriel", "Edgar"]

for name in names {
    print("Hi \(name)")
}


let numberOfLegs = ["Spider": 8, "Dog": 4, "ant": 6]

for (animalname, legCount) in numberOfLegs{
    print("Animal: \(animalname), numero de patasa \(legCount)")
}

for idx in 1...5{
    print("\(idx) x 3 = \(idx*3)")
}

let base = 2
let power = 10
var answer = 1

for _ in 1...power{
    answer *= base
    print(answer)
}

var hour = 9
let minutes = 60
let minutesIntervalo = 5
for tickMark in stride(from: 0, to: minutes, by: minutesIntervalo){
    print("\(hour) : \(tickMark)")
}


var initialHour = 0
var endHour = 24
var intervalo = 3
var timer: String

for tickTack in stride(from: initialHour, to: endHour, by: intervalo){
    if tickTack <= 12{
        timer = "AM"
    } else{
        timer = "PM"
    }
    print("time it is:  \(tickTack):00 \(timer)")
}


// Ciclo while

var i = 0

while i <= 10{
    i += 1
}

print(i)

repeat {
    i += 1
} while i <= 10

print(i)


//Algoritmo Criba de Eratóstenes
//permite hallar todos los números primos menores que un número natural dado.

private func sieveOfEratosthenes(upTo n: Int) -> [Int] {
    var primeNumbers = [Int]()
    var composite = [Bool](repeating: false, count: n + 1)
    for i in 2...n {
        if !composite[i] {
            primeNumbers.append(i)
            for multiple in stride(from: i * i, through: n, by: i) {
                composite[multiple] = true
            }
        }
    }
    return primeNumbers
}


var results = sieveOfEratosthenes(upTo: 5)


// Uso de if

var temp = 18

if temp <= 15 {
    print("Hace frio 🥶")
} else if temp >= 25 {
    print("Hace calor 🥵")
} else {
    print("Esta todo chido 😃")
}


// Uso de Switch

let someCharacter = "z"

switch someCharacter {
case "a":
        print("es la primera letra del alfabeto")
case "z":
        print("Ultima letra")
default:
    print("Ninguna de las anteriores")
}

//Switch usando rangos - Interval matching

let moons = 62
let phrase = "Lunas de saturno"
let natutalCount: String

switch(moons){
case 0:
    natutalCount = "No hay"
case 1..<5:
    natutalCount = "Hay una cuantas"
case 5..<12:
    natutalCount = "Hay muchas"
default:
    natutalCount = "Incontables"
}

// Switch usando tuplas

let somePoint = (1,1)
switch somePoint {
case (0,0):
    print("El punto \(somePoint) es el origen de las coordenadas")
case (_, 0):
    print("El punto \(somePoint) esta en eje x")
case (0, _):
    print("El punto \(somePoint) esta en eje y")
case (-2...2, -2...2):
    print("El punto \(somePoint) esta en el interior de lado 4")
default:
    print("El punto \(somePoint) esta por ahi")
}


//Switch con casos compuestos

let anotherCharacter: Character = "k"

switch anotherCharacter{
case "a", "e", "i", "o", "u":
    print("Es vocal")
case "c", "d", "f":
    print("Es consonante")
default:
    print("ni una ni otra")
    
}


let sillAnotherPoint = (9,5)
switch sillAnotherPoint{
case (let distance, 0), (0, let distance):
    print("Se halla sobre el eje, a distancia \(distance) del origen")
default:
    print("No está sobre el eje")
}

// Continue y break - Control transference sentences


let sentence = "Las mentes grandes piensan igual"
var filteredSentence = ""
let charactersToRemove: [Character] = ["a", "e", "i", "o", "u"]

for ch in sentence{
    if charactersToRemove.contains(ch){
        continue
    }
    filteredSentence.append(ch)
    if ch == "d"{
        break
    }
}

filteredSentence
