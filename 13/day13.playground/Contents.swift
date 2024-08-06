import UIKit

protocol View { }

// Protocols

//func commute(distance: Int, using vehicle: Whatever) {
//    // lots of code here
//}

protocol Vehicle {
    var name: String { get }
    var currentPassengers: Int { get set }
    func estimateTime(for Distance: Int) -> Int
    func travel(distance: Int)
}

struct Car: Vehicle {
    let name = "Car"
    var currentPassengers = 1
    
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }
    
    func travel(distance: Int) {
        print("I'm driving \(distance)km")
    }
    
    func openSunroof() {
        print("It's a nice day!")
    }
}

struct Bicycle: Vehicle {
    let name = "Bicycle"
    var currentPassengers = 1
    
    func estimateTime(for distance: Int) -> Int {
        distance / 10
    }
    
    func travel(distance: Int) {
        print("I'm cycling \(distance)km")
    }
}

func commute(distance: Int, using vehicle: Vehicle) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("That's too slow! I'll try a different vehicle.")
    } else {
        vehicle.travel(distance: distance)
    }
}

func getTravelEstimates(using vehicles: [Vehicle], distance: Int) {
    for vehicle in vehicles {
        let estimate = vehicle.estimateTime(for: distance)
        print("\(vehicle.name): \(estimate) hours to travel \(distance)km")
    }
}

let car = Car()
commute(distance: 100, using: car)

let bike = Bicycle()
commute(distance: 30, using: bike)

getTravelEstimates(using: [car, bike], distance: 150)



// Using opaque return types
func getRandomNumber() -> some Equatable {
    Double.random(in: 1...6)
}

func getRandomBool() -> some Equatable {
    Bool.random()
}

print(getRandomNumber() == getRandomNumber())

let num = getRandomNumber()



// Extensions

var quote = "  This is a text.   "
let trimmed = quote.trimmingCharacters(in: .whitespacesAndNewlines)
print(trimmed)

extension String {
    
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    mutating func trim() {
        self = self.trimmed()
    }
    
    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
}

print(quote.trim())

let lyrics = """
I don't know why I keep moving my body
I don't know if this is wrong or if it's right
I don't know if there's a beat, or something's taking over me
And I just know I'll feel so good tonight
"""

print(lyrics.lines.count)

struct Book {
    let title: String
    let pageCount: Int
    let readingHours: Int
}

extension Book {
    
    init(title: String, pageCount: Int) {
        self.title = title
        self.pageCount = pageCount
        self.readingHours = pageCount/50
    }
}

let lotr = Book(title: "Lord of the Rings", pageCount: 1178)
let fotr = Book(title: "Fight of the Romans", pageCount: 476, readingHours: 11)



// Protocol extensions
extension Collection {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}

let guests = ["Mario", "Luigi", "Peach"]

if guests.isNotEmpty {
    print("Guest count: \(guests.count)")
}

protocol Person {
    var name: String { get }
    func sayHello()
}

extension Person {
    func sayHello(){
       print("Hi, I'm \(name)")
    }
}

struct Employee: Person {
    let name: String
}

let gandalf = Employee(name: "Gandalf Gray")
gandalf.sayHello()
