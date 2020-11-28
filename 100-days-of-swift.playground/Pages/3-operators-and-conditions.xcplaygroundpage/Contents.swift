import Foundation

// Ints represent only whole numbers, but they can hold large numbers and work with them correctly.
let integer: Int = 900000000000000001

/*
 Doubles are more precise, but they can not represent large numbers and stay precise at the same time. There will be a warning: '900000000000000001' is not exactly representable as 'Double'; it becomes '900000000000000000'

 let double: Double = 900000000000000001
*/

// Division of integers results in another integer
let division = 18 / 7 // 2

// We can specify the result type explicitly to get a result we want
let preciseDivision: Double = 18 / 7 // 2.571428…

// Check if a number divide equally into another number
169.isMultiple(of: 13)

// Operator overloading. Plus sign can be used not only with numbers or strings, but also with arrays (of the same type, of course)
let a = [1, 2, 3]
let b = [4, 5, 6]
a + b

// Comparable protocol
struct Date {
    let year: Int
    let month: Int
    let day: Int
}

extension Date: Comparable {
    static func < (lhs: Date, rhs: Date) -> Bool {
        if lhs.year != rhs.year {
            return lhs.year < rhs.year
        } else if lhs.month != rhs.month {
            return lhs.month < rhs.month
        } else {
            return lhs.day < rhs.day
        }
    }
    
    static func == (lhs: Date, rhs: Date) -> Bool {
        return lhs.year == rhs.year &&
        lhs.month == rhs.month &&
        lhs.day == rhs.day
    }
    
}

// Since Swift 5.3, enums with no associated values conform to Comparable protocol by default
enum CustomerLevel: Comparable {
    case basic
    case premium
    case ultimate
}

let borisLevel: CustomerLevel = .basic
let mariaLevel: CustomerLevel = .ultimate
borisLevel < mariaLevel

// Switch statement
let point = (10, -5) // 4th quadrant

// Example with value binding and a `where` clause
switch point {
case let (x, y) where y == x:
    print("Point \(point) is on the line y(x) = x")
default:
    print("Point \(point) is not on the line y(x) = x")
}

// Example with a compound case with value binding
switch point {
case (let distance, 0), (0, let distance):
    print("On an axis, \(distance) from the origin")
default:
    print("Not on an axis")
}

// Ranges
let names = ["Misha", "Vasya", "Nastya", "Marusya"]
print(names[1..<3])
print(names[1...])
print(names[..<3])

// Checking whether a rage contains some value
(1...10).contains(10)
(1...10).first!
(1...10).last!
