//
//  JFUserCommentModel.swift
//  BaoNews
//
//  Created by WXQ on 17/5/26.
//  Copyright © 2017年 WXQ. All rights reserved.
//

import UIKit

class JFUserCommentModel: NSObject {
    
    var title: String?
    
    var saytext: String?
    
    var saytime: String?
    
    var id: String?
    
    var classid: String?
    
    var tbname: String?
    
    var plid: String?
    
    var plstep: String?
    
    var plusername: String?
    
    var zcnum: String?
    
    var userpic: String?
    
    init(dict: [String : AnyObject]) {
        super.init()
        setValuesForKeys(dict)
    }
    
    override func setValue(_ value: Any?, forUndefinedKey key: String) {}
    
}
