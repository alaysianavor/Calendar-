//
//  FirstViewController.swift
//  Calendar!
//
//  Created by Alaysia Navor on 3/31/19.
//  Copyright © 2019 Alaysia & Yong. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBAction func Add(_ sender: UIBarButtonItem) {
        let Textfield = UITextField(frame: CGRect(x: 0, y: 0, width: 300.00, height: 30.00));
    Textfield.placeholder="Enter item here"
    Textfield.text=ToDoData
    Textfield.borderStyle=UITextField.BorderStyle.line
    Textfield.backgroundColor=UIColor.white
    Textfield.textColor=UIColor.blue
        
    self.view.addSubview(Textfield)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
