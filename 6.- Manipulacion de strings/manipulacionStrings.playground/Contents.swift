import UIKit
import Foundation
import Darwin

/**MANIPULACION DE STRINGS**/


// Strings

let sometring = "string cualquiera"


//Si pinemos el salto de linea con tabulador podemos crear un multiline
let stringMultiLinea = """
Soy Juan gabriel\n
Estamos haciendo el curso de swift\
 Un salu2
"""

print(stringMultiLinea)

//Para las comillas se usa la barra de escape
let wiseWords = "\"La imaginacion es más importante que el saber\" - Albert Einstein"

let dolarSign = "\u{24}"
let blackHeart = "\u{2665}"


//Inicialización y mutabilidad

var empyString = ""
var anotherEmpyString = String()

if empyString.isEmpty {
    print("Nada que ver aqui 🤬")
} else {
    print("El string tiene un valor 😪")
}

var newSomeString = "Un caballo"
newSomeString += " un carruaje"
newSomeString += "y un soldado"

//Si el string esta guardado en un let no sumara ya que las constantes son inmutbles.

var a = "A"
var b = "B"

print("a vale \(a) y b vale \(b)")

b = a

print("a vale \(a) y b vale \(b)")

b = "C"

print("a vale \(a) y b vale \(b)")


//Si un tipo de dato en (especial las strings) es evaluado al hacer una copia el uno de la otra estas copias son independientes viven en lugares diferentes de la RAM.  Tambien los bool y enteros, flaots, doubles.


// Characters

let name = "Naruto"

for ch in name {
    print(ch)
}

print(name.count)

let exclamation : Character = "!"

let nameChars: [Character] = ["S", "A", "U", "L"]
var miName = String(nameChars)

//Cuando tenemos un string podemos usar el metodo appen en vez de hacer un casteo

miName.append(exclamation)

let multiplier = 3
var message = "El producto de multiplier es \(multiplier) X  \(Double(multiplier)*3.5)"

message.append(exclamation)


let numberTable = 3 // Multiplicacion con un for

for index in 0...10 {
    print("\(numberTable) * \(index) = \(numberTable * index)")
}


// Índices de Strings

let greeting = "Hola que hace"
greeting[greeting.startIndex]
greeting[greeting.index(before: greeting.endIndex)]
// No existe el concepto como ultimo elemento del array, en realidad estamos accediente al penultimo

for idx in greeting.indices{
    print("\(greeting[idx]) - \(idx)")
}

// NO son posiciones son indices, y esto es un string no un array

var welcome = "Hola"
welcome.insert("!", at: welcome.endIndex)
welcome.insert(contentsOf: " que tal", at: welcome.index(before: welcome.endIndex))

welcome.remove(at: welcome.index(before: welcome.endIndex))

// Substrings



