//
//  JFCollectionModel.swift
//  BaoNews
//
//  Created by WXQ on 17/5/26.
//  Copyright © 2017年 WXQ. All rights reserved.
//

import UIKit

class JFCollectionModel: NSObject {
    
    /// 文章标题
    var title: String?
    
    /// 文章分类id
    var classid: String?
    
    /// 文章id
    var id: String?
    
    /// 表名
    var tbname: String?
    
    /// 收藏时间
    var favatime: String?
    
    /// 收藏id
    var favaid: String?
    
    /// 收藏夹分类id
    var cid: String?
    
    init(dict: [String : AnyObject]) {
        super.init()
        setValuesForKeys(dict)
    }
    
    override func setValue(_ value: Any?, forUndefinedKey key: String) {}
}
