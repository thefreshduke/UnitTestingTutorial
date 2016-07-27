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
        sut = storyboard.instantiateViewControllerWithIdentifier("ToDoTableViewController") as! ToDoTableViewController
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_addToDo() {
        let toDo = ToDo(title: "Make Unit Testing presentation")
        if let actualSUT = sut {
//            actualSUT.
        }
        else {
            XCTFail("no view controller available")
        }
    }
}
