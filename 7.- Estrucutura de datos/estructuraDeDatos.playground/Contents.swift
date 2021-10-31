import UIKit

/**ESTRUCTURA DE DATOS**/

//Arrays
var someInts = [Int]()
someInts.count
someInts.append(32)
someInts = []
someInts.count


var someDoubles = Array(repeating: 3.141592, count: 3)
someDoubles.count

var moreDoubles = Array(repeating: 2.5, count: 4)

var aLotOfDoubles = someDoubles + moreDoubles
aLotOfDoubles.count

var shoppingList : [String] = ["Papas", "Cereal", "Leche"]
shoppingList.count


//Acceder y modificar elementos de un Array

if shoppingList.isEmpty{
    print("La lista de la compra esta vacia 🤬")
} else{
    print("Mande a comprar 😭")
}

shoppingList.append("Coca Cola")
shoppingList.count

shoppingList += ["Totopos", "Cerveza"]

shoppingList.insert("Mapple", at: 0)
shoppingList[4...6]
shoppingList[4...5] = ["Naranja", "Platano", "Mango"]

let pepper = shoppingList.remove(at: 1)
shoppingList

shoppingList.removeLast()
shoppingList

//Iterando en Arrays

for item in shoppingList{
    print("Esto se compra \(item)")
}

for (idx, item) in shoppingList.enumerated(){
    print("Item \(idx+1): \(item)")
}
