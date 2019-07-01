//
//  ViewController.swift
//  Todoey2
//
//  Created by Vladimir Zhirov on 7/1/19.
//  Copyright © 2019 Vladimir Zhirov. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    var itemArray = ["1","2","3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    //MARK: - Tableview DataSource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    //MARK: - TableView Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
      //  print (itemArray[indexPath.row])
        
        if  tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
             tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else  {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
    
        
        tableView.deselectRow(at: indexPath, animated: true)
        
    }

}

