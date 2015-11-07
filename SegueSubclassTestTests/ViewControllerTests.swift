//
//  ViewControllerTests.swift
//  SegueSubclassTest
//
//  Created by BJ Miller on 11/7/15.
//  Copyright © 2015 Six Five Software, LLC. All rights reserved.
//

import XCTest
@testable import SegueSubclassTest

class ViewControllerTests: XCTestCase {
    
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    var sut: ViewController!
    
    override func setUp() {
        super.setUp()

        sut = storyboard.instantiateViewControllerWithIdentifier("ViewController") as! ViewController
        _ = sut.view
    }
    
    func testTableViewShouldBeConnected() {
        XCTAssertNotNil(sut.tableView)
    }
    
    func testSutTableViewAndDelegateAndDatasourceIsViewController() {
        XCTAssertTrue(sut.tableView.delegate === sut)
        XCTAssertTrue(sut.tableView.dataSource === sut)
    }
    
    func testPersonArray() {
        XCTAssertTrue(sut.personArray.isEmpty)
    }
    
    func testAddingPeople() {
        let person1 = Person(firstName: "Buzz", lastName: "Aldrin")
        let person2 = Person(firstName: "Dr", lastName: "Dre")
        let person3 = Person(firstName: "Hans", lastName: "Nipplechips")
        
        let expectedCount = 3
        
        sut.personArray = [person1, person2, person3]
        
        XCTAssertEqual(sut.personArray.count, expectedCount)
    }
    
}
