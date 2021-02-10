//
//  ViewController.swift
//  tip
//
//  Created by Ayshwarya Jagadeesan on 7/30/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billeFiels: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

   
    
    @IBAction func onTap(_ sender: Any) {
        //print("Hello")
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        //Get the Bill Amount
         let bill = Double(billeFiels.text!) ?? 0
        
         
         //Calculate the tip and total
        let tipPercentages = [0.15,0.18,0.20]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
         let total = bill + tip
         
         //update the tip and total labels
        tipLabel.text = String(format: "$%.2f",tip)
        totalLabel.text=String(format: "$%.2f", total)
    }
  
    
}

