import UIKit

// Switch statements

enum Forecast{
    case sun, rain, wind, snow, unknown
}
let forecast = Forecast.rain

switch forecast {
case .sun:
    print("It should be a nice day.")
case .rain:
    print("Pack an umbrella.")
case .wind:
    print("Wear something warm.")
case .snow:
    print("School is cancelled.")
case .unknown:
    print("Our forecast generator is broken!")
}

let place = "Metropolis"

switch place {
case "Gotham":
    print("You're Batman!")
case "Mega-City One":
    print("You're Judge Dredd!")
case "Wakanda":
    print("You're Black Panther!")
default:
    print("Who are you?")
}

let day = 5
print("My true love gave to me...")

switch day {
case 5:
    print("5 golden rings")
    fallthrough // it will proceed to a following case
case 4:
    print("4 callings birds")
    fallthrough
case 3:
    print("3 French hens")
    fallthrough
case 2:
    print("2 trurtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}


// Ternary conditional operator
let age = 18
let canVote = age >= 18 ? "Yes" : "No"
print("Can vote? \(canVote).")

let hour = 23
print(hour < 12 ? "It's before noon" : "It's after noon")

let names = ["Jane", "Kylie", "Mal"]
let crewCount = names.isEmpty ? "No one" : "\(names.count) people"
print(crewCount)


enum Theme {
    case white, dark
}
let theme = Theme.dark

let background = theme == .dark ? "black": "white"
print(background)
