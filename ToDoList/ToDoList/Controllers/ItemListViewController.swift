//
//  ViewController.swift
//  ToDoList
//
//  Created by Olimpia on 1/11/19.
//  Copyright © 2019 Olimpia. All rights reserved.
//

import UIKit

class ItemListViewController: UIViewController {
    
   
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(DataPersistenceManager.documentsDirectory())
        tableView.dataSource = self 
    }


}

extension ItemListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ItemModel.getITems().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath)
        let item = ItemModel.getITems()[indexPath.row]
        cell.textLabel?.text = item.title
        cell.detailTextLabel?.text = item.dateFormattedString
        return cell
    }
    
    
}

extension ItemListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        let item = ItemModel.getITems()[indexPath.row]
        ItemModel.delete(item: item, atIndex: indexPath.row)
        tableView.deleteRows(at: [indexPath], with: .fade)
    }
}
