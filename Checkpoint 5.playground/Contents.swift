import Cocoa

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

//Your job is to:

//Filter out any numbers that are even
let evenLuckyNumbers = luckyNumbers.filter{
    $0 % 2 != 0
}
print(evenLuckyNumbers)

//Sort the array in ascending order
let sortedOddNumbers = evenLuckyNumbers.sorted{
    $0 < $1
}
print(sortedOddNumbers)

//Map them to strings in the format “7 is a lucky number”
let mappedLuckyNumbers = sortedOddNumbers.map{
    "\($0) is a luck number"
}
print(mappedLuckyNumbers)

//Print the resulting array, one item per line
for number in mappedLuckyNumbers{
    print(number)
}

func allTheNumbers(potentialNumbers: [Int]) -> [String] {
    // Filter for odd numbers
    var numbers01 = potentialNumbers.filter{
        $0 % 2 != 0
    }
    
    // Sort the numbers in ascending order
    numbers01 = numbers01.sorted{
        $0 < $1
    }
    
    // Map the numbers to statements
    var numbers02 = numbers01.map{
        "\($0) is a luck number"
    }
    
    // Print the statements
    for i in numbers02 {
        print(i)
    }
    return numbers02
}

allTheNumbers(potentialNumbers: luckyNumbers)

// Final solution after watching the hints
let finalNumbers = luckyNumbers.filter{
    $0 % 2 != 0
}.sorted{
    $0 < $1
}.map{
    "\(String($0)) is a lucky number"
}

for number in finalNumbers{
    print(number)
}
