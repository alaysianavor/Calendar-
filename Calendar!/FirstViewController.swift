//
//  FirstViewController.swift
//  Calendar!
//
//  Created by Alaysia Navor on 3/31/19.
//  Copyright © 2019 Alaysia & Yong. All rights reserved.
//

import UIKit

class FirstViewController: UITableViewController {
    @IBAction func Add(_ sender: UIBarButtonItem) {
        let Textfield = UITextField(frame: CGRect(x: 0, y: 0, width: 300.00, height: 30.00));
    Textfield.placeholder="Enter item here"
    Textfield.text="To Do Data"
    Textfield.borderStyle=UITextField.BorderStyle.line
    Textfield.backgroundColor=UIColor.white
    Textfield.textColor=UIColor.blue
        
    self.view.addSubview(Textfield)
    }
    
      var initializerArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
          initializerArray = ["we", "love", "chicken wings"]
        
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return initializerArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = initializerArray[indexPath.row]
        
        return cell
    
    }
}
}
