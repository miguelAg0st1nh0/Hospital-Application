//
//  Patient.swift
//  ConsoleApplication
//
//  Created by Miguel Agostinho on 22/08/2024.
//

import Foundation

class Patient : Person {
    
    var priority: Int
    
    init(name: String, id: Int, priority: Int) {
        self.priority = priority
        super.init(name: name, id: id)
    }
    
    override func details() -> String {
        return "Patient Name: \(name), Patient ID: \(id), Priority: \(priority)"
    }
    
}
