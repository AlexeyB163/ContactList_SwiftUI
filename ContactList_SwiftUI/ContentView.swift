//
//  ContentView.swift
//  ContactList_SwiftUI
//
//  Created by User on 14.04.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var contactsList = Person.getRandomDataUsers()
    
    var body: some View {
       
            TabView {
                ContactList(persons: contactsList)
                    .tabItem{
                        Image(systemName: "person.3")
                        Text("Contacts")
                    }
                DetailList(person: contactsList)
                    .tabItem{
                        Image(systemName: "phone")
                        Text("Numbers")
                    }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
