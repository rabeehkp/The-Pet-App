//
//  PetsList_ViewModel.swift
//  ThePetApp
//
//  Created by rabeeh kp on 08/03/23.
//

import UIKit

class PetsList_ViewModel: NSObject {
    func loadPets() -> [Pets_List] {
        var pets = [Pets_List]()
        guard let url = Bundle.main.url(forResource: "pets_list", withExtension: "json") else {
            fatalError("Missing pets_list.json file")
        }
        
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            let petData = try decoder.decode(PetData.self, from: data)
            pets = petData.pets
        } catch {
            fatalError("Unable to parse pets_list.json: \(error.localizedDescription)")
        }
        
        return pets
    }
}

struct Pets_List: Identifiable, Codable {
    let id: UUID
    let title: String
    let image_url: String
    let content_url: String
    let date_added: String

    enum CodingKeys: String, CodingKey {
        case title
        case image_url
        case content_url
        case date_added
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.id = UUID() // Set a default value for the id property
        
        do {
            self.title = try container.decode(String.self, forKey: .title)
            self.image_url = try container.decode(String.self, forKey: .image_url)
            self.content_url = try container.decode(String.self, forKey: .content_url)
            self.date_added = try container.decode(String.self, forKey: .date_added)
        } catch {
            fatalError("Unable to parse pets_list.json: \(error.localizedDescription)")
        }
    }
}

struct PetData: Codable {
    let pets: [Pets_List]
}
