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

    private func displayVC() {
        let vc = ViewController()
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
            .perform(grey_scrollInDirection(.down, 100))
            .perform(grey_scrollInDirection(.up, 100))

    }

    /// Tests whether the disabled button is disabled
    func testDisabledButton() {
        EarlGrey.select(elementWithMatcher: grey_accessibilityID("Can't Click Button"))
            .perform(grey_tap())
    }

    /// Tests whether the slider will affect the progress bar
    func testSlider() {

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
