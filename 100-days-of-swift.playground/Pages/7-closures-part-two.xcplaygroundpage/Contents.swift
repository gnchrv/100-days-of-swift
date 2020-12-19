import Foundation

// Creating a closure that accepts one parameter
let driving = {(place: String) in
    print("I'm driving to \(place)")
}

// Declaring a function that accepts a closure and pass a string to it
func travel(action: (String) -> Void) {
    print("I'me getting ready")
    action("London")
    print("I'm arriving")
}

// Calling this function and passing a closure defined earlier
travel(action: driving)

// Now, let's create a closure that doubles an integer passed to it and returns a result
let doubling = {(number: Int) -> Int in number * 2}

// Declare a function that accepts this closure and reliyng on the value the closure returns
func manipulate(number: Int, manipulator: (Int) -> Int) -> Int {
    manipulator(number)
}

manipulate(number: 10, manipulator: doubling)
manipulate(number: 31) { (number: Int) -> Int in
    number % 13
}

// Implement a simple reducer method similar to the one used in arrays
func reduce(_ values: [Int], using closure: (Int, Int) -> Int) -> Int? {
    // If the array is empty, return nil
    if values.count == 0 {
        return nil
    }
    
    // Make a variable storing current values equal to the first number of the array
    var current = values[0]
    
    // Loop over all the values in the array, counting from index 1 onwards
    for value in values[1...] {
        current = closure(current, value)
    }
    
    // Return the result
    return current
}

reduce([10, 20, 30], using: {(accumulated: Int, current: Int) -> Int in
    accumulated * current
})

reduce([10, 20, 30], using: +)

// travel() function can be re-written using shorthand parameter names (i. e. without specifying them entirelly)
func newTravel(action: (String) -> String) {
    print("I'me getting ready")
    print(action("London"))
    print("I'm arriving")
}

newTravel {
    "I'm going to \($0)"
}

// Returning a closure from a function
func travel() -> (String) -> String {
    return { (place: String) -> String in
        return "I'm going to \(place)"
    }
}

// The same, but using shorhand syntax
func newTravel() -> (String) -> String {
    { "I'm going to \($0)" }
}

travel()("Moscow")
newTravel()("Moscow")

// Declare a function that returns a closure with a captured value
func newWalking() -> (String) -> String {
    var counter = 0
    return {
        counter += 1
        return "\(counter). I'm walking to \($0)"
    }
}

// Get the closure and call it multiple times
let actuallyWalking = newWalking()
actuallyWalking("London")
actuallyWalking("London")
actuallyWalking("London")

// Using the same technique, create a function returning a closure which generates random numbers (but with a twist: it won't return the same number twice in a row)

func makeRandomNumberGenerator() -> () -> Int {
    // Store previous number that has been generated
    var prevousNumber = 0
    
    return {
        // Declare a variable in which a newly generated number will be stored
        var newNumber: Int
        
        // Generate new number untill it's not equal to the previous one
        repeat {
            newNumber = Int.random(in: 1...3)
        } while newNumber == prevousNumber
        
        // Update the previous one
        prevousNumber = newNumber
        
        return newNumber
    }
}

// Create a generator and call it multiple times
let generator = makeRandomNumberGenerator()

for _ in 1...10 {
    print(generator())
}
