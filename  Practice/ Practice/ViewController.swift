//
//  ViewController.swift
//   Practice
//
//  Created by Olimpia on 1/11/19.
//  Copyright © 2019 Olimpia. All rights reserved.
//

import UIKit

struct Event: Codable {
    let venue: String
    let date: Double
    let time: Double
    let title: String
}

private let filename = "Event.plist"

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(DataPersistenceManager.documentsDirectory())
  
        //WRITING IN THE INFO PLIST
        
        //create instances of the object
        let meetup = Event(venue: "Public Library", date: 01.19, time: 12.30, title: "Tech event Meetup")
        let concert = Event(venue: "Madison Square Garden", date: 05.24, time: 11.0, title: "TRS come to NY")
        
        let events = [meetup, concert]
        
        
        do {
            
            let data = try PropertyListEncoder().encode(events)
            let url = DataPersistenceManager.filePathToDocumentDirectory(filename: filename)
            try data.write(to: url, options: Data.WritingOptions.atomic)
            
            
        } catch {
            print("Property list encoding error: \(error)")
        }
        
        //READING FROM THE DIRECTORY
        
        let path = DataPersistenceManager.filePathToDocumentDirectory(filename: filename).path
        if FileManager.default.fileExists(atPath: path) {
            if let data = FileManager.default.contents(atPath: path) {
                do {
                    let event = try PropertyListDecoder().decode([Event].self, from: data)
                    print("There are \(events.count) events hapening tonight")
                } catch {
                    print("Property list decoding error: \(error)")
                }
            } else {
                print("No data at path")
            }
        } else {
            print("File path does not exist")
        }
       
    }
    
    
   
        
    
        
    }
    
    




