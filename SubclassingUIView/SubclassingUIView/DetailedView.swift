//
//  DetailedView.swift
//  SubclassingUIView
//
//  Created by Olimpia on 1/24/19.
//  Copyright © 2019 Olimpia. All rights reserved.
//

import UIKit


protocol DetailedViewDelegate: AnyObject {
    
}
class DetailedView: UIView {

    weak var delegate: DetailedViewDelegate?
    
    lazy var nameLabel: UILabel = {
        let name = UILabel()
        name.text = "Olimpia"
        name.backgroundColor = .blue
        
        return name
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        backgroundColor = .white 
        addSubview(nameLabel)
        addConstrains()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addConstrains() {
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        nameLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true 

}
}
