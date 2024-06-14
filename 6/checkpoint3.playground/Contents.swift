import UIKit

// Create a pleyground where you loop from 1 through 100
// If the number is a multiple of 3, print "Fizz"
// If the number is a multiple of 5, print "Buzz"
// If the number is a multiple of 3 and 5, print "FizzBuzz"
// Otherwise, just print the number.

for i in 1...100 {
    
    if i.isMultiple(of: 3) {
        if i.isMultiple(of: 5) {
            print("FizzBuzz")
            continue
        }
        print("Fizz")
        continue
    }
    
    if i.isMultiple(of: 5) {
        if i.isMultiple(of: 3) {
            print("FizzBuzz")
            continue
        }
        print("Buzz")
        continue
    }
    
    print(i)
}
