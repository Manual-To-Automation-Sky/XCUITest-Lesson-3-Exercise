//
//  AlertTests.swift
//  Lesson3_ExerciseUITests
//
//  Created by Gary Behan on 27/10/2022.
//

import XCTest

class AlertTests : BaseClassUI {
    func testAlert() throws {
        app.buttons["alert-btn-acc-id"].tap()
        
        XCTAssertEqual(app.alerts.element.label, "Alert Test")
        XCTAssert(app.alerts.element.staticTexts["This is a native alert"].exists)
        
        app.alerts.scrollViews.otherElements.buttons["OK"].tap()
    }
}
