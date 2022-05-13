//
//  UserContact.swift
//  ContactList_SwiftUI
//
//  Created by User on 14.04.2022.
//

import SwiftUI

struct UserContact: View {
    
    let person: Person
    
    var body: some View {
        List{
                Image(systemName: "person")
                    .resizable()
                    .frame(width: 120, height: 120)
                    .alignmentGuide(HorizontalAlignment.center) { _ in  60 }
                    
            HStack {
                    Image(systemName: "phone")
                    Text(person.phone)
                }
            
                HStack {
                    Image(systemName: "mail")
                    Text(person.eMail)
                }
        }
        .navigationTitle(Text("\(person.firstName) \(person.lastName)"))
        
    }
}

struct UserContact_Previews: PreviewProvider {
    static var previews: some View {
        UserContact(person: Person.getRandomDataUsers().first!)
    }
}
