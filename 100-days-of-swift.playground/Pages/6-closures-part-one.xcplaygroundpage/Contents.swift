import Foundation

// Creating a function without a name (which is basically a closure)
let driving = {
    print("Hey, I'm driving now!")
}

// Calling this so-called function
driving()

// Closures can accept parameters as well as functions do (just differently)
let walking = { (destination: String) in
    print("I'm walking to \(destination) now!")
}

// Calling a closure and passing it an argument
walking("my home")

