//
//  SecondViewController.swift
//  Calendar!
//
//  Created by Alaysia Navor on 3/31/19.
//  Copyright © 2019 Alaysia & Yong. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBAction func Add(_ sender: UIButton) {
        let someFrame = CGRect(x: 0.0, y: 0.0, width: 100.0, height: 30.0)
        
        let text = UITextField(frame: someFrame)
        let view = UIView(frame: someFrame)
        text.placeholder = "aaaaaaaa"
        view.addSubview(text)
    }
    
    var textFields: [UITextField] = []
    let textFieldSize = CGSize(width: 97, height: 30)
    let maxTextFields = 4
    
    func tappedButton(button: UIButton) {
        if textFields.count < maxTextFields {
            let y = CGFloat(textFields.count) * textFieldSize.height
            let textField = UITextField(frame: CGRect(origin: CGPoint(x: 0, y: y), size: textFieldSize))
            view.addSubview(textField)
            textFields.append(textField)
            textField.placeholder = "adsasdwaaaa"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

