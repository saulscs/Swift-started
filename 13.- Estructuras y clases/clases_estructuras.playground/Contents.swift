import UIKit

// MARK: - /**Estructuras y clases**/


// Estructuras vs Clases

struct SomeStruct {
    // La definición de la estructura va aqui
}

class SomeClass {
    // La definición de la clase aqui
}


struct Resolution{
    var width = 0
    var heigth = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

let someResolution = Resolution()
let someVideoMode = VideoMode()

print(someResolution.width)

someVideoMode.resolution.width = 1280
print(someVideoMode.resolution.width)

someVideoMode.frameRate = 30.0
print(someVideoMode.frameRate)

// Estructuras: datos copiados por valor

let vga = Resolution(width: 640, heigth: 480) // Inicializadores de serie
vga.width
vga.heigth

let hd = Resolution(width: 1920, heigth: 1080)


var cinema = hd
print("\(cinema.width) x \(cinema.heigth)")
cinema.width = 2048
print("\(cinema.width) x \(cinema.heigth)")

print("\(hd.width) x \(hd.heigth)")


enum CompassPoint {
    case north, south, east, west
}

var currentDirection = CompassPoint.north
var oldDirection = currentDirection
currentDirection = .south

print(currentDirection)
print(oldDirection)

// Clases: datos referenciados

let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0


let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.0


