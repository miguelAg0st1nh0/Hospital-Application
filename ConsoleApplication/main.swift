//
//  main.swift
//  ConsoleApplication
//
//  Created by Miguel Agostinho on 21/08/2024.
//

import Foundation

func showMainMenu() {
    
    print("""
    Main Menu
    
    1. Manage Patients
    2. Manage Doctors
    3. Exit
    """)
    
}

func showPatientsMenu() {
    print("""
    
    1. Add Patient
    2. Remove Patient
    3. Display All Patients
    4. Return to Main Menu
    """)
    
}

func showDoctorsMenu() {
    print("""
    
    1. Add Doctor
    2. Remove Doctor
    3. Display All Doctors
    4. Display Available Doctors
    5. Display Working Doctors
    6. Display Doctors on Holidays
    7. Return to Main Menu
    """)
}

func manageMainMenu() {
    
    var continueMainMenu = true
    
    while continueMainMenu {
        
        showMainMenu()
        
        print("> ", terminator: "")
        if let choice = readLine(), let option = Int(choice){
            
            switch option {
                
            case 1:
                continueMainMenu = false
                managePatientsMenu()
            case 2:
                continueMainMenu = false
                manageDoctorsMenu()
            case 3:
                exit(0)
            default:
                print("Invalid Input, please try again!")
            }
            
        } else {
            print("Invalid Input, please try again!")
        }
        
    }
    
}


func managePatientsMenu() {
    
    let triaggeQueue = TriaggeQueue()
    var continuePatientsMenu = true
    
    while continuePatientsMenu {
        showPatientsMenu()
        
        print("> ", terminator: "")
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
                continuePatientsMenu = false
                manageMainMenu()
            default:
                print("Invalid Input, please try again!")
                
            }
            
        } else {
            print("Invalid Input, please try again!")
        }
        
    }
    
}


func manageDoctorsMenu() {
    
    let doctorsDatabase = DoctorsDatabase()
    
    var continueDoctorsMenu = true
    
    while continueDoctorsMenu {
        
        showDoctorsMenu()
        
        print("> ", terminator: "")
        if let choice = readLine(), let option = Int(choice){
            
            switch option {
                
            case 1:
                doctorsDatabase.addDoctor()
            case 2:
                doctorsDatabase.removeDoctor()
            //Get all doctors
            case 3:
                doctorsDatabase.displayAllDoctors()
            //Get Available Doctors
            case 4:
                doctorsDatabase.displayCurrentState(.AVAILABLE)
            //Get Working Doctors
            case 5:
                doctorsDatabase.displayCurrentState(.WORKING)
            //Get Doctors on Holidays
            case 6:
                doctorsDatabase.displayCurrentState(.HOLIDAYS)
            case 7:
                continueDoctorsMenu = false
                manageMainMenu()
            default:
                print("Invalid Input, please try again!")
                
            }
            
        } else {
            
            print("Invalid Input, Please try again!")
        }
        
    }
    
}


func main() {
    
    manageMainMenu()
    
}

main()
