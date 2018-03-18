//
//  JFProfileCellGroupModel.swift
//  BaoNews
//
//  Created by WXQ on 17/5/5.
//  Copyright © 2017年 WXQ. All rights reserved.
//

import UIKit

class JFProfileCellGroupModel: NSObject {
    
    var cells: [JFProfileCellModel]?
    
    var headerTitle: String?
    
    var footerTitle: String?
    
    init(cells: [JFProfileCellModel]) {
        self.cells = cells
        super.init()
    }
    
}
