//
//  SwitchesTests.swift
//  Lesson3_ExerciseUITests
//
//  Created by Gary Behan on 27/10/2022.
//

import XCTest

class SwitchesTests : BaseClassUI {
    func testSwitchNumberOne() throws {
        app.buttons["switches-btn-acc-id"].tap()
        
        // Assert that the label is set to Off
        XCTAssertTrue(app.staticTexts["switchOneLabel"].label.contains("Off"))
        
        // Assert that the switche is currently in the off position
        XCTAssert((app.switches["switchOne"].value as? String) == "0")
        
        // Tap the switch to turn it on
        app.switches["switchOne"].tap()
        
        // Assert that the label is now set to on
        XCTAssertTrue(app.staticTexts["switchOneLabel"].label.contains("On"))
        
        // Assert that the switch is now in the On position
        XCTAssert((app.switches["switchOne"].value as? String) == "1")
    }
    
    func testSwitchNumberTwo() throws {
        app.buttons["switches-btn-acc-id"].tap()
        
        // Assert that the label is set to Off
        XCTAssertTrue(app.staticTexts["switchTwoLabel"].label.contains("Off"))
        
        // Assert that the switche is currently in the off position
        XCTAssert((app.switches["switchTwo"].value as? String) == "0")
        
        // Tap the switch to turn it on
        app.switches["switchTwo"].tap()
        
        // Assert that the label is now set to on
        XCTAssertTrue(app.staticTexts["switchTwoLabel"].label.contains("On"))
        
        // Assert that the switch is now in the On position
        XCTAssert((app.switches["switchTwo"].value as? String) == "1")
    }
    
    func testSwitchNumberThree() throws {
        app.buttons["switches-btn-acc-id"].tap()
        
        // Assert that the label is set to Off
        XCTAssertTrue(app.staticTexts["switchThreeLabel"].label.contains("Off"))
        
        // Assert that the switche is currently in the off position
        XCTAssert((app.switches["switchThree"].value as? String) == "0")
        
        // Tap the switch to turn it on
        app.switches["switchThree"].tap()
        
        // Assert that the label is now set to on
        XCTAssertTrue(app.staticTexts["switchThreeLabel"].label.contains("On"))
        
        // Assert that the switch is now in the On position
        XCTAssert((app.switches["switchThree"].value as? String) == "1")
    }
    
    func testSwitchNumberFour() throws {
        app.buttons["switches-btn-acc-id"].tap()
        
        // Assert that the label is set to Off
        XCTAssertTrue(app.staticTexts["switchFourLabel"].label.contains("Off"))
        
        // Assert that the switche is currently in the off position
        XCTAssert((app.switches["switchFour"].value as? String) == "0")
        
        // Tap the switch to turn it on
        app.switches["switchFour"].tap()
        
        // Assert that the label is now set to on
        XCTAssertTrue(app.staticTexts["switchFourLabel"].label.contains("On"))
        
        // Assert that the switch is now in the On position
        XCTAssert((app.switches["switchFour"].value as? String) == "1")
    }
    
    func testSwitchNumberFive() throws {
        app.buttons["switches-btn-acc-id"].tap()
        
        // Assert that the label is set to Off
        XCTAssertTrue(app.staticTexts["switchFiveLabel"].label.contains("Off"))
        
        // Assert that the switche is currently in the off position
        XCTAssert((app.switches["switchFive"].value as? String) == "0")
        
        // Tap the switch to turn it on
        app.switches["switchFive"].tap()
        
        // Assert that the label is now set to on
        XCTAssertTrue(app.staticTexts["switchFiveLabel"].label.contains("On"))
        
        // Assert that the switch is now in the On position
        XCTAssert((app.switches["switchFive"].value as? String) == "1")
    }
}
