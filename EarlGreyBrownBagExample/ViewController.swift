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
    @IBOutlet weak var birthdayLabel: UILabel!

    @IBOutlet weak var cantClickButton: UIButton!

    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var mySwitch: UISwitch!

    @IBOutlet weak var datePicker: UIDatePicker!

    var stuff = [
        "Cell 1",
        "Cell 2",
        "Cell 3"
    ]

    struct Colors {
        static var bool = false
        static let color1 = UIColor(red: 0.7, green: 0.8, blue: 0.5, alpha: 0.9)
        static let color2 = UIColor(red: 0.8, green: 0.5, blue: 0.4, alpha: 0.9)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = Colors.color1

        setupIdentifiers()
        setupTableView()
    }

    private func setupIdentifiers() {
        tableView.accessibilityIdentifier = "Table View"
        addCell.accessibilityIdentifier = "Add Cell"
        label.accessibilityIdentifier = "Label"
        cantClickButton.accessibilityIdentifier = "Can't Click Button"
        progressView.accessibilityIdentifier = "Progress View"
        slider.accessibilityIdentifier = "Slider"
        mySwitch.accessibilityIdentifier = "Switch"
        datePicker.accessibilityIdentifier = "Date Picker"
    }

    private func setupTableView() {
        tableView.dataSource = self
    }

    @IBAction func sliderChanged(_ sender: Any) {
        progressView.setProgress(slider.value, animated: true)
    }

    @IBAction func switchChanged(_ sender: Any) {
        self.view.backgroundColor = Colors.bool ? Colors.color1 : Colors.color2
        Colors.bool = !Colors.bool
    }

    @IBAction func addCell(_ sender: Any) {
        stuff.append("Cell \(stuff.count + 1)")
        tableView.reloadData()
    }

    @IBAction func changeDate(_ sender: Any) {
        let calendar = NSCalendar.current
        let components = calendar.dateComponents([.day, .month, .year], from: datePicker.date)

        if components.day == 10 && components.month == 3 && components.year == 1998 {
            birthdayLabel.text = "It's my birthday! :D"
        } else {
            birthdayLabel.text = "It's not my birthday :("
        }
    }
}

extension ViewController: UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return stuff.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuse", for: indexPath as IndexPath)
        cell.textLabel?.text = stuff[indexPath.row]
        return cell
    }
}
