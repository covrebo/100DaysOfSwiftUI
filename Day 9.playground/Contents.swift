import Cocoa

// testing the sorted function

let family = ["Chris", "Jodi", "Evan", "Allison"]

let familySorted = family.sorted(by: { (a: String, b: String) -> Bool in
    return a < b
})

print(familySorted)

let familyReverseSorted = family.sorted(by: { (a: String, b: String) -> Bool in
    return a > b
})

print(familyReverseSorted)


