//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Adrien CHABAUD on 2022-09-08.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    var tip = 0.1
    var finalResult = "0.0"
    var numberOfPeople = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let percentageTip = String(format: "%.0f", tip * 100)
        
        totalLabel.text = finalResult
        settingsLabel.text = "Split between \(numberOfPeople) people, with \(percentageTip)% tip."

        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
