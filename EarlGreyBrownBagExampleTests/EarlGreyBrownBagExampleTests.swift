//
//  EarlGreyBrownBagExampleTests.swift
//  EarlGreyBrownBagExampleTests
//
//  Created by Bart Chrzaszcz on 3/6/18.
//  Copyright © 2018 Bart Chrzaszcz. All rights reserved.
//

import XCTest
@testable import EarlGreyBrownBagExample

class EarlGreyBrownBagExampleTests: XCTestCase {

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

    }

    /// Tests whether we can edit the text in the text view
    func testTextView() {
        
    }

    /// Tests whether the disabled button is disabled
    func testDisabledButton() {

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
