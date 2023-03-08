//
//  ThePetAppTests.swift
//  ThePetAppTests
//
//  Created by rabeeh kp on 08/03/23.
//

import XCTest
@testable import ThePetApp
import SwiftUI
import UIKit
import Foundation

class ThePetAppTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    

    func testGetDateAndCheckItsWorkingHour() {
        let workingHourConfigModel = WorkingHourConfig_Model()
        let isWorkingHour = workingHourConfigModel.getDateAndCheckItsWorkingHour()
        XCTAssertTrue(isWorkingHour, "Not working during work hours")
    }
    
    func testPetList() {
        let contentView = ContentView()
        let pets = PetsList_ViewModel().loadPets()
        let petList = contentView.pets
        XCTAssertEqual(petList.count, pets.count)
    }
    
    func testPetRowView() {
        let petRowView = PetRowView(pet: PetsList_ViewModel().loadPets().first!)
        XCTAssertNotNil(petRowView)
    }
    
    func testPetListView() {
        let petListView = PetListView(pets: PetsList_ViewModel().loadPets())
        XCTAssertNotNil(petListView)
    }
    
    func testWorkingHourConfigModel() {
        let workingHourConfigModel = WorkingHourConfig_Model()
        let date = workingHourConfigModel.convertStringToDate(dateString: "2018-06-02T03:27:38.027Z", format: "yyyy-MM-dd HH:mm")
        XCTAssertEqual(date, "2018-06-02 03:27")
    }
    
}
