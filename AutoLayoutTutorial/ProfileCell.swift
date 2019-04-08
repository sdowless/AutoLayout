//
//  ProfileCell.swift
//  AutoLayoutTutorial
//
//  Created by Stephen Dowless on 4/7/19.
//  Copyright © 2019 Stephan Dowless. All rights reserved.
//

import UIKit

class ProfileCell: UICollectionViewCell {
    
    // MARK: - Proeprties
    
    let imageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.backgroundColor = .lightGray
        return iv
    }()
    
    // MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(imageView)
        imageView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
