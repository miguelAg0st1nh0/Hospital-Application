//
//  Person.swift
//  ConsoleApplication
//
//  Created by Miguel Agostinho on 22/08/2024.
//

import Foundation


class Person {
    var name: String
    var id: Int
    
    init(name: String, id: Int){
        self.name = name
        self.id = id
    }
    
    func details() -> String {
        return "Name: \(self.name), ID: \(self.id)"
    }
}
