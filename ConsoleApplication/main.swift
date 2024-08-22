//
//  main.swift
//  ConsoleApplication
//
//  Created by Miguel Agostinho on 21/08/2024.
//

import Foundation

func showMainMenu() {
    
    print("""
    1. Add Patient
    2. Remove Patient
    3. Show Triagge Queue
    4. Exit
    """)
    
}

func main() {
    
    let triaggeQueue = TriaggeQueue()
    
    var isRunning = true
    
    while isRunning {
        showMainMenu()
        
        if let choice = readLine(), let option = Int(choice){
            
            switch option{
                
            case 1:
                print("Enter Patient Name: ", terminator: "")
                let name = readLine() ?? "Unkown"
                print("Enter ID: ", terminator: "")
                let id = Int(readLine() ?? "0") ?? 0
                print("Enter Priority (1:5)", terminator: "")
                let priority = Int(readLine() ?? "0") ?? 0
                
                let patient = Patient(name: name, id: id, priority: priority)
                triaggeQueue.addPatient(patient)
            
            case 2:
                if let removedPatient = triaggeQueue.removePatient(){
                    print("Patient \(removedPatient.name) removed!")
                }
            case 3:
                triaggeQueue.showQueue()
                
            case 4:
                isRunning = false
                exit(1)
            default:
                print("Invalid Input, please try again!")
                
            }
            
            
        } else {
            print("Invalid Input, please try again!")
        }
            
        
    }
    
}




main()
