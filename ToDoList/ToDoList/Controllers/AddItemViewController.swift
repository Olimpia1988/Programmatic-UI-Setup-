//
//  AddItemViewController.swift
//  ToDoList
//
//  Created by Olimpia on 1/11/19.
//  Copyright © 2019 Olimpia. All rights reserved.
//

import UIKit

class AddItemViewController: UIViewController {

    @IBAction func cancel(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func addIem(_ sender: UIBarButtonItem) {
        guard let itemTitle = itemTitleTextView.text,
            let itemDescription = itemDescription.text else {
                fatalError("title, description nil")
        }
        
        //timestamp base on the current time
        let date = Date()
        let iosDateFormatter = ISO8601DateFormatter()
        iosDateFormatter.formatOptions = [.withFullDate,
                                          .withFullTime,
                                          .withTimeZone,
                                          .withDashSeparatorInDate]
        let timeStamp = iosDateFormatter.string(from: date)
        
        
        
        //create an item
        let item = Item.init(title: itemTitle, description: itemDescription, createdAt: timeStamp)
        
        //save item to document directory
        ItemModel.addItems(item: item)
        
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBOutlet weak var itemTitleTextView: UITextView!
    @IBOutlet weak var itemDescription: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
