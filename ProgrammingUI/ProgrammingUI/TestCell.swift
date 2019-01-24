//
//  TestCell.swift
//  ProgrammingUI
//
//  Created by Olimpia on 1/23/19.
//  Copyright © 2019 Olimpia. All rights reserved.
//

import UIKit

class TestCell: UITableViewCell {
    
    lazy var label: UILabel = {
        let label = UILabel()
        label.textColor = .green
        return label
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        self.addSubview(label)
      setConstrains()
    }
    
    func setConstrains() {
        label.translatesAutoresizingMaskIntoConstraints = false
        label.topAnchor.constraint(equalTo: self.topAnchor, constant: 11).isActive = true
        label.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 11).isActive = true
        label.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -11).isActive = true 
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
