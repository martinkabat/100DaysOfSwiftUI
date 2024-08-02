import UIKit

// Structs again

// Static properties
struct School {
    static var studentCount = 0
    
    static func add(student: String) {
        print("\(student) joined the school.")
        studentCount += 1
    }
}

School.add(student: "Jack Black")
print(School.studentCount)



struct AppData {
    static let version = "1.3 beta 2"
    static let saveFilename = "settings.json"
    static let homeURL = "https://www.hackingwithswift.com"
}

print(AppData.version)


struct Employee {
    let username: String
    let password: String
    
    static let example = Employee(username: "cfederighi", password: "h4airf0rce0ne")
}
