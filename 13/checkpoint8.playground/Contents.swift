import UIKit

// 1. make a protocol that describes a building
// 2. your protocol should require the following: a property storing how many rooms it has
// 3. a property storing the cost as an integer
// 4. a property storing the name of the estate agent selling the building
// 5. a method for printing the sales summary of the building
// 6. create two structs - House and Office - that conform to it

protocol Building {
    var numberOfRooms: Int { get }
    var cost: Int { get }
    var realEstateAgentName: String { get }
    
    func printSalesSummary()
}

struct House: Building {
    let numberOfRooms: Int
    let cost: Int
    let realEstateAgentName: String
    
    func printSalesSummary() {
print("""
Sales Summary - property type House
Real estate agent: \(realEstateAgentName)
Total cost: \(numberOfRooms*cost)

""")
    }
}


let house = House(numberOfRooms: 6, cost: 150, realEstateAgentName: "Martin Kabat")
house.printSalesSummary()

struct Office: Building {
    let numberOfRooms: Int
    let cost: Int
    let realEstateAgentName: String
    let cleaningCost: Int
    
    func printSalesSummary() {
print("""
Sales Summary - property type Office
Real estate agent: \(realEstateAgentName)
Total cost: \(numberOfRooms*cost + cleaningCost)

""")
    }
}

let office = Office(numberOfRooms: 22, cost: 95, realEstateAgentName: "Michael Scarn", cleaningCost: 250)
office.printSalesSummary()
