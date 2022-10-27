//
//  TextFieldTests.swift
//  Lesson3_ExerciseUITests
//
//  Created by Gary Behan on 27/10/2022.
//

import XCTest

class TextFieldTests : BaseClassUI {
    func testTextField() throws {
        // The text that will be typed into the text field and then output to the label
        let textToEnter = "Sky App Training"
        
        // Get and tap the Text Field button on the main page
        app.buttons["txt-field-btn-acc-id"].tap()
        
        // Tap and enter text into the text field.
        let textField = app.textFields["TextField"]
        textField.tap()
        textField.typeText(textToEnter)
        
        // Assert that the label under the text field has been populated with the text we entered
        XCTAssertEqual(app.staticTexts["SubmittedTextLabel"].label, textToEnter)
    }
}
