import UIKit

// Optionals y Nil

let possibleAge = "21"
let convertedAge = Int(possibleAge)

var serverErrorCode: Int? = 404
serverErrorCode = nil

//var surveyAnweser: String?
//
//surveyAnweser = "42"
//
//print(surveyAnweser)


//Force unwrapping de una variable optional

if convertedAge != nil {
    print("La edad no es nula \(convertedAge!) ") //al ser una transformación nos dira que es un optional por lo cual usamos el force para forzar la conversion
} else{
    print("La edad del usuario es nula \(convertedAge!)")
}

// Optional Binding

var surveyAnswer: String?
surveyAnswer = "42"

//Si el optinal survey se puede convertir ejecuta
if let actualAnswer  = surveyAnswer {
    //Aqui no es nulo
    print("El string \(surveyAnswer) tiene el valor \(actualAnswer)")
} else {
    print("El string \(surveyAnswer) es nil...")
}

//Si puedo convertir esto a numero cuatro y no me da optional o nil
if let firsNumber = Int("4"),
    let secondNumber = Int("42"),
        firsNumber < secondNumber && secondNumber < 100{
            print("\(firsNumber) < \(secondNumber) < 100")
}
