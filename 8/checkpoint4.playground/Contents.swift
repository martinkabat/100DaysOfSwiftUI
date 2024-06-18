import UIKit

// Write a function that accepts an integer from 1 through 10000 and returns the integer square root of that number
// 1. Without using sqrt() function or any other similar one
// 2. If entered number is below 1 or above 10000, you should throw "out of bounds" error
// 3. Only integer square roots should be considered.
// 4. If the square root cannot be found, throw a "no root" error

enum SquareRootErrors: Error {
    case outOfBounds, noRoot
}

func squareRoot(of number: Int) throws -> Int {
    if number < 1 || number > 10_000 { throw SquareRootErrors.outOfBounds}
        
    for i in 1...100 {
        if (i * i) == number {
            return i
        }
    }
    throw SquareRootErrors.outOfBounds
}

let toBeSquared: Int = 121

do {
    let result = try squareRoot(of: toBeSquared)
    print("Square root of \(toBeSquared) is \(result).")
} catch SquareRootErrors.outOfBounds {
    print("Entered number is out of bounds.")
} catch SquareRootErrors.noRoot {
    print("Entered number had not root found.")
} catch {
    print("An error occured: \(error.localizedDescription)")
}


