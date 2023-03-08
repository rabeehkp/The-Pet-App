//
//  ContentView_Model.swift
//  ThePetApp
//
//  Created by rabeeh kp on 08/03/23.
//

import Foundation
import SwiftUI
import UIKit

struct PetDetailsView: UIViewControllerRepresentable {
    typealias UIViewControllerType = ViewController
    var url: URL
    
    func makeUIViewController(context: Context) -> ViewController {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        guard let viewController = sb.instantiateViewController(identifier: "ViewController") as? ViewController else {
            return ViewController(url: URL(fileURLWithPath: ""))
        }
        viewController.url = self.url
        return viewController
    }
    
    func updateUIViewController(_ uiViewController: ViewController, context: Context) {
        
    }
}
