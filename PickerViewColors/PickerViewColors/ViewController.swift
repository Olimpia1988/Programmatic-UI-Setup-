//
//  ViewController.swift
//  PickerViewColors
//
//  Created by Olimpia on 1/16/19.
//  Copyright © 2019 Olimpia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    


    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let vc = segue.destination as? DetailedViewController else { return }
        vc.delegate = self
      
        
    }
}


extension ViewController: DetailedViewControllerDelegate {
    func changeColors(color: UIColor) {
        self.view.backgroundColor = color
    }
    

}
