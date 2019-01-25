//
//  MainViewController.swift
//  Programmatic UI Test
//
//  Created by Olimpia on 1/24/19.
//  Copyright © 2019 Olimpia. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
let mainView = MainView()
    

    override func viewDidLoad() {
        super.viewDidLoad()
       self.view.addSubview(mainView)
        mainView.delegate = self
    }
    
}

extension MainViewController: MainViewDelegate {
    func segueAction() {
        let detailed = DetailedViewController.init(message: mainView.inputedText.text!)
        navigationController?.pushViewController(detailed, animated: true)
    }
    
    
}
