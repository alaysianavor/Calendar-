//
//  FirstViewController.swift
//  Calendar!
//
//  Created by Alaysia Navor on 3/31/19.
//  Copyright © 2019 Alaysia & Yong. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
 
    let list = ["yong", "kody", "jav", "alaysia"]
    
    @IBOutlet var TableView: UITableView!
    
    func tableView(UITableView, numberOfRowsInSection: Int) -> Int
    {
    return(list.count)
    }
    
    func tableView(UITableView, cellForRowAt: IndexPath) -> UITableViewCell
    {
    
    
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}



// comment
//comment #2
//comment #3
//comment #4
//override
