//
//  EarlGreyBrownBagExampleTests.swift
//  EarlGreyBrownBagExampleTests
//
//  Created by Bart Chrzaszcz on 3/6/18.
//  Copyright © 2018 Bart Chrzaszcz. All rights reserved.
//

import XCTest
import UIKit
import EarlGrey
@testable import EarlGreyBrownBagExample

class EarlGreyBrownBagExampleTests: XCTestCase {

    private let assertionBlocks = EarlGreyCustomAssertionBlocks.shared
    var vc = ViewController.getStoryboardInstance()

    private func displayVC() {
        vc = ViewController.getStoryboardInstance()
        let navController = UINavigationController(rootViewController: vc)
        navController.isNavigationBarHidden = true

        // Make it the root view controller
        UIApplication.shared.keyWindow!.rootViewController = navController

        // Call the VC life cycle methods
        let _ = navController.view
        let _ = vc.view
    }
    
    override func setUp() {
        super.setUp()

        displayVC()
    }

    /// Tests whether the label at the top says the right thing
    func testLabel() {
        EarlGrey.select(elementWithMatcher: grey_accessibilityID("Label"))
            .assert(grey_sufficientlyVisible()) // make sure I can see the label
            .assert(assertionBlocks.UILabelTextEqual(expectedString: "Verify that I say the right thing"))
    }

    /// Tests whether we can edit the text in the text view
    func testTextView() {
        EarlGrey.select(elementWithMatcher: grey_accessibilityID("Text View"))
            .perform(grey_scrollInDirection(.down, 50))
            .perform(grey_scrollInDirection(.up, 50))
            .perform(grey_clearText())
            // NOTE: Earl Grey recognizes special characters like \n!
            .perform(grey_typeText("Hey hello how's it going. 1234567890\n\n\n\nZ\n\n\n\nZ\n\n\n\n!@#$%^&*()\n"))
    }

    /// Tests whether the disabled button is disabled
    func testDisabledButton() {
        EarlGrey.select(elementWithMatcher: grey_accessibilityID("Can't Click Button"))
            .assert(assertionBlocks.UIButtonIsDisabled())
    }

    /// Tests whether the slider will affect the progress bar
    func testSlider() {
        EarlGrey.select(elementWithMatcher: grey_accessibilityID("Slider"))
            .perform(grey_moveSliderToValue(1.0))
            .perform(grey_moveSliderToValue(0.0))
            .perform(grey_moveSliderToValue(0.5))
            .perform(grey_moveSliderToValue(0.75))
            .perform(grey_moveSliderToValue(0.25))

        GREYAssertTrue(vc.progressView.progress == 0.25, reason: "Want to make sure the value of the progress bar is attached to the slider")
    }

    /// Tests whether the switch changes the color of the background
    func testSwitch() {

    }

    /// Tests whether I can change the date and the corresponding birthday label is changed
    func testDatePicker() {

    }

    /// Tests whether cells were added to the table view
    func testCellButton() {

    }
}
