//
//  ViewController.swift
//  EarlGreyBrownBagExample
//
//  Created by Bart Chrzaszcz on 3/6/18.
//  Copyright © 2018 Bart Chrzaszcz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var addCell: UIButton!

    @IBOutlet weak var label: UILabel!

    @IBOutlet weak var cantClickButton: UIButton!

    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var mySwitch: UISwitch!

    @IBOutlet weak var datePicker: UIDatePicker!

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.accessibilityIdentifier = "Table View"
        addCell.accessibilityIdentifier = "Add Cell"
        label.accessibilityIdentifier = "Label"
        cantClickButton.accessibilityIdentifier = "Can't Click Button"
        progressView.accessibilityIdentifier = "Progress View"
        slider.accessibilityIdentifier = "Slider"
        mySwitch.accessibilityIdentifier = "Switch"
        datePicker.accessibilityIdentifier = "Date Picker"
    }
}

