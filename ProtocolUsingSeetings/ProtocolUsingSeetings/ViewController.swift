//
//  ViewController.swift
//  ProtocolUsingSeetings
//
//  Created by Olimpia on 1/16/19.
//  Copyright © 2019 Olimpia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    var darkModeIsOn = false 
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
  //4 set the delegate
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let vc = segue.destination as? SettingsViewController else { return }
        vc.delegate = self
        vc.darkModeIsOn = darkModeIsOn
    }

}

//5.- conform to the delegate and add all the methods require
extension ViewController: SettingsViewContiollerDelegate {
    func changeLabel(message: String) {
        self.myLabel.text! = message
    }
    
    func darkModeOff() {
        self.view.backgroundColor = .white
        self.myLabel.textColor = .black
        darkModeIsOn = false 
    }
    
    func darkModeOn() {
        darkModeIsOn = true
        self.view.backgroundColor = .black
        self.myLabel.textColor = .white 
    }
    
    
}
