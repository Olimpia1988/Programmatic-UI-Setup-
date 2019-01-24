//
//  MainView.swift
//  Programmatic UI Test
//
//  Created by Olimpia on 1/24/19.
//  Copyright © 2019 Olimpia. All rights reserved.
//

import UIKit

protocol MainViewDelegate: AnyObject {
    func segueAction()
}

class MainView: UIView {
    
    weak var delegate: MainViewDelegate?
    
    lazy var textField: UITextField = {
        let textField = UITextField()
        return textField
    }()
    
    lazy var button: UIButton = {
        let buttonString = UIButton()
        buttonString.setTitle("Enter", for: .normal)
        buttonString.backgroundColor = .magenta
        buttonString.addTarget(self, action: #selector(segueAction), for: .touchUpInside)
        return buttonString
    }()
    
    @objc func segueAction() {
        delegate?.segueAction()
    }

    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        addSubview(button)
        addSubview(textField)
        
        setConstrains()
         backgroundColor = .white
        
        
    
    }
    
    func setConstrains() {
         button.translatesAutoresizingMaskIntoConstraints = false
        button.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        //tex fiel constrains 
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
