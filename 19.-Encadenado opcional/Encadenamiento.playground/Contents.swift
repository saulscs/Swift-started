import UIKit


// MARK: - /** Encadenamiento opcional**/

//Optional Chaining

/**
 
 class Person {
     var residente: Residente?
 }

 class Residente{
     var numberOfRooms = 1
 }

 let edgar = Person()

 if let roomCount = edgar.residente?.numberOfRooms{
     print("La case de Edgar tiene \(roomCount)")
 } else {
     print("Edgar no tiene casa")
 }

 edgar.residente = Residente()
 
 
 */



// Clases ejemplo para Optional Chaining

class Person {
    var residence: Residence?
}

class Residence{
    var rooms = [Room]()
    var numberOfRooms: Int {
        return rooms.count
    }
    
    subscript(i: Int) -> Room{
        get {
            return rooms[i]
        }
        set{
            rooms[i] = newValue
        }
    }
    
    var addres: Address?
}

class Room{
    let name: String
    init(name: String){
        self.name = name
    }
}

class Address {
    var buildingName: String?
    var buildingNumber: String?
    var street: String?
    
    func buildingIdentifier() -> String?{
        if let buildingNumber = buildingNumber, let street = street {
            return "\(buildingNumber), \(street)"
        } else if buildingName != nil{
            return buildingName
        } else {
            return nil
        }
    }
}


let edgar = Person()


if let roomCount = edgar.residence?.numberOfRooms{
    print("La case de Edgar tiene \(roomCount)")
} else {
    print("Edgar no tiene casa")
}

let someAddress = Address()
someAddress.buildingNumber = "13"
someAddress.street = "sesamo"
edgar.residence?.addres = someAddress

