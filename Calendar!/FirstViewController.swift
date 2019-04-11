//
//  FirstViewController.swift
//  Calendar!
//
//  Created by Alaysia Navor on 3/31/19.
//  Copyright © 2019 Alaysia & Yong. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate, UITextFieldDelegate {
    @IBOutlet weak var table: UITableView!
    
    var data:[String]=["Row 1", "Row 2", "Row 3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // Use the following if we add a navigation controller to name tab:
                self.title = "To Do List"
        
    //creates add/plus button
        let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addRow))
        self.navigationItem.rightBarButtonItem = addButton
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
   //code that is execusted when plus button is pressed
    @objc func addRow() {
        let name:String = "Row \(data.count + 1)"
        data.insert(name, at: 0)
        let indexPath:IndexPath = IndexPath(row: 0, section: 0)
        table.insertRows(at: [indexPath], with: .automatic)
    }
    
    
    //Mark:Properties
    
    @IBOutlet weak var plusbuttonPressed: UIButton!
    func AddTextBox(_ sender: UIButton) {
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

// lynda


