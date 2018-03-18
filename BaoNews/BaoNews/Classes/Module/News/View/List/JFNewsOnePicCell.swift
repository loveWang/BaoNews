//
//  JFNewsOnePicCell.swift
//  BaoNews
//
//  Created by WXQ on 17/1/14.
//  Copyright © 2017年 WXQ. All rights reserved.
//

import UIKit
import YYWebImage

class JFNewsOnePicCell: UITableViewCell {
    
    var postModel: JFArticleListModel? {
        didSet {
            iconView.image = nil
            iconView.yy_setImage(with: URL(string: postModel!.titlepic!), placeholder: UIImage(named: "placeholder_logo"))
            articleTitleLabel.text = postModel?.title!
            timeLabel.text = postModel?.newstimeString
            commentLabel.text = postModel?.plnum!
            showNumLabel.text = postModel?.onclick!
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        // 图片宽度固定
        articleTitleLabel.preferredMaxLayoutWidth = SCREEN_WIDTH - 133
    }
    
    @IBOutlet weak var iconView: UIImageView!
    @IBOutlet weak var articleTitleLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var commentLabel: UILabel!
    @IBOutlet weak var showNumLabel: UILabel!
    
}
