import UIKit

// Create an array of strings with some brands shown more than once
var cars: [String] = ["Audi", "Ford", "Dacia", "Skoda", "Volkswagen", "Skoda", "Ford"]

// Print the number of cars
print("The number of cars in the cars array is \(cars.count)")

// Create a set
var uniqueCars: Set<String> = ([
])

// Assign all the cars from cars array
uniqueCars = Set(cars)

// My solution using for loop
//for car in cars {
//    uniqueCars.insert(car)
//}

// Print the number of unique cars
print("The number of unique cars in the cars array is \(uniqueCars.count)")

