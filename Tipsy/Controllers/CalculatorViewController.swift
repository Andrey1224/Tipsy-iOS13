//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    var tip = 0.10
    var numberOfPeople = 2
    
    var total = 0.0
    
    
    
    @IBOutlet weak var billTextField: UITextField!
    
    @IBOutlet weak var zeroPctButton: UIButton!
    
    @IBOutlet weak var tenPctButton: UIButton!
    
    @IBOutlet weak var twentyPctButton: UIButton!
    
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    
    
    
    
    
    @IBAction func tipChanged(_ sender: UIButton) {
        
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        sender.isSelected = true
        
        
        billTextField.endEditing(true)
        
        let buttonTitle = sender.currentTitle!
        let buttonTitlePercent = String(buttonTitle.dropLast())
        let buttonTitleNumber = Double(buttonTitlePercent)!
        tip = buttonTitleNumber / 100
        
        
    }
    
    
    
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(format: "%.0f", sender.value)
        numberOfPeople = Int(sender.value)
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        let bill = billTextField.text!
        
        if bill != "" {
            
            
            total = Double(bill)!
            
            let result = total * (1 + tip) / Double(numberOfPeople)
            
            let resultToDEcimal = String(format: "%.2f", result)
            
            print(resultToDEcimal)
        }
        
    }
    
    
}

