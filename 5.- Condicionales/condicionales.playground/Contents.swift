import UIKit

/**CONDICIONALES Y OPERACIONES BASICAS**/

//Operaciones de asignación y aritmeticas

let b = 10
var a = 5

a = b // igualamos el valor de a a 10 por eso en el if si es true

let (x,y) = (1,2)

if a == b {
    print("Los valos de a y b son iguales")
}

1+2
5-3
2*3
10.0/2.5

"Hello" + "world"

9/4
9*4

9 == 4*2+1

-9*4

let five = 5
let minusFive = -five
let plusFive = -minusFive

let minusSix = -6
let alsoMinusSix = +minusSix

let resto = 17 % 5


// Comparaciones

1 == 1
2 != 1
2 > 1
1 < 2
1 >= 1
2 <= 1

let name = "Pikachu"

if name == "Pikachu" {
    print("Este pokemon es \(name)")
} else {
    print("Aparecio un \(name) salvaje")
}


// Comparaciones de tuplas
(1, "Pikachu") < (2, "Chanmander")
(1, "Pikachu") > (2, "Chanmander")
(2, "Pikachu") < (2, "Chanmander") // regresa false porque a pesar de ser el mismo numero la c va antes que la p
(4, "perro") == (4, "perro")

(26, "Saul") > (36, "Juan")


// Operaciones Ternarias

let contentHeight = 40
var hasImage = true
var rowHeight = 0

//if hasImage {
//    rowHeight = contentHeight + 50
//} else {
//    rowHeight = contentHeight + 10
//}

rowHeight = contentHeight + (hasImage ? 50 : 10)

// Operador Nil Coalescing

let defaultAge = 18
var userAge: Int?

var ageToBeUsed = userAge ?? defaultAge // Esto es para poner un valor por defecto en vez de tener nil

let defaultColorName = "red"
var userColorName: String?

var colorNameToUse = userColorName ?? defaultColorName


let defaultUserName = "Antonio balderas"
var username:String?

var userNameToBeUse = username ?? defaultUserName

// Rangos

