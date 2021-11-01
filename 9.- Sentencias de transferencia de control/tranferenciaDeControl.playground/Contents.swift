import UIKit

/**SENTENCIAS DE TRANSFERENCIA DE CONTROL**/


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

//Fallthrough

let integerDescribe = 7
var description = "El numero \(integerDescribe) es"

switch integerDescribe{
case 2,4,5,3,1,9:
    description += " un numero primo, y"
    fallthrough // permite caer ademas en el siguiente caso
default:
    description += " un numero entero"
}


// Uso de return y guard

var people = ["name": "Juan Gabriel", "age": 21, "isMale": true] as  [String: Any]


func testUserValidation(person: [String: Any]){
    guard let surname = person["surname"] else{
        print("El nombre es desconosida")
        return
    }
    print(surname)
}

 
testUserValidation(person: people)


// Available en API: Manejo de versiones


if #available(IOS 12, macOS 10.12, *){
    //Ejecutar acciones en ios 12 o posterior
    
}else{
    //Mantener el codigo viejo en versiones anteriores
}
