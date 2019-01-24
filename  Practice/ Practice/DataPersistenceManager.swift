//
//  DataPersistenceManager.swift
//   Practice
//
//  Created by Olimpia on 1/11/19.
//  Copyright © 2019 Olimpia. All rights reserved.
//

import Foundation

final class DataPersistenceManager {
    static func documentsDirectory() -> URL {
        
    return FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        
    }
    
    static func filePathToDocumentDirectory(filename: String) -> URL {
        return documentsDirectory().appendingPathComponent(filename)
    }
    
    
}
