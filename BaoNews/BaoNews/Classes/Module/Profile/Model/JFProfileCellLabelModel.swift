//
//  JFProfileCellLabelModel.swift
//  BaoNews
//
//  Created by WXQ on 17/5/5.
//  Copyright © 2017年 WXQ. All rights reserved.
//

import UIKit

class JFProfileCellLabelModel: JFProfileCellModel {

    /// 显示文本
    var text: String?
    
    init(title: String, text: String) {
        self.text = text
        super.init(title: title)
    }
    
    init(title: String, icon: String, text: String) {
        self.text = text
        super.init(title: title, icon: icon)
    }
}
