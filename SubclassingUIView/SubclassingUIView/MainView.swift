//
//  MainView.swift
//  SubclassingUIView
//
//  Created by Olimpia on 1/24/19.
//  Copyright © 2019 Olimpia. All rights reserved.
//

import UIKit



protocol MainViewDelegate: AnyObject {
    func seguePressed()
}

class MainView: UIView {
    
    weak var delegate: MainViewDelegate?
   
    lazy var mainButton: UIButton = {
        let button = UIButton()
        button.setTitle("Segue", for: .normal)
        button.backgroundColor = .blue
        button.addTarget(self, action: #selector(seguePressed), for: .touchUpInside)
        
        return button
    }()
    
    @objc func seguePressed() {
        delegate?.seguePressed()
    }
    
    
    
    
    
    override init(frame: CGRect) {
        //set yourself up like any uiview
        super.init(frame: UIScreen.main.bounds)
        addSubview(mainButton)
        setConstrains()
        backgroundColor = .white  
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConstrains() {
        mainButton.translatesAutoresizingMaskIntoConstraints = false
        mainButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        mainButton.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true 
        
    }
    
}
