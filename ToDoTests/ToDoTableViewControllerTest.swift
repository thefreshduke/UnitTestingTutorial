//
//  ToDoTableViewControllerTest.swift
//  ToDo
//
//  Created by Scotty Shaw on 7/27/16.
//  Copyright © 2016 ___sks6___. All rights reserved.
//

import XCTest
@testable import ToDo

class ToDoTableViewControllerTest: XCTestCase {
    
    // sut: System Under Test
    var sut: ToDoTableViewController?
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        sut = storyboard.instantiateViewControllerWithIdentifier("ToDoTableViewController") as? ToDoTableViewController
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_addToDo_1() {
        let toDo = ToDo(title: "Make Unit Testing presentation")
        
        if let actualSUT = sut {
            actualSUT.addToDo(toDo)
            XCTAssertFalse(actualSUT.toDos.isEmpty)
        }
        else {
            XCTFail("no view controller available")
        }
    }
    
    func test_addToDo_2() {
        
        let expected = 1
        
        let toDo = ToDo(title: "Make Unit Testing presentation")
        
        if let actualSUT = sut {
            actualSUT.addToDo(toDo)
            XCTAssertEqual(expected, actualSUT.toDos.count)
        }
        else {
            XCTFail("no view controller available")
        }
    }
    
    func test_addToDo_3() {
        
        let title = "Make Unit Testing presentation"
        let expected = ToDo(title: title)
        
        let toDo = ToDo(title: title)
        
        if let actualSUT = sut {
            actualSUT.addToDo(toDo)
            let result = actualSUT.toDos.contains(expected)
            XCTAssert(result)
        }
        else {
            XCTFail("no view controller available")
        }
    }
}
