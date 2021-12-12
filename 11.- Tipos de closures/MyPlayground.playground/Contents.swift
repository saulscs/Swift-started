import UIKit

// MARK: - /**TIPOS DE CLOSURES**/

// Closures
let names = ["christian", "ricardo", "juan gabriel", "edgar", "freddy"]

func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}

backward("Juan gabriel", "Edgar")

var reverseNames = names.sorted(by: backward)
reverseNames = names.sorted(by: { (s1: String, s2: String) -> Bool in return s1 > s2
})
