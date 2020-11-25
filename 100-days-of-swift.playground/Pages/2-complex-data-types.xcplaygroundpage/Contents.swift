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
