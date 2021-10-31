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


// Conjuntos

var letters = Set<Character>()
letters.count
letters.insert("a")
letters.insert("h")
letters

var favoriteGames : Set<String> = ["One piece", "Evangelion", "Naruto"]

favoriteGames.insert("Madoka magica")

if let removeGames = favoriteGames.remove("Evangelion"){
    print("Se elimino \(removeGames)")
}

if favoriteGames.contains("Naruto"){
    print("Besto shounen")
}

for anime in favoriteGames{
    print(anime)
}

for anime in favoriteGames.sorted(){
    print(anime)
}

// Iteraciones y operaciones sobre conjuntos

let oddDigits: Set = [1,3,5,7,9]
let eveDigits: Set = [0,2,4,6,8]
let primeNumbers: Set = [2,3,5,7]

// A union B = elementos que son o bien de A, o bien de B de los
oddDigits.union(eveDigits).sorted()

// A intersección B = elementos que son a la vez de A y de B
oddDigits.intersection(eveDigits)
eveDigits.intersection(primeNumbers).sorted()
oddDigits.intersection(primeNumbers).sorted()

// A - B elementos que son de A pero no de B
oddDigits.subtracting(primeNumbers).sorted()

// A + B = (A-B) union (B-A)
oddDigits.symmetricDifference(primeNumbers).sorted()

let houseAnimals: Set = ["🐶", "😹"]
let farmAnimals: Set = ["🐮", "🐓", "🐖", "🐶", "😹"]
let cityAnimals: Set = ["🐁", "🦋"]

houseAnimals.isSubset(of: farmAnimals)
farmAnimals.isSuperset(of: houseAnimals)
// A y B son disjuntos si su intersección es vacia
farmAnimals.isDisjoint(with: cityAnimals)

let favoriteFood: Set = ["Pozole", "chilaquiles", "Cafe", "uvas", "sandia", "fresas", "chamoyada"]
let fruits: Set = ["Curuva", "Guanabana", "Mora", "Mandarina", "Naranja", "Manzana", "Banano", "uvas", "sandia", "fresas"]

favoriteFood.isSubset(of: fruits) //Subconjunto
fruits.isSubset(of: favoriteFood)
favoriteFood.isSuperset(of: fruits) //Superconjunto
favoriteFood.intersection(fruits)//Intersección
favoriteFood.union(fruits) //Unión
favoriteFood.subtracting(fruits)
fruits.isDisjoint(with: favoriteFood)
