//
//  PetListView.swift
//  ThePetApp
//
//  Created by rabeeh kp on 08/03/23.
//

import SwiftUI

struct PetListView: View {
    let pets: [Pets_List]
    
    var body: some View {
        List(pets) { pet in
            Section {
                PetRowView(pet: pet)
            }
        }
    }
}

struct PetListView_Previews: PreviewProvider {
    static var previews: some View {
        PetListView(pets: PetsList_ViewModel().loadPets())
    }
}
