//
//  ViewController.swift
//  bother
//
//  Created by Matt on 27/10/2018.
//  Copyright © 2018 mindelicious. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    let itemArray = ["Learn swift", "do your own app", "make some $"]
    
    @IBOutlet var toDoTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    // MARK: - TableView DataSource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
        
    }
    
    // MARK - TableView Delegate Method
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        print(itemArray[indexPath.row])
    }

     


    
    
    
   

}

