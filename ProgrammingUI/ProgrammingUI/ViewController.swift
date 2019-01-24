//
//  ViewController.swift
//  ProgrammingUI
//
//  Created by Olimpia on 1/23/19.
//  Copyright © 2019 Olimpia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    //1.- create and set your object
    lazy var myLabel: UILabel = {
        let label = UILabel()
        label.text = "First label!"
        label.textColor = .white
        label.backgroundColor = .black
        label.numberOfLines = 0
        return label
    }()
    
    lazy var myTextView: UITextView = {
        let textView = UITextView()
        textView.text = "Text test"
       textView.backgroundColor = .black
        textView.textColor = .white
        
        return textView
        
    }()
    
    lazy var myButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .blue
        button.setTitle("Change Color", for: .normal)
        button.addTarget(self, action: #selector(changeColor), for: .touchUpInside)
        return button
    }()
    
    @objc func changeColor() {
        self.view.backgroundColor = .magenta
    }
    
    lazy var secondButton: UIButton = {
        let segueButton = UIButton()
        segueButton.backgroundColor = .blue
        segueButton.setTitle("Segue Button", for: .normal)
        segueButton.addTarget(self, action: #selector(segueAction), for: .touchUpInside)
        return segueButton
    }()
    
    @objc func segueAction() {
    self.navigationController?.pushViewController(DetailedvViewController(), animated: true)
    }
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    
    view.backgroundColor = .white
        
        //2.- add object to main view
        view.addSubview(myLabel)
        setLabelConstrains()
        
        view.addSubview(myTextView)
        setTextViewConstrains()
        
        view.addSubview(myButton)
        setButtonConstrains()
        
        view.addSubview(secondButton)
        setSegueButtonConstrains()
        
    //  self.myTableView.register(TestCell.self, forCellReuseIdentifier: “TestCell”)
        
        
    }
    
    func setLabelConstrains() {
        //3.- create constrains
        //3.a: set translateautoresizingmask to false
        myLabel.translatesAutoresizingMaskIntoConstraints = false //how to start constrains
        //3.b: create the constrains
        myLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        myLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 11).isActive = true
        myLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -11).isActive = true
        
    }
    
    func setTextViewConstrains() {
        myTextView.translatesAutoresizingMaskIntoConstraints = false
        
        myTextView.topAnchor.constraint(equalTo: myLabel.bottomAnchor, constant: 11).isActive = true
        myTextView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 11).isActive = true
        myTextView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -11).isActive = true
        myTextView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -11).isActive = true
        
    }
    
    func setButtonConstrains() {
        myButton.translatesAutoresizingMaskIntoConstraints = false
        myButton.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 11).isActive = true
        myButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 11).isActive = true
    }
    
    func setSegueButtonConstrains() {
        secondButton.translatesAutoresizingMaskIntoConstraints = false
        secondButton.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 11).isActive = true
        secondButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -11).isActive = true
        
    }
    
    


}

