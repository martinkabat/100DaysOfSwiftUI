import UIKit

// Variables

var beatles = ["John", "Paul", "George", "Ringo"]
beatles.append("Yoko")

print(beatles[2])

var temperatures = [25.5, 62.1, 12, 11, 5]
temperatures.append(12.1)
//temperatures.append("Miley") // error, attempt to append a wrong type

let firstBeatle = beatles[0]
let firstTemp = temperatures[0]

var scores = Array<Int>()
scores.append(100)

var albums = Array<String>() // Array init type 1
albums.append("Floklore")
print(albums[0])

var bambulabs = [String]() // Array init type 2
bambulabs.append("A1")
print(bambulabs[0])

var crealities = ["K1 Max"]
crealities.append("K2 Plus")
print(crealities[1])

var characters = ["Dwight", "Jim", "Pam", "Stanley"]
print(characters.count)

characters.remove(at: 2)
print(characters.count)

characters.removeAll()
print(characters.count)


let bondMovies = ["Casino Royale", "Spectre", "No Time to Die"]
print(bondMovies.contains("Frozen"))

let cities = ["Prague", "London", "Bratislava", "Vienna", "Warsaw"]
print(cities.sorted())

let presidents = ["Havel", "Klaus", "Zeman", "Pavel"]
let reversedPresidents = presidents.reversed()
print(reversedPresidents)


// Dictionaries
let employee = [
    "name": "John Malkovich",
    "job": "Actor",
    "location": "Los Angeles"
]
//print(employee["password"]) // error, the key does not exist
print(employee["password", default: "Unknown"])
print(employee["name", default: "Unknown"])

let hasGraduated = [
    "Eric": true,
    "Maeve": true,
    "Otis": false
]

let olympics = [
    2012: "London",
    2016: "Rio de Janeiro",
    2020: "Tokyo"
]

print(olympics[2012, default: "Unknown"])


var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216
heights["LeBron James"] = 206

var archEnemies = [String: String]()
archEnemies["Batman"] = "The Joker"
archEnemies["Superman"] = "Lex Luthor"
archEnemies["Batman"] = "Penguin"



// Fast data lookup
let actors = Set([
    "Denzel Washington",
    "Tom Cruise",
    "Nicolas Cage",
    "Samuel L. Jackson"
])
print(actors)
// Sets remove duplicates and don't remember order
// Good to use to keep unique names

var actors2 = Set<String>()
actors2.insert("Denzel Washington")
actors2.insert("Tom Cruise")
actors2.insert("Nicolas Cage")
actors2.insert("Samuel L. Jackson")
print(actors2)

actors2.insert("Tom Cruise")
print(actors2)




// Enums
var selected = "Monday"
selected = "Tuesday"
selected = "January" // Not convenient. Will the code handle it?
selected = "Friday " // Space included. Will the code handle it?

enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

var day = Weekday.monday
day = Weekday.tuesday
day = Weekday.friday
day = .thursday
day = .wednesday

enum WeekendDays {
    case saturday, sunday
}

