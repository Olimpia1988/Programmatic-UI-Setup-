//
//  MainViewController.swift
//  SubclassingUIView
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
    func seguePressed() {
        let detail = DetailedViewController.init(message: "Study!") //injection 
        navigationController?.pushViewController(detail, animated: true)
        
    }
    
    
}
