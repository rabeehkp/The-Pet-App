//
//  PetRowView.swift
//  ThePetApp
//
//  Created by rabeeh kp on 08/03/23.
//

import SwiftUI
import SDWebImageSwiftUI

struct PetRowView: View {
    let pet: Pets_List
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            ///loading image using image_url
            WebImage(url: URL(string: pet.image_url)!)
                .resizable()
                .cornerRadius(10)
                .frame(width: .none, height: 250)
                .padding(.vertical, 5)
            ///Navigation Link for navigate to details page
            NavigationLink(destination: PetDetailsView(url: URL(string: pet.content_url)!)) {
                VStack(alignment: .leading, spacing: 5) {
                    /// title for the card
                    Text(pet.title)
                        .fontWeight(.semibold)
                        .lineLimit(2)
                        .minimumScaleFactor(0.5)
                    /// created date for the content
                    Text("created : \(WorkingHourConfig_Model().convertStringToDate(dateString: pet.date_added, format: "yyyy-MM-dd HH:mm"))" )
                        .font(.subheadline)
                }
            }
            Spacer()

        }
    }
}

struct PetRowView_Previews: PreviewProvider {
    static var previews: some View {
        PetRowView(pet: PetsList_ViewModel().loadPets().first!)
    }
}
