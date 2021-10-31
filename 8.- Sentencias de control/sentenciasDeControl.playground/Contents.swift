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
