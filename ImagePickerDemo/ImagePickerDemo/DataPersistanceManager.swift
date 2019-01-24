//
//  DataPersistanceManager.swift
//  ImagePickerDemo
//
//  Created by Olimpia on 1/14/19.
//  Copyright © 2019 Olimpia. All rights reserved.
//

import Foundation

final class DataPersistanceManager {
    
    
    //path to documents directory
    //".../Documents"
    static func documentsDirectory() -> URL {
       return FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
    }
    
     //filepath using filename to documents drectory
     //"...Documents/PhotoJournalList.plist"
    static func filepathToDoDocumentsDirectory(filename: String) -> URL {
        return documentsDirectory().appendingPathComponent(filename)
    }
   
}
