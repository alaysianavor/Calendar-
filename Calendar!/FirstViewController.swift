//
//  FirstViewController.swift
//  Calendar!
//
//  Created by Alaysia Navor on 3/31/19.
//  Copyright © 2019 Alaysia & Yong. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITextFieldDelegate {
    
    //Mark:Properties
    
    @IBAction func AddTextBox(_ sender: UIButton) {
        func CreateBox() {
            super.viewDidLoad()
            
            let Boxes =  UITextField(frame: CGRect(x: 20, y: 100, width: 300, height: 40))
            Boxes.placeholder = "Enter Text"
            Boxes.font = UIFont.systemFont(ofSize: 12)
            Boxes.borderStyle = UITextField.BorderStyle.roundedRect
            Boxes.autocorrectionType = UITextAutocorrectionType.no
            Boxes.keyboardType = UIKeyboardType.default
            Boxes.returnKeyType = UIReturnKeyType.done
            Boxes.clearButtonMode = UITextField.ViewMode.whileEditing
            Boxes.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
            Boxes.delegate = self
        }
    }
}
