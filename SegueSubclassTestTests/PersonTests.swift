//
//  PersonTests.swift
//  SegueSubclassTest
//
//  Created by BJ Miller on 11/7/15.
//  Copyright © 2015 Six Five Software, LLC. All rights reserved.
//

import XCTest
@testable import SegueSubclassTest

class PersonTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    
    func testPersonHasFirstName() {
        let expected = "Pete"
        let person = Person(firstName: expected, lastName: "Jones")
        let actual = person.firstName
        XCTAssertEqual(actual, expected)
    }
    
    func testPersonHasLastName() {
        let expected = "Jones"
        let person = Person(firstName: "Pete", lastName: expected)
        let actual = person.lastName
        XCTAssertEqual(actual, expected)
    }
    
    
}
