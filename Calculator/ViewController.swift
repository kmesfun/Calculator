//
//  ViewController.swift
//  Calculator
//
//  Created by Kennedy Mesfun on 1/2/15.
//  Copyright (c) 2015 Kennedy Mesfun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var calculatorDisplay: UILabel!
    var isTypingNumber = false
    var firstNumber = 0
    var secondNumber = 0
    var operation = ""


    
    @IBAction func numberTapped(sender: AnyObject) { //number
        var number = sender.currentTitle
        
        if isTypingNumber {
            calculatorDisplay.text = calculatorDisplay.text! + number!!
        }else{
            calculatorDisplay.text = number
            isTypingNumber = true
        }
        
    }
        
    
    @IBAction func calculationTapped(sender: AnyObject) { //calculation
        isTypingNumber = false
        firstNumber = calculatorDisplay.text!.toInt()!
        operation = sender.currentTitle!!
    }
    
    @IBAction func equalsTapped(sender: AnyObject) { //equals
        isTypingNumber = false
        var result = 0
        secondNumber = calculatorDisplay.text!.toInt()!
        
        if operation == "+" {
            result = firstNumber + secondNumber
        } else if operation == "-" {
        result = self.firstNumber - self.secondNumber
        }else if operation == "*" {
            result = self.firstNumber * self.secondNumber
        }else if operation == "/" {
            result = self.firstNumber / self.secondNumber
        }
        
        calculatorDisplay.text = "\(result)"
            
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

