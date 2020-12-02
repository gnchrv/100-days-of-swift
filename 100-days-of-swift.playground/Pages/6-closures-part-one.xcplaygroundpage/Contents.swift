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

// A closure that returns a value
let thinking = { (subject: String) -> String in
    return "I'm thinking of \(subject)"
}

thinking("you")

// Returning from a closure that accepts no parameters
let isItOK = { () -> Bool in
    return true
}

isItOK()

// Accepting a closure as a parameter
func travel(action: () -> Void) {
    print("I'm getting ready to go")
    action()
    print("I'm arrived")
}

// Passing a predifined closure
travel(action: driving)

// Passing a closure literal
travel {
    print("I'm running")
}
