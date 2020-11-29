import Foundation

let names = ["Sasha", "Dima", "Vasya"]

// For loop
for name in names {
    print(name)
}

var number = 5

// While loop
while number > 0 {
    print(number)
    number -= 1
}

number = 5

// Repeat loop
repeat {
    print(number)
    number -= 1
} while number > 0

// Now let's pretend that we need to shuffle an array and make sure that it's not the same as it was. That'd better be done using repeat-while loop
let numbers = [1, 2, 3, 4, 5]
var shuffled: [Int]

repeat {
    shuffled = numbers.shuffled()
} while shuffled == numbers

// Breaking from an outer loop using a labeled statement
outer: for i in 1...10 {
    for j in 1...10 {
        if j == 5 && i == 1 {
            break outer
        }
    }
}
