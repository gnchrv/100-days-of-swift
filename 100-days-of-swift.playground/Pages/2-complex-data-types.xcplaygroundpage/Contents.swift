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
