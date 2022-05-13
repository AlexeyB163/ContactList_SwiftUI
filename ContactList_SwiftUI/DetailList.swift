//
//  DetailList.swift
//  ContactList_SwiftUI
//
//  Created by User on 14.04.2022.
//

import SwiftUI

struct DetailList: View {
    
    let person: [Person]
    
    var body: some View {
        NavigationView {
            List(person) { person in
                Section {
                    HStack {
                        Image(systemName: "phone")
                        Text(person.phone)
                    }
                    HStack {
                        Image(systemName: "mail")
                        Text(person.eMail)
                    }
                } header: {
                    Text("\(person.firstName) \(person.lastName)")
                }
            }
            .navigationTitle("Contact LIst")
        }
    }
    
}

struct DetailList_Previews: PreviewProvider {
    static var previews: some View {
        DetailList(person: Person.getRandomDataUsers())
    }
}
