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

