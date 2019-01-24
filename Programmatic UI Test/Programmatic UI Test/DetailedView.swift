//
//  DetailedView.swift
//  Programmatic UI Test
//
//  Created by Olimpia on 1/24/19.
//  Copyright © 2019 Olimpia. All rights reserved.
//

import UIKit

class DetailedView: UIView {

    lazy var labelToSet: UILabel = {
        let label = UILabel()
        label.text = "SomeText"
        label.backgroundColor = .magenta
        return label 
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        addSubview(labelToSet)
        setLabelConstains()
        backgroundColor = .white
        
    }
    
    func setLabelConstains() {
        labelToSet.translatesAutoresizingMaskIntoConstraints = false
        labelToSet.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
       labelToSet.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true 
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
