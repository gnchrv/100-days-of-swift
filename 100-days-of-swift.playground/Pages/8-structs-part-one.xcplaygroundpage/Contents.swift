import Foundation

struct Sport {
    var name: String
    var isOlympic: Bool

    // A computed property that depends on whether this is an Olympic sport or not
    var olympicStatus: String {
        return isOlympic ? "\(name) is an Olympic sport" : "\(name) is not an Olympic sport"
    }
}

/* Behind the scenes, a computed property is effectively just a function call that happens to belong to a struct */

// Creating an instance of an Olympic sport
var tennis = Sport(name: "Tennis", isOlympic: true)
print(tennis.olympicStatus)

// Creating an object with a non-Olympic sport
var chessboxing = Sport(name: "Chessboxing", isOlympic: false)
print(chessboxing.olympicStatus)

// Creating a struct with a property observer
struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}

// Initialize an object
var progress = Progress(task: "Loading data", amount: 0)

// Every time the value is changed there's statement printed to the console
progress.amount = 30
progress.amount = 80
progress.amount = 100

// Structs with methods
struct City {
    var population: Int
    
    func collectTaxes() -> Int {
        population * 1000
    }
}

// An example of method calling
let london = City(population: 9_000_000)
london.collectTaxes()

// Using mutating methods
struct User {
    var name: String
    
    // You have to mark such methods as mutating so as it'd be obvious to a compiler that they can be used only when an instance of a struct is stored in a variable (not a constant)
    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

// Works olny with var
var person = User(name: "Ed")
person.makeAnonymous()
person.name

// Almost all of Swift's core types are implemented as structs
"Test".hasPrefix("Te")
"Test".count
"test".sorted()

// Now test with emojis
"👫🏼".count
"👫🏼".sorted()

// Arrays are structs as well
var toys = ["Woody"]
toys.append("Buzz")

// Searching for an item
toys.firstIndex(of: "Buzz")
toys.firstIndex(of: "Bu")

// Removing an item at a specified position
toys.remove(at: 0)
toys
