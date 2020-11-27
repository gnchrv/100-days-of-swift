import Foundation

// Ints represent only whole numbers, but they can hold large numbers and work with them correctly.
let integer: Int = 900000000000000001

/*
 Doubles are more precise, but they can not represent large numbers and stay precise at the same time. There will be a warning: '900000000000000001' is not exactly representable as 'Double'; it becomes '900000000000000000'

 let double: Double = 900000000000000001
*/

// Division of integers results in another integer
let division = 18 / 7 // 2

// We can specify the result type explicitly to get a result we want
let preciseDivision: Double = 18 / 7 // 2.571428…

// Check if a number divide equally into another number
169.isMultiple(of: 13)
