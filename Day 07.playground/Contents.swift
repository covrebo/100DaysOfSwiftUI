import Cocoa

// create strings to compare
let str00 = "cab"
let str01 = "abc"
let str02 = "Abc"
let str03 = "cabc"
let str04 = "bcac"

func strCompare (string1: String, string2: String) -> Bool {
    if string1.sorted() == string2.sorted() {
        return true
    } else {
        return false
    }
}

strCompare(string1: str03, string2: str04)
