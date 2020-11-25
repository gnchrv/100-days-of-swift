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
