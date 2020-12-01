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
print("one", "two", "three", separator: " / ", terminator: " 👀\n")

// Let's write a function that returns a product of any given number of items
func multiply(_ numbers: Int...) -> Int {
    var product = 1
    for number in numbers {
        product *= number
    }
    return product
}

multiply(1, 2, 10, 15)

// Specifiyng a throwing function. First, declare an enum containing error cases
enum PasswordErrors: Error {
    case obvious
    case someOtherCase
}

// Next, declare a function that checks password and throws an error if the password is too obvious
func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordErrors.obvious
    }
    return true
}

// Now, let's handle the result of calling this function
do {
    let checked = try checkPassword("password")
    if checked {
        print("Password is valid")
    }
} catch PasswordErrors.obvious {
    print("Password provided is obvious")
} catch {
    print("Something went wrong")
}

// Function arguments can be market as `inout`. It basically means that these parameters' values can be changed inside a function body (normally, we can't do that because values are being passed as constants)
var number = 2

func squarify(number: inout Int) {
    number = number * number
}

// When calling a function, inout parameters should be prefixed with an ampersand, &
squarify(number: &number)

number
