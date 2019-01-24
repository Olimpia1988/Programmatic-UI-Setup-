//
//  DataPersistenceManager.swift
//  FileManagerDemo
//
//  Created by Olimpia on 1/11/19.
//  Copyright © 2019 Olimpia. All rights reserved.
//

import Foundation

final class DataPersistenceManager {
    //url is the path to get into our device where the file lives
    static func documentsDirectory() -> URL {
        return FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0] // allways 
    }
    
    static func filePathToDocumentsDirectory(filename: String) -> URL {
        return documentsDirectory().appendingPathComponent(filename)
    }
}
