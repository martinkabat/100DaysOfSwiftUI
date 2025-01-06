//
//  ContentView.swift
//  WeSplit
//
//  Created by Martin Kabát on 07.11.2024.
//

import SwiftUI

struct ContentView: View {
//    @State private var tapCount = 0
//    @State private var name = ""
    let students = ["Jim", "Pam", "Dwight", "Michael"]
    @State private var selectedStudent = "Jim"
    
    
    var body: some View {
        
        Form {
            Picker("Select your student", selection: $selectedStudent) {
                ForEach(students, id: \.self) {
                    Text($0)
                }
            }
            
//            ForEach(0..<100) { number in
//                Text("Row \(number)")
//            }
            
//            ForEach(0..<100) {
//                Text("Row \($number)")
//            }
        }
        
//        Form {
//            TextField("Enter your name", text: $name)
//            Text("Your name is \(name)!")
//        }
        
//
//        Button("Tap Count : \(tapCount)") {
//            tapCount += 1
//        }
        
//        NavigationStack {
//            Form {
//                Section {
//                    Text("Hello, World!")
//                }
//                
//                Section {
//                    Text("Hello, World!")
//                    Text("Hello, World!")
//                    Text("Hello, World!")
//                }
//                
//                Section {
//                    Text("Hello, World!")
//                    Text("Hello, World!")
//                    Text("Hello, World!")
//                    Text("Hello, World!")
//                    Text("Hello, World!")
//                    Text("Hello, World!")
//                    Text("Hello, World!")
//                    Text("Hello, World!")
//                }
//                
//            }
//            .navigationTitle("SwiftUI")
//            .navigationBarTitleDisplayMode(.inline)
//        }
    }
}

#Preview {
    ContentView()
}
