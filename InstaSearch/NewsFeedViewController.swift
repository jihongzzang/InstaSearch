//
//  NewsFeedViewController.swift
//  InstaSearch
//
//  Created by 주지홍 on 9/10/24.
//

import UIKit

class NewsFeedViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        
        if let flowlayout = collectionView.collectionViewLayout
            as? UICollectionViewFlowLayout {
            flowlayout.estimatedItemSize = .zero
        }
    }
}

extension NewsFeedViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 24
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FeedCell", for: indexPath) as? FeedCell else {
            return UICollectionViewCell()
        }
        
        let imageName = "animal\(indexPath.item + 1)"
        
        cell.configure(imageName)
        return cell
    }
}

extension NewsFeedViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        
        let width = collectionView.bounds.width
        let height = width * 3/4 + 60
        
        return CGSize(width: width, height: height)
    }
    
}
