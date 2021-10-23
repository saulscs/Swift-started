import UIKit

/*TIPOS DE DATOS**/

//Enteros con signo o sin signo

let age = 31

//8 bits se pueden guardar 256 valores diferentes.
let minValue = UInt8.min // 2^0 -1
let maxValue = UInt8.max // 2^8 -1

//16 bits se pueden guardar 65535 valores diferentes.
let maxValue16 = UInt16.max

//32 bits se pueden guardar 4294967295 valores diferentes.
let maxValue32 = UInt32.max

//64 bits se pueden guardar 18446744073709551615 valores dif.
let maxValue64 = UInt64.max


//Floats y Doubles

let f1 = 3.1415 // por defecto swift le pone double

let f2:Float = 3.1451556 // hay que castearlo (especificar el tipo) para que sea double


let d1: Double = 3.14159324

let anothetPi = 3 + 0.14159 // swift infiere el tipo de dato
