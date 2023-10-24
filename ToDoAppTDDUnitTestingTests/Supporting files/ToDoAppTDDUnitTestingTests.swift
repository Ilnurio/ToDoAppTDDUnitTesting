//
//  ToDoAppTDDUnitTestingTests.swift
//  ToDoAppTDDUnitTestingTests
//
//  Created by Ilnur on 22.09.2023.
//

import XCTest
@testable import ToDoAppTDDUnitTesting

final class ToDoAppTDDUnitTestingTests: XCTestCase {

    override func setUpWithError() throws {
        
    }

    override func tearDownWithError() throws {
        
    }
    
    func testInitialViewControllerIsTaskListViewController() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let navigationController = storyboard.instantiateInitialViewController() as! UINavigationController
        let rootViewController = navigationController.viewControllers.first as! TaskListViewController
        
        XCTAssertTrue(rootViewController is TaskListViewController)
    }
    
    
}
