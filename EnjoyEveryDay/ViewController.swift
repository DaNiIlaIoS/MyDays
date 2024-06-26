//
//  ViewController.swift
//  EnjoyEveryDay
//
//  Created by Даниил Сивожелезов on 20.04.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    var numberOfDays = ""
    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = "Hello"
        resultButton.layer.cornerRadius = 12
        datePicker.locale = Locale(identifier: "ru_RU")
    }
    
    
    @IBAction func datePicker(_ sender: UIDatePicker) {
        let range = sender.date..<Date.now
        numberOfDays = range.formatted(.components(style: .wide, fields: [.day]).locale(Locale(identifier: "ru_RU")))
    }
    
    @IBAction func resultButtonTapped() {
        resultLabel.text = "Ты наслаждаешься жизнью уже \(numberOfDays)"
    }
}

