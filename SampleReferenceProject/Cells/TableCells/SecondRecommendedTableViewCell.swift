//
//  SecondRecommendedTableViewCell.swift
//  SampleReferenceProject
//
//  Created by Sierra 4 on 28/03/17.
//  Copyright © 2017 code-brew. All rights reserved.
//

import UIKit

class SecondRecommendedTableViewCell: UITableViewCell {

    @IBOutlet weak var collectionViewMain: UICollectionView!
    @IBOutlet weak var lbHeader: UILabel!
    
    
    let nibName = "RecommendedCollectionViewCell"
    let cellReuseID = "RecommendedCollectionViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        /* registering the nib*/
        let nibName = UINib(nibName: self.nibName, bundle: nil)
        collectionViewMain.register(nibName, forCellWithReuseIdentifier: cellReuseID)
        
        
        collectionViewMain.delegate = self
        collectionViewMain.dataSource = self
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
extension SecondRecommendedTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellReuseID, for: indexPath)
        
        return cell
    }
}
