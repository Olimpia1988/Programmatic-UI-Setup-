//
//  ItemModel.swift
//  ToDoList
//
//  Created by Olimpia on 1/11/19.
//  Copyright © 2019 Olimpia. All rights reserved.
//

import Foundation

final class ItemModel {
    private static let filename = "ToDoList.plist"
    private static var items = [Item]()
    static func getITems() -> [Item] {
        //FileManager
        //we need a path
        let path = DataPersistenceManager.filePathToDocumentsDirectory(filename: filename).path
        if FileManager.default.fileExists(atPath: path) {
            if let data = FileManager.default.contents(atPath: path) {
                do {
                    items = try PropertyListDecoder().decode([Item].self, from: data)
                } catch {
                    print("property list decoding error: \(error)")
                }
            } else {
                print("data is nil")
            }
        } else {
            print("\(filename) does not exist")
        }
        
        
       return items
    }
   
    static func addItems(item: Item) {
        //append to the array
          items.append(item)
        save()
    }
    
    static func delete(item: Item, )
    
    static func save() {
        //path
        let path = DataPersistenceManager.filePathToDocumentsDirectory(filename: filename)
        do {
            let data = try PropertyListEncoder().encode(items)
            try data.write(to: path, options: Data.WritingOptions.atomic)
        } catch {
            print("property list encoding error")
        }
        
    }
    
}
