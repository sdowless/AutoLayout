//
//  ProfileHeaderView.swift
//  AutoLayoutTutorial
//
//  Created by Stephen Dowless on 4/7/19.
//  Copyright © 2019 Stephan Dowless. All rights reserved.
//

import UIKit

class ProfileHeaderView: UICollectionReusableView {
    
    let profileImageView: UIImageView = {
        let iv = UIImageView()
        iv.image = #imageLiteral(resourceName: "venom")
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.layer.borderWidth = 3
        iv.layer.borderColor = UIColor.white.cgColor
        return iv
    }()
    
    let messageButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "ic_mail_outline_white_2x").withRenderingMode(.alwaysOriginal), for: .normal)
        button.addTarget(self, action: #selector(handleMessageUser), for: .touchUpInside)
        return button
    }()
    
    let followButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "baseline_person_add_white_36dp").withRenderingMode(.alwaysOriginal), for: .normal)
        button.addTarget(self, action: #selector(handleFollowUser), for: .touchUpInside)
        return button
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "Eddie Brock"
        label.font = UIFont.boldSystemFont(ofSize: 26)
        label.textColor = .white
        return label
    }()
    
    let emailLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "venom@gmail.com"
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = .white
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .mainBlue
        
        addSubview(profileImageView)
        profileImageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        profileImageView.anchor(top: topAnchor, paddingTop: 88,
                                width: 120, height: 120)
        profileImageView.layer.cornerRadius = 120 / 2
        
        addSubview(messageButton)
        messageButton.anchor(top: topAnchor, left: leftAnchor,
                             paddingTop: 64, paddingLeft: 32, width: 32, height: 32)
        
        addSubview(followButton)
        followButton.anchor(top: topAnchor, right: rightAnchor,
                            paddingTop: 64, paddingRight: 32, width: 32, height: 32)
        
        addSubview(nameLabel)
        nameLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        nameLabel.anchor(top: profileImageView.bottomAnchor, paddingTop: 12)
        
        addSubview(emailLabel)
        emailLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        emailLabel.anchor(top: nameLabel.bottomAnchor, paddingTop: 4)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func handleMessageUser() {
        print("Message user here..")
    }
    
    @objc func handleFollowUser() {
        print("Follow user here..")
    }
    
}
