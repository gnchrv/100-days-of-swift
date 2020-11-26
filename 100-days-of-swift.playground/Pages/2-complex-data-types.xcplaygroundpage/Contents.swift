import Foundation

// Array created with an array literal. Both arrays and sets conform to ExpressibleByArrayLiteral protocol, but Array Literal type defaults to an array
let sports = ["football", "hockey", "golf"]

// Explicitly specified set of integers
var integers: Set<Int> = [1, 2, 25]

// Implicitly specified set of integers
var numbers:  Set = [1, 2, 25]

// Sets which are both generics over Int
type(of: integers)
type(of: numbers)

// .insert methods return a tuple with a boolean indicating whether an item was inserted and an inserted element itself
let (inserted, memberAfterInsert) = numbers.insert(3)
inserted
memberAfterInsert

// A tuple with named properties
var website = (name: "Apple", url: "apple.com")
website.name
website.url
website.self == website

// A tuple with properties of different types. Can be used when an Array is not an option because it can only contain items of the same type
let person = (name: "Paul", age: 40, married: true)

// Dictionaries
let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73,
    "someone": 2.03
]

// The result of accessing a property is always optional since it can't be guaranteed that a dictionary has a specified key
heights["Taylor Swift"] ?? 0.0

// Dictionary properties can not be accessed via dot notation
// heights.someone

// Creating empty collections. First, dictionaries
var teams = [String: String]()
var players: Dictionary<String, String> = Dictionary()

// Empty arrays
var stadiums = [String]()
var locations: Array<String> = Array()

// Empty sets
var names = Set<String>()
var surnames: Set<String> = Set()

// Enumeration with cases appearing on a single line, separated by a comma
enum Result {
    case success, failure
}

let result: Result = .failure
let anotherResult = Result.success

// An enum confirming to a protocol CaseIterable which enables it to provide a collection of all its cases
enum Direction: CaseIterable {
    case north
    case east
    case south
    case west
}

Direction.allCases

// An enum with associated values
enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking: Activity = .talking(topic: "football")

// Accessing associated values inside a switch statement
switch talking {
case .bored:
    print("Someone is bored")
case .running(let destination):
    print("Someone is running to the \(destination)")
case let .singing(volume):
    print("Someone is singing \(volume > 5 ? "loudly" : "quietly")")
case let .talking(topic):
    print("Someone is talking about \(topic)")
}

// An enum with raw values (all generated automatically by the compiler based on the type provided)
enum Mood: Int {
    case happy
    case sad
    case hungry
    case grumpy
    case sleepy
}

// An enum with custom raw values (one is specified and the others a generated automatically)
enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}

// An enum with raw values of type String (equal to the names of the cases)
enum Sport: String {
    case footbal
    case basketball
    case hockey
}

// Accessing raw value
let sport = Sport.hockey.rawValue

// Initializing an enum using a raw value
let game = Sport.init(rawValue: "football")

// The result is an optional of type Sport?
type(of: game)
