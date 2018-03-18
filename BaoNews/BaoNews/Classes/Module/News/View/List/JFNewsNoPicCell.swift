//
//  JFNewsNoPicCell.swift
//  BaoNews
//
//  Created by WXQ on 17/1/14.
//  Copyright © 2017年 WXQ. All rights reserved.
//

import UIKit
import YYWebImage

class JFNewsNoPicCell: UITableViewCell {
    
    var postModel: JFArticleListModel? {
        didSet {
            articleTitleLabel.text = postModel?.title!
            timeLabel.text = postModel?.newstimeString
            commentLabel.text = postModel?.plnum!
            showNumLabel.text = postModel?.onclick!
        }
    }
    
    @IBOutlet weak var articleTitleLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var commentLabel: UILabel!
    @IBOutlet weak var showNumLabel: UILabel!
    
    override func layoutSubviews() {
        super.layoutSubviews()
        articleTitleLabel.preferredMaxLayoutWidth = SCREEN_WIDTH - 30
    }
    
    /**
     计算行高
     */
    func getRowHeight(_ postModel: JFArticleListModel) -> CGFloat {
        self.postModel = postModel
        layoutIfNeeded()
        return timeLabel.frame.maxY + 15
    }
}
