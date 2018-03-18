//
//  JFProfileCellSwitchModel.swift
//  BaoNews
//
//  Created by WXQ on 17/5/5.
//  Copyright © 2017年 WXQ. All rights reserved.
//

import UIKit

class JFProfileCellSwitchModel: JFProfileCellModel {
    
    /// 开关状态
    var on: Bool {
        return UserDefaults.standard.bool(forKey: NIGHT_KEY)
    }
    
}
