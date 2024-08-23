//
//  DoctorsDatabase.swift
//  ConsoleApplication
//
//  Created by Miguel Agostinho on 23/08/2024.
//

import Foundation

class DoctorsDatabase {
    
    let doctors = [
        Doctor(name: "Joe Ralph", id: 001, healthCategory: .SURGEON, currentState: .WORKING),
        Doctor(name: "Trevor Philips", id: 002, healthCategory: .PSHYCHIATRIST, currentState: .WORKING),
        Doctor(name: "Brad Giggs", id: 003, healthCategory: .AUXILIAR, currentState: .WORKING),
        Doctor(name: "Will Wallace", id: 004, healthCategory: .GENERAL, currentState: .HOLIDAYS)
    ]
    
    func addDoctor() {
        
    }
    
    func removeDoctor() {
        
    }
    
    func displayAllDoctors() {
        for doc in doctors {
            print("Doctor: \(doc.name)[ID:\(doc.id)] Spec: \(doc.healthCategory)!")
        }
    }
    
    func displayCurrentState(_ currentState: CurrentState){
        var found: Int = 0
        for doc in doctors {
            if(doc.currentState == currentState){
                found += 1
                print("Doctor: \(doc.name) is currently \(currentState) and specialises on: \(doc.healthCategory)!")
            }
        }
        if(found == 0){
            print("There are no \(currentState) doctors at the moment!")
        }
        
        
    }
    
    
    
}
