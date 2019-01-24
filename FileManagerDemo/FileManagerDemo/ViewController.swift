//
//  ViewController.swift
//  FileManagerDemo
//
//  Created by Olimpia on 1/11/19.
//  Copyright © 2019 Olimpia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    struct Fellow: Codable {
        let name: String
        let cohort: Double
        
    }
    
    private let filename = "FellowList.plist"

    override func viewDidLoad() {
        super.viewDidLoad()
      print(DataPersistenceManager.documentsDirectory())
        //=================
        // WRITING TO THE DOCUMENTS DIRECTORY
        //=================
        
        //create instances of fellow
       // let raymond = Fellow(name: "Olimpia", cohort: 5.3)
        //let andreas = Fellow(name: "Andreas", cohort: 5.1)
        
    //store those fellows in an array
        //let fellows = [raymond, andreas]
        
       //convert the fellows array to Data using PropertyListEncoder()
        
       // do{
            //in the line bellow we took an array of objects and turned it into data and fed it to the file system
            //let data = try PropertyListEncoder().encode(fellows)
            
        //get url by appending filename to document directory
            //let url = DataPersistenceManager.filePathToDocumentsDirectory(filename: filename)
            
            //write the array of fellows to documents directory
            //here we're writing it to the files
            //try data.write(to: url, options: Data.WritingOptions.atomic)
//
//        } catch {
//            print("property list enconding error: \(error)")
//
//        }
//    }

//=============
        //READING FROM THE DOCUMENTS DIRECTORY
        
    //========
        //get path - use path on url to get path as a String
        let path = DataPersistenceManager.filePathToDocumentsDirectory(filename: filename).path
        
        if FileManager.default.fileExists(atPath: path) {
            if let data = FileManager.default.contents(atPath: path) {
                //here we have data
                do {
                    let fellows = try PropertyListDecoder().decode([Fellow].self, from: data)
                    print("there are \(fellows.count) fellows")
                    
                } catch {
                    print("property list decoding error: \(error)")
                }
                
                
            } else {
                print("no data at path")
            }
            
        } else {
            print("file path does not exist")
        }
}
}
