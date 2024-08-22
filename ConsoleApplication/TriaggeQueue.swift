//
//  TriaggeQueue.swift
//  ConsoleApplication
//
//  Created by Miguel Agostinho on 22/08/2024.
//

import Foundation


class TriaggeQueue {
    private var queue: [Patient] = []
    
    func addPatient(_  patient: Patient){
        queue.append(patient)
        print("Patient Added: \(patient.name). Has a priority of: \(patient.priority)")
    }
    
    func removePatient() -> Patient? {
        if(!queue.isEmpty){
            return queue.removeFirst()
        } else {
            print("There are no Patients in the queue!")
            return nil
        }
    }
    
    func showQueue() {
        if(!queue.isEmpty){
            for patient in queue {
                print("Patient Details: \(patient.details())")
            }
        } else {
            print("No Patients in the Queue!")
        }
    }
}
