//
//  FeedCell.swift
//  InstaSearch
//
//  Created by 주지홍 on 9/10/24.
//

import UIKit

class FeedCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbnailImageView: UIImageView!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        thumbnailImageView.image = nil
    }
    
    func configure(_ imageName:String) {
        thumbnailImageView.image = UIImage(named: imageName)
    }
}
