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
