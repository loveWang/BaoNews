//
//  JFNewsThreePicCell.swift
//  BaoNews
//
//  Created by WXQ on 17/1/14.
//  Copyright © 2017年 WXQ. All rights reserved.
//

import UIKit
import YYWebImage

class JFNewsThreePicCell: UITableViewCell {
    
    var postModel: JFArticleListModel? {
        didSet {
            if postModel?.morepic?.count == 1 {
                iconView1.image = nil
                iconView1.yy_setImage(with: URL(string: postModel!.morepic![0]), placeholder: UIImage(named: "placeholder_logo"))
            } else if postModel?.morepic?.count == 2 {
                iconView1.image = nil
                iconView2.image = nil
                iconView1.yy_setImage(with: URL(string: postModel!.morepic![0]), placeholder: UIImage(named: "placeholder_logo"))
                iconView2.yy_setImage(with: URL(string: postModel!.morepic![1]), placeholder: UIImage(named: "placeholder_logo"))
            } else if postModel?.morepic?.count == 3 {
                iconView1.image = nil
                iconView2.image = nil
                iconView3.image = nil
                iconView1.yy_setImage(with: URL(string: postModel!.morepic![0]), placeholder: UIImage(named: "placeholder_logo"))
                iconView2.yy_setImage(with: URL(string: postModel!.morepic![1]), placeholder: UIImage(named: "placeholder_logo"))
                iconView3.yy_setImage(with: URL(string: postModel!.morepic![2]), placeholder: UIImage(named: "placeholder_logo"))
            }
            
            articleTitleLabel.text = postModel?.title!
            timeLabel.text = postModel?.newstimeString
            commentLabel.text = postModel?.plnum!
            showNumLabel.text = postModel?.onclick!
        }
    }
    
    @IBOutlet weak var iconView1: UIImageView!
    @IBOutlet weak var iconView2: UIImageView!
    @IBOutlet weak var iconView3: UIImageView!
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
