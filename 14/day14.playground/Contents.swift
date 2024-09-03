import UIKit

// Optionals - values that might and might not be present
let opposites = ["Mario": "Wario", "Luigi": "Waluigi"]
let peachOpposite = opposites["Peach"]

// if the optional was possible to unwrap, then assign the value to variable
if let marioOpposite = opposites["Mario"] {
    print("Mario's opposite is \(marioOpposite)")
}

var username: String? = nil

if let unwrappedName = username {
    print("We got a user: \(unwrappedName)")
} else {
    print("The optional was empty")
}

var num1 = 1_000_000
var num2 = 0
var num3: Int? = nil

var str1 = "Hello"
var str2 = ""
var str3: String? = nil

var arr = [0]
var arr2 = [Int]()
var arr3: [Int]? = nil


func square(number: Int) -> Int {
    number * number
}

var number: Int? = nil

if let number = number {
    print(square(number: number))
}


// Optionals with guard

func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing input")
        return
    }
    
    print("\(number) x \(number) is \(number * number)")
}

var myVar: Int? = 3

if let unwrapped = myVar {
    // run if myVar has a value inside
}

//guard let unwrapped = myVar else {
//    // run if myVar doesn't have a value inside
//}


// Unwrapping optionals with nil coalescing (??)
// provides value if value is missing
let captains = [
    "Enterprise": "Picard",
    "Voyager": "Janeway",
    "Defiant": "Sisko"
]

let new = captains["Serenity"] ?? "N/A"

let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
let favorite = tvShows.randomElement() ?? "None"

struct Book {
    let title: String
    let author: String?
}

let book = Book(title: "Beowulf", author: nil)
let author = book.author ?? "Anonymous"
print(author)

let input = ""
let no = Int(input) ?? 0
print(no)


// handling multiple optionals
let names = ["Frank", "William", "George", "Denzel"]
let chosen = names.randomElement()?.uppercased() ?? "No one"
// if the optional has a value inside, unwrap it then...
print("Next in line: \(chosen)")


struct Kniha {
    let titul: String
    let autor: String?
}

var kniha: Kniha? = nil
let autor = kniha?.autor?.first?.uppercased() ?? "A"
print(autor)


// handling function failure with optionals
enum UserError: Error {
    case badID, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UserError.networkFailed
}

if let user = try? getUser(id: 23) {
    print("User: \(user)")
}

let user = (try? getUser(id: 23)) ?? "Anonymous"
print(user)
