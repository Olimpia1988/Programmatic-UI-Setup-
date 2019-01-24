//
//  PhotoJournal.swift
//  ImagePickerDemo
//
//  Created by Olimpia on 1/14/19.
//  Copyright © 2019 Olimpia. All rights reserved.
//

import Foundation

struct PhotoJournal: Codable {
    let createdAt: String
    let imageData: Data
    let description: String
  }
