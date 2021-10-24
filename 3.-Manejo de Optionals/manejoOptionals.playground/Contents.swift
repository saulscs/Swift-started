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
