//
//  JFDetailOtherCell.swift
//  BaoNews
//
//  Created by WXQ on 17/2/24.
//  Copyright © 2017年 WXQ. All rights reserved.
//

import UIKit
import YYWebImage

class JFDetailOtherNoneCell: UITableViewCell {
    
    @IBOutlet weak var articleTitleLabel: UILabel!
    @IBOutlet weak var befromLabel: UILabel!
    @IBOutlet weak var showNumLabel: UILabel!
    
    var model: JFOtherLinkModel? {
        didSet {
            articleTitleLabel.text = model!.title!
            befromLabel.text = model!.classname!
            showNumLabel.text = model!.onclick!
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        articleTitleLabel.preferredMaxLayoutWidth = SCREEN_WIDTH - 30
    }
    
    /**
     计算行高
     */
    func getRowHeight(_ model: JFOtherLinkModel) -> CGFloat {
        self.model = model
        layoutIfNeeded()
        return showNumLabel.frame.maxY + 15
    }
    
    
}
