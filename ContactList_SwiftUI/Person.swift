//
//  Person.swift
//  ContactList_SwiftUI
//
//  Created by Person on 14.04.2022.
//

import Foundation

struct Person: Identifiable {
    var id = UUID()

    let firstName: String
    let lastName: String
    let phone: String
    let eMail: String
}

extension Person {
    
    static func getRandomDataUsers () -> [Person] {
        
        var persons:[Person] = []
        
        let firstNames = DataManager.shared.firstName.shuffled()
        let lastNames = DataManager.shared.lastName.shuffled()
        let phone = DataManager.shared.phone.shuffled()
        let email = DataManager.shared.eMail.shuffled()
        
        let iterationCount = min(firstNames.count,lastNames.count, phone.count, email.count)
        
        for index in 0..<iterationCount {
            let person = (
                Person(
                    firstName: firstNames[index],
                    lastName: lastNames[index],
                    phone: phone[index],
                    eMail: email[index])
            )
            persons.append(person)
        }
        return persons
    }
}

