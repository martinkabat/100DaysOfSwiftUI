import UIKit

//Checkpoint 5
let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

// 1. filter out all the even numbers
let luckyEvenNumbers = luckyNumbers.filter{ $0%2==0 }
print(luckyEvenNumbers)

// 2. sort the array in ascending order
let luckyEvenNumbersSortedAsc = luckyEvenNumbers.sorted{ $0<$1 }
print(luckyEvenNumbersSortedAsc)

// 3. map them to string in the format "7 is a lucky number"
let luckyEvenStrings = luckyEvenNumbersSortedAsc.map{ "\($0) is a lucky number"}

// 4. print the result array, one item per line
for luckyString in luckyEvenStrings {
    print(luckyString)
}
