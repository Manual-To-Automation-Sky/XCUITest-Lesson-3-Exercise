//
//  FormTests.swift
//  Lesson3_ExerciseUITests
//
//  Created by Gary Behan on 27/10/2022.
//

import XCTest

class FormTests : BaseClassUI {
    func testForm() throws {
        // Strings for the form data
        let firstName = "Gary"
        let lastName = "Behan"
        let emailAddress = "gary.b@browserstack.com"
        
        // Get and tap the Form button on the main page
        app.buttons["form-btn-acc-id"].tap()
        
        // Get the fields that we want to type text into
        let firstNameField = app.textFields["FirstNameField"]
        let lastNameField = app.textFields["LastNameField"]
        let emailAddressField = app.textFields["EmailAddressField"]
        
        // Tap and enter the relevant data into each field
        firstNameField.tap()
        firstNameField.typeText(firstName)
        lastNameField.tap()
        lastNameField.typeText(lastName)
        emailAddressField.tap()
        emailAddressField.typeText(emailAddress)
        
        // Tap the Submit button
        app.buttons["form-submit-btn-acc-id"].tap()
        
        // Assert that the name and email address have been populated correctly.
        XCTAssertTrue(app.staticTexts["EnteredNameLabel"].label.contains(firstName + " " + lastName))
        XCTAssertTrue(app.staticTexts["EnteredEmailLabel"].label.contains(emailAddress))
    }
}
