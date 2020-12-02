import Foundation

// Creating a closure that accepts one parameter
let driving = {(place: String) in
    print("I'm driving to \(place)")
}

// Declaring a function that accepts a closure and pass a string to it
func travel(action: (String) -> Void) {
    print("I'me getting ready")
    driving("London")
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
