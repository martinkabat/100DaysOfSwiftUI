import UIKit

// Booleans
let goodDogs = true
let gameOver = false
let isMultiple = 120.isMultiple(of: 3)

var isAuthenticated = false
isAuthenticated = !isAuthenticated
print(isAuthenticated)
isAuthenticated = !isAuthenticated
print(isAuthenticated)
isAuthenticated = !isAuthenticated
print(isAuthenticated)


// String interpolation (substituting symbols (often multiple) for strings) - for example: "Hello, my name is \(name), I am \(age) yars old."
let people = "Haters"
let action = "hate"
let sentence = people + " gonna " + action + "."
print(sentence)

let luggageCode = "1" + "2" + "3" + "4" + "5"

let name = "Martin"
let age = 36
let message = "Hello, my name is \(name), I am \(age) yars old."

print("5*5 is \(5*5).")
