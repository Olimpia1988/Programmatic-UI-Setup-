//
//  PhotoJounalModel.swift
//  ImagePickerDemo
//
//  Created by Olimpia on 1/14/19.
//  Copyright © 2019 Olimpia. All rights reserved.
//

import Foundation

final class PhotoJournalModel {
    
    private static let filename = "PhotoJournalList.plist"

    //making the initializer private
    private init() {}
    
    static func savePhoto(photoJournal: PhotoJournal) {
        let path = DataPersistanceManager.filepathToDoDocumentsDirectory(filename: filename)
        do {
           let data = try PropertyListEncoder().encode(photoJournal)
            try data.write(to: path, options: Data.WritingOptions.atomic)
        } catch {
            print("property list enconding error: \(error)")
        }
    }
    
    static func getPhotoJournal() -> PhotoJournal? {
        let path = DataPersistanceManager.filepathToDoDocumentsDirectory(filename: filename).path
        var photoJournal: PhotoJournal?
        if FileManager.default.fileExists(atPath: path) {
            if let data = FileManager.default.contents(atPath: path) {
                do {
                    photoJournal = try PropertyListDecoder().decode(PhotoJournal.self, from: data)
                } catch {
                    print("property list decoding error: \(error)")
                }
            } else {
                print("getPhotoJournal - data is nil")
            }
        } else {
            print("\(filename) does not exist")
        }
        return photoJournal

    }
    
}
