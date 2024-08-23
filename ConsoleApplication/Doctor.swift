//
//  Doctor.swift
//  ConsoleApplication
//
//  Created by Miguel Agostinho on 23/08/2024.
//

import Foundation

enum HealthCategory {
    
    case SURGEON
    case PSHYCHIATRIST
    case AUXILIAR
    case GENERAL
    
}

enum CurrentState {
    
    case WORKING
    case HOLIDAYS
    case OFFHOURS
    case AVAILABLE
    
}

class Doctor : Person {
    
    var healthCategory: HealthCategory
    var currentState: CurrentState
    
    init(name: String, id: Int, healthCategory: HealthCategory, currentState: CurrentState) {
        self.healthCategory = healthCategory
        self.currentState = currentState
        super.init(name: name, id: id)
    }
    
    override func details() -> String {
       return "Doctor: \(name), ID: \(id), Specialization: \(healthCategory)"
    }
    
}
