//
//  Item.swift
//  ToDoList
//
//  Created by Olimpia on 1/11/19.
//  Copyright © 2019 Olimpia. All rights reserved.
//

import Foundation

struct Item: Codable {
    let title: String
    let description: String
    let createdAt: String
    public var dateFormattedString: String {
        let isoDateFormatted = ISO8601DateFormatter()
        var formattedDate = createdAt
        if let date = isoDateFormatted.date(from: createdAt) {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "MMMM d, yyyy hh:mm a" //January 11, 2019, 3:27pm
            formattedDate = dateFormatter.string(from: date)
          
        }
          return formattedDate
    }
}

