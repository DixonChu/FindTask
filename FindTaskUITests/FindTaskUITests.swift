//
//  FindTaskUITests.swift
//  FindTaskUITests
//
//  Created by Dixon Chu on 05/02/2022.
//

import XCTest
import SwiftUI

class FindTaskUITests: XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testIncorrectSignInAlert() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.textFields.element.tap()
        app.textFields.element.typeText("+447447782825")
        
        app.secureTextFields.element.tap()
        app.secureTextFields.element.typeText("Test121")
        
        let signin = app.buttons["Sign in"]
        signin.tap()
        
//        XCTAssert(app.alerts.element.waitForExistence(timeout: 0.5))
        
        app.alerts.element.buttons["OK"].tap()
        XCTAssertFalse(app.alerts.element.exists)
    }

    func testSignIn() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.textFields.element.tap()
        app.textFields.element.typeText("+447447782825")
        
        app.secureTextFields.element.tap()
        app.secureTextFields.element.typeText("Test123@1")
        
        let signin = app.buttons["Sign in"]
        signin.tap()
        
    }
    
    func testFailedSignInAlert() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.buttons["Sign in"].tap()
        
//        XCTAssert(app.alerts.element.waitForExistence(timeout: 0.5))
        
        app.alerts.element.buttons["OK"].tap()
        XCTAssertFalse(app.alerts.element.exists)
    }
    
    func testFailedSignUpAlert() throws {
        let app = XCUIApplication()
        app.launch()
        app.buttons["Don't have an account? Sign Up"].tap()
        app.buttons["Sign Up"].tap()

//        XCTAssert(app.alerts.element.waitForExistence(timeout: 0.5))

        app.alerts.element.buttons["OK"].tap()
        XCTAssertFalse(app.alerts.element.exists)

    }
    
    
    func testPostTask() throws {
        let app = XCUIApplication()
        let count = 1...20
        app.launch()
        
        for i in count{
            let textField = app.textFields["A headline for your task..."]
            textField.tap()
            textField.typeText("Headline \(i)")
            
            
            let address = app.textFields["Enter address or remote"]
            address.tap()
            address.typeText("Address \(i)")
            
            let price = app.textFields["5"]
            price.tap()
            price.typeText("6")
            
            let descrip = app.textViews["TextEditor"]
            descrip.tap()
            descrip.typeText("lorem ipsum blaa baldsw efwr2 g2gexdieo2 3f2 fif2 f23 f")
            
            let postbutton = app.buttons["Post Task"]
            postbutton.tap()
            
        }
    }
    
    //    func testLaunchPerformance() throws {
    //        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
    //            // This measures how long it takes to launch your application.
    //            measure(metrics: [XCTApplicationLaunchMetric()]) {
    //                XCUIApplication().launch()
    //            }
    //        }
    //    }
    

}


