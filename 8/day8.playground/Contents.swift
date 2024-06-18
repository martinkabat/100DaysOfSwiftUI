import UIKit

// Default values to parameters in functions
func printTimesTables(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is \(i*number)")
    }
}

printTimesTables(for: 5)
printTimesTables(for: 5, end: 20)


var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)
characters.removeAll(keepingCapacity: true) //can remain expecting the same amount of data to be set in the array again. Thus keeping the capacity.0
print(characters.count)



// Handling errors in functions

enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 { throw PasswordError.short}
    if password == "12345" { throw PasswordError.obvious}
    
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

let string = "12345"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch {
    print("There was an error.")
}

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Password is too short.")
} catch PasswordError.obvious {
    print("Password is too obvious.")
} catch {
    print("There was an error: \(error.localizedDescription)")
}
