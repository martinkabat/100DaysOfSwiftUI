import UIKit

// Type annotations
let playerName: String = "Roy"
let luckyNumber: Int = 13
let pi: Double = 3.14
let isAuthenticated: Bool = true

// Complex types
var albums: [String] = ["Red", "Fearless"]
var user: [String: String] = ["id": "@martinkabat"]
var books: Set<String> = Set([
    "The Bluest Eye",
    "Foundation",
    "Girl, Woman, Other"
])

var soda: [String] = ["Coke", "Pepsi", "Irn-Bru"]
var teams: [String] = [String]() // empty array
var cities: [String] = [] // also empty array
var clues = [String]() // again, an empty array

enum UIStyle {
    case light, dark, system
}

var style = UIStyle.light
style = .dark



let username: String
// lots of code
username = "@martinkabat"
//username = "reassign" // cannot be done
// lots more code
print(username)

//let scores: Int = "Zero" // cannot be done
