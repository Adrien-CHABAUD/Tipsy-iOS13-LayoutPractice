//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var tip = 0.10

    @IBAction func tipChanged(_ sender: UIButton) {
        // Deselecting all the buttons
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        // Selecting only the button pressed by the user
        sender.isSelected = true
        
        // Get hold of the percentage pressed
        var amountSelected = sender.currentTitle!
        amountSelected = String(amountSelected.dropLast())
        let amounSelectedAsNumber = Double(amountSelected)!
        tip = amounSelectedAsNumber / 100
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        
    }
}

