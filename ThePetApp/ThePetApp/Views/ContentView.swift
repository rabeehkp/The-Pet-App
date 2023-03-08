//
//  ContentView.swift
//  ThePetApp
//
//  Created by rabeeh kp on 08/03/23.
//

import SwiftUI

struct ContentView: View {
    let pets: [Pets_List] = PetsList_ViewModel().loadPets()
    var configModel = WorkingHourConfig_Model()
    @State private var showAlert = false
    
    var body: some View {
        let isWoringHour = configModel.getDateAndCheckItsWorkingHour()
        if isWoringHour {
            NavigationView {
                PetListView(pets: pets)
                    .navigationTitle("Pets")
            }
        }
        else {
            VStack {
                Text("Sorry, we're closed!")
                Button("Help") {
                    showAlert = true
                }
            }
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Help"), message: Text("The app is currently outside of work hours."), dismissButton: .default(Text("OK")))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
