import Foundation

// A basic function with one argument
func square(number: Int) -> Int {
    return number * number
}

// A function with no explicit return keyword
func greet(name: String) -> String {
    name == "Taylor Swift" ? "Oh, wow" : "Hello, \(name)"
}

// A function that returns multiple pieces of data inside a tuple
func getUser() -> (first: String, last: String) {
    (first: "Taylor", last: "Swift")
}

// A function with default parameters
func sayHello(to name: String, nicely: Bool = true) -> String {
    nicely == true ? "Hello, \(name)" : "Oh crap, it's \(name) again!"
}

sayHello(to: "Vasya")
sayHello(to: "Vasya", nicely: false)

// Variadic functions. print() is actually a good example of a variadic function since it accepts any number of parameters
print("one", "two", "three", separator: " / ", terminator: " 👀")

// Let's write a function that returns a product of any given number of items
func multiply(_ numbers: Int...) -> Int {
    var product = 1
    for number in numbers {
        product *= number
    }
    return product
}

multiply(1, 2, 10, 15)
