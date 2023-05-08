//
//  ViewController.swift
//  homework 1.3
//
//  Created by Islam Erlan Uulu on 11/4/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Image: UIImageView!
    
    @IBOutlet weak var Name: UILabel!
    
    @IBOutlet weak var Surname: UILabel!
    
    @IBOutlet weak var EnterAName: UITextField!
    private func isTextFieldFilled1(textField: UITextField) -> Bool {
        guard let text = textField.text else { return false }
        if text.isEmpty {
            textField.layer.borderWidth = 1
            textField.layer.borderColor = UIColor.red.cgColor
            return false
        }else{
            textField.layer.borderWidth = 0
            return true
        }
        
    }
    @IBOutlet weak var EnterASurname: UITextField!
    private func isTextFieldFilled2(textField: UITextField) -> Bool {
        guard let text = textField.text else { return false }
        if text.isEmpty {
            textField.layer.borderWidth = 1
            textField.layer.borderColor = UIColor.red.cgColor
            return false
        }else{
            textField.layer.borderWidth = 0
            return true
        }
            
        
        
        
    }
    @IBAction func Login1(_ sender: Any) {
        if !isTextFieldFilled1(textField: EnterAName) {
                  EnterAName.placeholder = "Заполните, пожалуйста"
                  }

    }
    
    @IBAction func Login2(_ sender: Any) {
        if !isTextFieldFilled2(textField: EnterASurname) {
                  EnterASurname.placeholder = "Заполните, пожалуйста"
    
                  }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

