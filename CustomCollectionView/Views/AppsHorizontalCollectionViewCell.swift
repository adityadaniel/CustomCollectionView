//
//  AppsHorizontalCollectionViewCell.swift
//  CustomCollectionView
//
//  Created by Daniel on 21/11/19.
//  Copyright © 2019 Daniel. All rights reserved.
//

import UIKit

class AppsHorizontalCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var collectionView: UICollectionView!
    
    private let spacing: CGFloat = 16
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: spacing, left: spacing, bottom: spacing, right: spacing)
        layout.scrollDirection = .horizontal
        collectionView.collectionViewLayout = layout
        
        let nib = UINib(nibName: "AppListCollectionViewCell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "appList")
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = .purple
    }
    
    

}


extension AppsHorizontalCollectionViewCell: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "appList", for: indexPath) as UICollectionViewCell
        cell.backgroundColor = .yellow
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.bounds.width * 0.9
        return CGSize(width: width, height: 200)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return spacing
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return spacing
    }
    
    
}

