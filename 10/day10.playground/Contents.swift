import UIKit

// Structs

struct Album {
    let title: String
    let artist: String
    let year: Int
    
    func printSummary() {
        print("\(title) \(year) by \(artist)")
    }
}

let album = Album(title: "Random Access Memories", artist: "Daft Punk", year: 2011)

print(album.artist)
album.printSummary()


struct Employee {
    let name: String
    var vacationRemaining: Int = 20
    
    // mutating - can change values within the scruct
    mutating func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I'm goin on a vacation!")
            print("Days remaining: \(vacationRemaining).")
        } else {
            print("Oops! There aren't enough days remaining.")
        }
    }
}

var mark = Employee(name: "Mark", vacationRemaining: 8)
mark.takeVacation(days: 5)
print(mark.vacationRemaining)

var luke = Employee(name: "Luke")
var matthew = Employee(name: "Matthew", vacationRemaining: 30)




struct Emplojee {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    // Computed property
    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationTaken
        }
        
        set {
            vacationAllocated = vacationTaken + newValue
        }
    }
}

var john = Emplojee(name: "John", vacationAllocated: 14)
john.vacationTaken += 4
print(john.vacationRemaining)

john.vacationRemaining = 5
print(john.vacationAllocated)


// Property observers
struct Game {
    var score = 0 {
        didSet {
            print("Score is now \(score).")
        }
    }
}

var game = Game()
game.score += 10
game.score -= 3
game.score += 1


struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }
        
        didSet {
            print("There are now \(contacts.count) contacts")
            print("Old value was: \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Dorian G")
app.contacts.append("Rocky B")
app.contacts.append("Charles X")


// Custom initializers
struct Player {
    let name: String
    let number: Int
    
    init(name: String) {
        self.name = name
        self.number = Int.random(in: 1...99)
    }
}

let player = Player(name: "The One")
print(player.number)
