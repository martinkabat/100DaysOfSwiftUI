import UIKit

// Closures

let sayHello = { (name: String) -> String in
        "Hi \(name)!"
}

sayHello("Martin")


func greetUser() {
    print("Hi there!")
}

var greetCopy: () -> Void = greetUser


func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}

let data: (Int) -> String = getUserData
let user = data(1989)
print(user)


let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)

func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    
    return name1 < name2
}

let captainFirstTeam = team.sorted(by: captainFirstSorted)
print(captainFirstTeam)



// Trailing closures
let dunder = ["Jim", "Dwight", "Michael", "Angela", "Kevin", "Phillis", "Stanley", "Toby"]

let reverseMifflin = dunder.sorted { $0 > $1 }
print(reverseMifflin)

// Filter function
let tOnly = dunder.filter {$0.hasPrefix("T")}
print(tOnly)

// Map function
let uppercaseMifflin = dunder.map { $0.uppercased() }
print(uppercaseMifflin)


// How to accept functions as parameters
func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()
    
    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }
    return numbers
}

let rolls = makeArray(size: 50) {
    Int.random(in: 1...20)
}

// !!!
func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done!")
}

doImportantWork {
    print("This is the first work")
} second: {
    print("This is the second work")
} third: {
    print("This is the third work")
}
