//
//  LoginTest.swift
//  Lesson3_ExerciseUITests
//
//  Created by Gary Behan on 27/10/2022.
//

import XCTest

class LoginTests : BaseClassUI {
    func testSuccessLogin() throws {
        let username = "correct"
        let password = "please"
        
        app.buttons["login-btn-acc-id"].tap()
        
        let usernameField = app.textFields["UsernameField"]
        usernameField.tap()
        usernameField.typeText(username)
        
        let passwordField = app.secureTextFields["PasswordField"]
        passwordField.tap()
        passwordField.typeText(password)
        
        app.buttons["LoginButton"].tap()
    }

    func testFailedLogin() throws {
        let username = "incorrect"
        let password = "please"
        
        app.buttons["login-btn-acc-id"].tap()
        
        let usernameField = app.textFields["UsernameField"]
        usernameField.tap()
        usernameField.typeText(username)
        
        let passwordField = app.secureTextFields["PasswordField"]
        passwordField.tap()
        passwordField.typeText(password)
        
        app.buttons["LoginButton"].tap()
    }
}
