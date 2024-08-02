import UIKit

// Checkpoint 6

// 1. create a struct about a car. Include:
// 2. it's model
// 3. number of seats
// 4. current gear
// 5. add method to change gears up and down
// 6. have a think about variables and access control
// 7. don't allow invalid gears (1...10 seems a fair maximum range.

struct Car {
    let model: String
    let numberOfSeats: Int
    private(set) var currentGear: Int
    
    func canIGear(to gear: Int) -> Bool {
        print("Gear to be changed to: \(gear)")
        if gear > 10 || gear < 1 {
            return false
        } else {
            return true
        }
    }
    
    mutating func gearUp() {
        if canIGear(to: (currentGear+1)) {
            self.currentGear += 1
        } else {
            print("Cannot change gear to anything higher than 10.")
            return
        }
        print("Current gear is \(currentGear).")
    }
    
    mutating func gearDown() {
        if canIGear(to: (currentGear-1)) {
            self.currentGear -= 1
        } else {
            print("Cannot change gear to anything lower than 1.")
            return
        }
        print("Current gear is \(currentGear).")
    }
}

var focus = Car(model: "2014 MK3 Turnier", numberOfSeats: 5, currentGear: 7)
focus.gearUp()
focus.gearUp()
focus.gearUp()
focus.gearUp()
focus.gearDown()
focus.gearDown()
focus.gearDown()
focus.gearDown()
focus.gearDown()
focus.gearDown()
focus.gearDown()
focus.gearDown()
focus.gearDown()
focus.gearDown()
