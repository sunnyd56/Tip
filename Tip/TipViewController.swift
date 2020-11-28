//
//  ViewController.swift
//  Tip
//
//  Created by Sunny Duong on 11/23/20.
//

import UIKit

class TipViewController: UIViewController {

    @IBOutlet weak var enterBill: UITextField!
    @IBOutlet weak var totalAmount: UILabel!
    @IBOutlet weak var tipAmount: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var splitAmount: UILabel!
    @IBOutlet weak var partySize: UILabel!
    @IBOutlet weak var stepperCount: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Tip Calculator"
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: UITapGestureRecognizer) {
    }
    
    @IBAction func stepperValue(_ sender: UIStepper) {
        partySize.text = String(format: "%.0f", sender.value)
    }
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(enterBill.text!) ?? 0
        let tipPercentages = [0.15,0.18,0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        let split = total / Double(stepperCount.value)
        tipAmount.text = String(format: "$%.2f", tip)
        splitAmount.text = String(format: "$%.2f", split)
        totalAmount.text = String(format: "$%.2f", total)
    }
    
}
