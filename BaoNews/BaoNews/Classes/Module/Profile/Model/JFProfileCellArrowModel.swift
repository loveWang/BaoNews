//
//  JFProfileCellArrowModel.swift
//  BaoNews
//
//  Created by WXQ on 17/5/5.
//  Copyright © 2017年 WXQ. All rights reserved.
//

import UIKit

class JFProfileCellArrowModel: JFProfileCellModel {

    /// 目标控制器
    var destinationVc: AnyClass?
    
    init(title: String, destinationVc: AnyClass) {
        self.destinationVc = destinationVc
        super.init(title: title)
    }
    
    override init(title: String) {
        super.init(title: title)
    }
    
    override init(title: String, icon: String) {
        super.init(title: title, icon: icon)
    }
    
    init(title: String, icon: String, destinationVc: AnyClass) {
        self.destinationVc = destinationVc
        super.init(title: title, icon: icon)
    }
}
