//
//  JFProfileCellModel.swift
//  BaoNews
//
//  Created by WXQ on 17/5/5.
//  Copyright © 2017年 WXQ. All rights reserved.
//

import UIKit

class JFProfileCellModel: NSObject {
    
    typealias ProfileOperation = () -> ()
    
    var title: String?
    var subTitle: String?
    var icon: String?
    var operation: ProfileOperation?
    
    init(title: String) {
        self.title = title
        super.init()
    }
    
    init(title: String, icon: String) {
        self.title = title
        self.icon = icon
        super.init()
    }
}
