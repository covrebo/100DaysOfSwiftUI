import Cocoa

// Create an array with non-unique values
var numbers: [String] = ["One", "One", "Two", "Two", "Three", "Three"]

// Print the number of elements in the array
print(numbers.count)

// Create a set from the array
let numberSet = Set(numbers)

// Print the number of unique elements
print(numberSet.count)


