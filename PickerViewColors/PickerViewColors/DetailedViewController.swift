//
//  DetailedViewController.swift
//  PickerViewColors
//
//  Created by Olimpia on 1/16/19.
//  Copyright © 2019 Olimpia. All rights reserved.
//

import UIKit

protocol DetailedViewControllerDelegate: AnyObject {
    func changeColors(color: UIColor) //<--- needs peramters <-- string
}

class DetailedViewController: UIViewController {
    
    let colors: [UIColor] = [.green, .blue, .red, .yellow]
    let colorsName = ["Green", "Blue", "Red", "Yellow"]
    var colorPicked: UIColor!
    
    weak var delegate: DetailedViewControllerDelegate?
    
    @IBOutlet weak var colorSelector: UIPickerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorSelector.delegate = self
        colorSelector.dataSource = self
      
    }
    

    
    

}


extension DetailedViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colorsName[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.delegate?.changeColors(color: colors[row])
        print(colorsName[row])
      
    }

}
