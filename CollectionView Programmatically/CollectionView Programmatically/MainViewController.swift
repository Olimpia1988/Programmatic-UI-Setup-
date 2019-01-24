//
//  MainViewController.swift
//  CollectionView Programmatically
//
//  Created by Olimpia on 1/24/19.
//  Copyright © 2019 Olimpia. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    lazy var myCollectionView: UICollectionView = {
        
        
        let layout = UICollectionViewDelegateFlowLayout()
        la
        
        
        let cv = UICollectionView.init(frame: self.view.bounds, collectionViewLayout: layout)
        cv.dataSource = self
        cv.delegate = self
    
        return cv
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        myCollectionView.register(PraticeCollectionViewCell.self, forCellWithReuseIdentifier: "PracticeCell")
    
    }


}

extension MainViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PracticeCell", for: indexPath) as? PraticeCollectionViewCell else { return UICollectionViewCell() }
        return cell 
    }
    
    cell
}
