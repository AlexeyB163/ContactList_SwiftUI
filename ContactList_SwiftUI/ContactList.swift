//
//  ContactList.swift
//  ContactList_SwiftUI
//
//  Created by User on 14.04.2022.
//

import SwiftUI

struct ContactList: View {
    
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List(persons) { person in
                    NavigationLink("\(person.firstName) \(person.lastName)") {
                        UserContact(person: person)
                    }
            }
            .navigationTitle("Contact List")
        }
    }
}

struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactList(persons: Person.getRandomDataUsers())
    }
}
