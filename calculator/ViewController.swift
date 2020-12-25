//
//  ViewController.swift
//  calculator
//
//  Created by BettyPan on 2020/12/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var num1TextField: UITextField!
    @IBOutlet weak var num2TextField: UITextField!
    @IBOutlet weak var sumLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculate(_ sender: UISegmentedControl) {
        
        let num1 = Float(num1TextField.text!)
        let num2 = Float(num2TextField.text!)

        
        if sender.selectedSegmentIndex == 0 {
            sumLabel.text = "\(num1! + num2!)"
        }else if sender.selectedSegmentIndex == 1 {
            sumLabel.text = "\(num1! - num2!)"
        }else if sender.selectedSegmentIndex == 2 {
            sumLabel.text = "\(num1! * num2!)"
        }else{
            sumLabel.text = String(format: "%.2f", num1!/num2!)
            
        }
    }
}

