//
//  RootViewController.swift
//  EarlGreyBrownBagExample
//
//  Created by Bart Chrzaszcz on 3/6/18.
//  Copyright © 2018 Bart Chrzaszcz. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

    @IBOutlet weak var mainScreenButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        mainScreenButton.accessibilityIdentifier = "Main Screen Button"
    }
}
