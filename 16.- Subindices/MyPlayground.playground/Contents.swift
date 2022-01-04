import UIKit

// MARK: - /** Metodos, subìndices y herencia**/

//Subíndices

struct TimesTable{
    let multipler: Int
    
    subscript(index: Int) -> Int {
        return multipler * index
    }
}

let threeTimesTable = TimesTable(multipler: 3)
print("6 X 3 = \(threeTimesTable[6])")


for idx in 0...10{
    print("\(idx) X 5 = \(threeTimesTable[idx])")
}


enum Planet: Int, CaseIterable {
    
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
    
    static subscript (n: Int) -> Planet {
        let myDefault = 1
        let count = Planet.allCases.count
        if n <= count && n > 0 {
            
            if let myPlanet = Planet(rawValue: n) {
                return myPlanet
            }
            
        }
        return Planet(rawValue: myDefault)!
    }
}

let marte = Planet[4]
let defaultPlanet = Planet[-4] //default```


struct Matrix {
    let rows: Int, colums: Int
    var grid: [Double]
    
    init(rows: Int, columns: Int){
        self.rows = rows
        self.colums = columns
        grid = Array(repeating: 0.0, count: rows * columns)
    }
    
    func indexIsValid(row:Int, column: Int) -> Bool {
        return row >= 0 && column >= 0 && row < rows && column < colums
    }
    
    subscript (row: Int, column: Int) -> Double {
        get {
            assert(indexIsValid(row: row, column: column), "Index out of range")
            return grid[(row*column) + column]
        } set {
            assert(indexIsValid(row: row, column: column), "Index out of range")
            return grid[(row*colums) + column] = newValue
        }
    }
}


var matrix = Matrix(rows: 15, columns: 15)

matrix[0, 1] = 1.5
matrix[1,0] = 2.5

for row in 0..<matrix.rows{
    for col in 0..<matrix.colums{
        print(matrix[row, col], terminator: " ")
    }
    print("")
}
