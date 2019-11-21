//
//  ViewController.swift
//  CustomCollectionView
//
//  Created by Daniel on 21/11/19.
//  Copyright © 2019 Daniel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        
        let nib = UINib(nibName: "AppsHorizontalCollectionViewCell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "scrollCellId")
    }


}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "scrollCellId", for: indexPath) as! AppsHorizontalCollectionViewCell
        cell.backgroundColor = .red
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = view.frame.width
        let height: CGFloat = 250
        return CGSize(width: width, height: height)
    }
    
}
