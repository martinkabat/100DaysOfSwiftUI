import UIKit

// Functions
let roll = Int.random(in: 1...20)

func printTimesTables(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) * \(number) is \(i * number)")
    }
}

printTimesTables(number: 5, end: 20)


// Returning values from functions
let root = sqrt(169)
print(root)

func sameLettersInStrings(firstString: String, secondString: String) -> Bool {
    return firstString.sorted() == secondString.sorted() // possible to drop the "return" word as the function has only one line hence it is the return line
}

sameLettersInStrings(firstString: "kabi", secondString: "iabk")


func pythagoras(a: Double, b: Double) -> Double {
    sqrt(a * a + b * b)
}

let c = pythagoras(a: 3, b: 4)
print(c)


func sayHello() {
    return // can be used to exit the function immediatelly
}


// Return multiple values from functions
func getUser() -> (firstName: String, lastName: String) {
    ("Bruce", "Springsteen")
}

let bruce = getUser()
print("\(bruce.firstName) \(bruce.lastName)")

let (firstName, lastName) = getUser()
print("\(bruce.firstName) \(bruce.lastName)")


// Customize parameter labels
let lyric = "I see a red door and I want it painted black."
print(lyric.hasPrefix("I see"))

// underscore meaning no external parameter name
func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO, WORLD"
let result = isUppercase(string)

// two names for external and internal name for parameter
func printTimesTable2(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTable2(for: 5)
