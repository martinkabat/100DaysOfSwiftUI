import UIKit

// Classes

class Game {
    var score = 0 {
        didSet {
            print("Score is now \(score).")
        }
    }
}

var newGame = Game()
newGame.score += 10



// Inheritance

class Employee {
    let hours: Int
    
    init(hours: Int) {
        self.hours = hours
    }
    
    func printSummary() {
        print("I work \(hours) hours a day.")
    }
}

// final - no other class can inherit from Developer class
final class Developer: Employee {
    func work() {
        print("I'm writing code for \(hours) hours.")
    }
    
    override func printSummary() {
        print("I'm a developer who will work sometimes \(hours) hours a day, but other times I will persuade others to use tabs instead of spaces.")
    }
}

final class Manager: Employee {
    func work() {
        print("I'm attending meetings for \(hours) hours.")
    }
}

let robert = Developer(hours: 8)
let joseph = Manager(hours: 10)

robert.work()
joseph.work()

robert.printSummary()
joseph.printSummary()



// Adding initializers for classes

class Vehicle {
    let isElectric: Bool
    
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible: Bool
    
    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}

let teslaX = Car(isElectric: true, isConvertible: false)



// Copying classes

class User {
    var username = "Anonymous"
    
    func copy() -> User {
        let user = User()
        user.username = username
        return user
    }
}

var user1 = User()
var user2 = user1.copy()
user2.username = "Michael"

print(user1.username)
print(user2.username)

// structs don't share data, classes do
// hence the name change for both users if we assing user1 to user2



// Creating a deinitializer for a class

class Usher {
    let id: Int
    
    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }
    
    deinit {
        print("User \(id): I'm dead!")
    }
}

for i in 1...3 {
    let user = Usher(id: i)
    print("User \(user.id): I'm in control!")
}
var users = [Usher]()

for y in 1...3 {
    let user = Usher(id: y)
    print("User \(user.id): I'm in control!")
    users.append(user)
}

print("Look is finished!")
users.removeAll()
print("Array is clear!")


// Working with variables inside classes

class Uzivatel {
    var jmeno = "Jim"
}

let uzivatel = Uzivatel()
uzivatel.jmeno = "Pam"
print(uzivatel.jmeno)



class Usuario {
    var nome = "Eddy"
}

var usuario = Usuario()
usuario.nome = "Vikram"
usuario = Usuario()
print(usuario.nome)
