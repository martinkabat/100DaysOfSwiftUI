import UIKit

// Checkpoint 9

// 1. write a function that accepts optional array of integers and return one of those integers randomly
// 2. if the array is missing or empty, return a new random number in the range of 1 through 100
// 3. this function should be written in a single line of code

func getMeOneOfThoseFrom(theArray array: [Int]?) -> Int {
    array?.randomElement() ?? Int.random(in: 1...100)
}

let testing = getMeOneOfThoseFrom(theArray: nil)
print(testing)

let testing2 = getMeOneOfThoseFrom(theArray: [1,3,5,7,9])
print(testing2)
