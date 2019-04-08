//
//  ViewController.swift
//  AutoLayoutTutorial
//
//  Created by Stephen Dowless on 4/2/19.
//  Copyright © 2019 Stephan Dowless. All rights reserved.
//

import UIKit

private let reuseIdentifier = "ProfileCell"
private let headerIdentifier = "ProfileHeader"

class ViewController: UICollectionViewController {
    
    // MARK: - Properties
    
    let images: [UIImage] = [#imageLiteral(resourceName: "venom-6"), #imageLiteral(resourceName: "venom-1"), #imageLiteral(resourceName: "venom-3"), #imageLiteral(resourceName: "venom-1"), #imageLiteral(resourceName: "venom-4"), #imageLiteral(resourceName: "carnage"), #imageLiteral(resourceName: "venom-4"), #imageLiteral(resourceName: "venom"), #imageLiteral(resourceName: "venom02"), #imageLiteral(resourceName: "venom-7"), #imageLiteral(resourceName: "venom-10"), #imageLiteral(resourceName: "venom-8")]
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.backgroundColor = .white
        
        collectionView!.register(ProfileCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        self.collectionView!.register(ProfileHeaderView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerIdentifier)
        
        collectionView?.contentInsetAdjustmentBehavior = .never
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}

extension ViewController {
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! ProfileCell
        cell.imageView.image = images[indexPath.row]
        return cell
    }
    
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerIdentifier, for: indexPath) as! ProfileHeaderView
        return header
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 300)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (view.frame.width - 2) / 3
        return CGSize(width: width, height: width)
    }
    
}
