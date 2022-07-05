//
//  ViewController.swift
//  calculator
//
//  Created by User on 09/04/22.
//

import UIKit
import Foundation
/*
func Sum(a: Double, b: Double)-> Double{
    let resultSum = (a + b)
    return resultSum
}
func Sub(a: Double, b: Double)-> Double{
    let resultSub = (a - b)
    return resultSub
}
func divid(a: Double, b: Double)-> Double{
    let resultDivid = (a / b)
    return resultDivid
}
func Multiply(a: Double, b: Double)-> Double{
    let resultMultiply = (a * b)
    return resultMultiply
}
*/
class ViewController: UIViewController {
    
    @IBOutlet weak var numberOneTextField: UITextField!
    @IBOutlet weak var numberTwoTextField: UITextField!
    @IBOutlet weak var operationTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
   
    @IBAction func calculate(_ sender: UIButton) {
        resultLabel.adjustsFontSizeToFitWidth = true
        let numberOne = Double(numberOneTextField.text ?? "0") ?? 0
        let numberTwo = Double(numberTwoTextField.text ?? "0") ?? 0
        let operation = String(format: operationTextField.text ??  "+" , "*", "-", "/")
        /*
        switch operation {
        case "+":
            let result = Sum(a: numberOne, b: numberTwo)
            resultLabel.text = "\(result)"
        case "*":
            let result = Multiply(a: numberOne, b: numberTwo)
            resultLabel.text = "\(result)"
        case "-":
            let result = Sub(a: numberOne, b: numberTwo)
            resultLabel.text = "\(result)"
        case "/":
            let  result = divid(a: numberOne, b: numberTwo)
            resultLabel.text = "\(result)"
        default:
            print("escolha uma das opções '+, -, *, -'")
        }
            */
 
        if operation == "+" {
            let result = numberOne + numberTwo
            resultLabel.text = "\(result)"}
        if operation == "*" {
            let result = numberOne * numberTwo
            resultLabel.text = "\(result)"}
        if operation == "-" {
            let result = numberOne - numberTwo
            resultLabel.text = "\(result)"}
        if operation == "/" {
            let result = numberOne / numberTwo
            resultLabel.text = "\(result)"}
        view.endEditing(true)
    }
    
    }
