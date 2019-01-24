//
//  DetailedViewController.swift
//  SubclassingUIView
//
//  Created by Olimpia on 1/24/19.
//  Copyright © 2019 Olimpia. All rights reserved.
//

import UIKit

class DetailedViewController: UIViewController {
  
    

    let detailedView = DetailedView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(detailedView)
     
    }
    
    init(message: String) {
        super.init(nibName: nil, bundle: nil)
     detailedView.nameLabel.text = message
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
