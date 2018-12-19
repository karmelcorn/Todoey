//
//  ViewController.swift
//  Todoey
//
//  Created by chui on 12/19/18.
//  Copyright © 2018 k&c. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    let itemArray = ["Find Mike", "Buy Eggos", "Destory Lore"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    //MARK Tablesource Method
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
        
    }
   
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }


    // MARK Tableview Delegate Method
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //print (itemArray[indexPath.row])
        let cell = tableView.cellForRow(at: indexPath)
        
 

        if (cell?.accessoryType == .checkmark){
            cell?.accessoryType = .none
        } else {
            cell?.accessoryType = .checkmark
        }
        
        
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

