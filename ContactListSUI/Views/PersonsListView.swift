//
//  MainContactView.swift
//  ContactListSUI
//
//  Created by Alexander Grishin on 24.12.2022.
//

import SwiftUI

struct PersonsListView: View {
    let contacts: [Person]
    
    var body: some View {
        NavigationStack {
            List(contacts, id: \.self) { person in
                NavigationLink(
                    person.fullName,
                    destination: PersonsInfoView(person: person)
                )
            }
        }
    }
}

struct MainContactView_Previews: PreviewProvider {
    static var previews: some View {
        PersonsListView(contacts: Person.getPersonList())
    }
}
