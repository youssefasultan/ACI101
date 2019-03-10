//
//  MinutesTests.swift
//  MinutesTests
//
//  Created by youssef  sultan on 3/10/19.
//  Copyright © 2019 Microsoft. All rights reserved.
//

import XCTest
@testable import Minutes

class MinutesTests: XCTestCase {
    
    var entryUnderTest : Entry!

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
        entryUnderTest = Entry("title","Content")
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        entryUnderTest = nil
        super.tearDown()
    }
    func testSerialization() {
        let serializedData = FileEntryStore.serialize(entryUnderTest)
        let entry = FileEntryStore.deserialize(serializedData!)
        XCTAssertEqual(entry?.title, "title","title does not match")
        XCTAssertEqual(entry?.content, "Content","content does not match")
    }
 

}
