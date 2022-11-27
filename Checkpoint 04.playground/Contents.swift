import Cocoa

// Create error cases for anticpated errors
enum squareRootError: Error {
    case outOfBounds, noSquareRoot
}

// Determine if there is an integer square root for a given input between 1 and 10,000
func findIntegerSqareRoot(num: Int) throws -> Int {
    // Verify that input is between 1 and 10,000
    if num < 1 || num > 10_000 {
        throw squareRootError.outOfBounds
    }
    
    // Check to see if the input has an integer square root by looping through all possible combinations, stopping if the square of the possibility is greater than the input
    for i in 1...100 {
        // print("DEBUG: \(i) * \(i) = \(i * i)")
        if i * i == num {
            return i
        } else if i * i > num {
            // print("DEBUG: I'm in the conditional")
            throw squareRootError.noSquareRoot
        }
    }
    return -1
}

let number01 = 100

do {
    let result = try findIntegerSqareRoot(num: number01)
    print("The square root of \(number01) is \(result)")
} catch squareRootError.outOfBounds {
    print("Input error: input must be between 1 and 10,000")
} catch squareRootError.noSquareRoot{
    print("There is no integer sqaure root for \(number01)")
} catch {
    print("Generic error: unidentified error")
}
