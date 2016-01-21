//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Roy Montoya on 1/18/16.
//  Copyright © 2016 Roy Montoya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var dogYearsLabel: UILabel!

    @IBOutlet weak var dogYearsTextField: UITextField!
    
    
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func ConvertDogYearsButtonPressed(sender: UIButton) {
        let inputNumber = Int(dogYearsTextField.text!)
        dogYearsLabel.hidden = false
        let dogYearsConstant = 7
        dogYearsLabel.text = "\(inputNumber! * dogYearsConstant)"
        dogYearsTextField.text = ""
        dogYearsTextField.resignFirstResponder()
    }

    @IBAction func ConvertRealDogButtonPressed(sender: UIButton) {
        let beforeTwoConstant:Double = 10.5
        let afterTwoConstant:Double = 4
        let inputNumber = dogYearsTextField.text
        let doubleInputNumber = Double((inputNumber! as NSString).doubleValue)
        var realDogYears: Double
        
        
        if doubleInputNumber > 2{
            realDogYears = ((beforeTwoConstant * 2) + ((doubleInputNumber - 2) * afterTwoConstant))
        }else{
            realDogYears = beforeTwoConstant * doubleInputNumber
        }
        dogYearsLabel.text = "\(realDogYears)"
        dogYearsLabel.hidden = false
    }
}

