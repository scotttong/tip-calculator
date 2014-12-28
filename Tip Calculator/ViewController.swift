//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Scott Tong on 12/26/14.
//  Copyright (c) 2014 Scott Tong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var billField: UITextField!
    @IBOutlet var tipLabel: UILabel!
    @IBOutlet var totalLabel: UILabel!
    @IBOutlet var tipController: UISegmentedControl!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.\
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        
    }


    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        
        var tipPercentages = [0.15, 0.18, 0.20]
        var tipPercentage = tipPercentages[tipController.selectedSegmentIndex]
        
//        println("user is editing")
        var billAmountStr = billField.text
        var billAmount = (billAmountStr as NSString).doubleValue
        var tip = billAmount * tipPercentage
        var totalAmount = billAmount + tip
        
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(totalAmount)"
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", totalAmount)
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }

}