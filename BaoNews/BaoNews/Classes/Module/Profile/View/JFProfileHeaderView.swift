//
//  JFProfileHeaderView.swift
//  BaoNews
//
//  Created by WXQ on 17/5/20.
//  Copyright © 2017年 WXQ. All rights reserved.
//

import UIKit

protocol JFProfileHeaderViewDelegate {
    
    func didTappedAvatarButton()
    func didTappedCollectionButton()
    func didTappedCommentButton()
    func didTappedInfoButton()
}

class JFProfileHeaderView: UIView {

    @IBOutlet weak var avatarButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    var delegate: JFProfileHeaderViewDelegate?
    
    @IBAction func didTappedAvatarButton() {
        delegate?.didTappedAvatarButton()
    }
    
    @IBAction func didTappedCollectionButton() {
        delegate?.didTappedCollectionButton()
    }
    
    @IBAction func didTappedCommentButton() {
        delegate?.didTappedCommentButton()
    }
    
    @IBAction func didTappedInfoButton() {
        delegate?.didTappedInfoButton()
    }
    
}
