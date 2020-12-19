import Foundation

struct Sport {
    var name: String
}

// Initializing a struct
var tennis = Sport(name: "Tennis")
print(tennis.name)

// Changing the name property of the struct
tennis.name = "Lawn tennis"
print(tennis.name)
