//
//  JFCommentCell.swift
//  BaoNews
//
//  Created by WXQ on 17/5/18.
//  Copyright © 2017年 WXQ. All rights reserved.
//

import UIKit
import YYWebImage

protocol JFCommentCellDelegate {
    func didTappedStarButton(_ button: UIButton, commentModel: JFCommentModel)
}

class JFCommentCell: UITableViewCell {
    
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var starButton: UIButton!
    @IBOutlet weak var commentButton: UIButton!
    var delegate: JFCommentCellDelegate?
    
    var commentModel: JFCommentModel? {
        didSet {
            avatarImageView.yy_setImage(with: URL(string: commentModel!.userpic!), options: YYWebImageOptions.ignorePlaceHolder)
            usernameLabel.text = commentModel!.plnickname!
            timeLabel.text = commentModel!.saytime!
            contentLabel.text = commentModel!.saytext!
            starButton.setTitle("\(commentModel!.zcnum)", for: UIControlState())
        }
    }
    
    func getCellHeight(_ commentModel: JFCommentModel) -> CGFloat {
        self.commentModel = commentModel
        layoutIfNeeded()
        return contentLabel.frame.maxY + 10
    }
    
    /**
     点击了赞
     */
    @IBAction func didTappedStarButton(_ sender: UIButton) {
        delegate?.didTappedStarButton(sender, commentModel: commentModel!)
    }
    
}
