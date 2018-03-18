//
//  JFProfileTopButton.swift
//  BaoNews
//
//  Created by WXQ on 17/5/23.
//  Copyright © 2017年 WXQ. All rights reserved.
//

import UIKit

class JFProfileTopButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        titleLabel?.textAlignment = .center
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        imageView?.frame = CGRect(x: (frame.size.width - 22) * 0.5, y: 15, width: 22, height: 22)
        titleLabel?.frame = CGRect(x: 0, y: 38, width: frame.size.width, height: 20)
    }

}
