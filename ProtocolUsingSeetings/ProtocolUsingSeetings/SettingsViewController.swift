//
//  SettingsViewController.swift
//  ProtocolUsingSeetings
//
//  Created by Olimpia on 1/16/19.
//  Copyright © 2019 Olimpia. All rights reserved.
//

import UIKit

//1, define a protocol, add name to a method
//make sure to inherit from AnyObject (class works too but will prob by gone soon)

protocol SettingsViewContiollerDelegate: AnyObject { //were deledating end it on delegate
    func darkModeOn()
    func darkModeOff()
    func changeLabel(message: String)
}

class SettingsViewController: UIViewController {
    
    @IBOutlet var tapGesture: UITapGestureRecognizer!
    
      var darkModeIsOn: Bool!
   
    // 2. create weak delegate variable and set it to optional
    weak var delegate: SettingsViewContiollerDelegate? // we do it for memery managment
    @IBOutlet weak var mySwitch: UISwitch!
    @IBOutlet weak var darkModeLabel: UILabel!
    @IBOutlet weak var settingsTextField: UITextField!
    @IBOutlet weak var instructionsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addGestureRecognizer(tapGesture)
        settingsTextField.delegate = self
         mySwitch.setOn(darkModeIsOn, animated: true)
        if mySwitch.isOn {
            self.view.backgroundColor = .black
            self.darkModeLabel.textColor = .white
            self.instructionsLabel.textColor = .white
        } else {
            self.view.backgroundColor = .white
            self.darkModeLabel.textColor = .black
            self.instructionsLabel.textColor = .black
        }
    }
    

    @IBAction func switchPressed(_ sender: UISwitch) {
        if sender.isOn {
            self.view.backgroundColor = .black
            self.darkModeLabel.textColor = .white
            self.instructionsLabel.textColor = .white
            //3 call the delegate in method where you want to send the "message"
            self.delegate?.darkModeOn()
        
        } else {
            self.view.backgroundColor = .white
            self.darkModeLabel.textColor = .black
            self.instructionsLabel.textColor = .black
             //3 call the delegate in method where you want to send the "message"
            self.delegate?.darkModeOff()
        }
    }
    
    
    @IBAction func tapped(_ sender: UITapGestureRecognizer) {
        settingsTextField.resignFirstResponder()
    }
    
}

extension SettingsViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let text = textField.text {
            self.delegate?.changeLabel(message: text)
        }
        textField.resignFirstResponder()
        return true 
    }
}
