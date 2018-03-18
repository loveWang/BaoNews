//
//  JFSearchKeyboardModel.swift
//  BaoNews
//
//  Created by WXQ on 17/6/27.
//  Copyright © 2017年 WXQ. All rights reserved.
//

import UIKit

class JFSearchKeyboardModel: NSObject {

    /// 关键词
    var keyboard: String?
    
    /// 拼音
    var pinyin: String?
    
    /// 结果数量
    var num: Int = 1
    
    init(dict: [String : AnyObject]) {
        super.init()
        setValuesForKeys(dict)
    }
    
    override func setValue(_ value: Any?, forUndefinedKey key: String) {}
    
    /**
     加载搜索关键词数据
     
     - parameter keyboard: 关键词
     - parameter finished: 数据回调
     */
    class func loadSearchKeyList(_ keyboard: String, finished: @escaping (_ searchKeyboardModels: [JFSearchKeyboardModel]?, _ error: NSError?) -> ()) {
        
        JFNewsDALManager.shareManager.loadSearchKeyListFromLocation(keyboard) { (success, result, error) in
            
            guard let successResult = result, error == nil && success == true else {
                finished(nil, error)
                return
            }
            
            var searchKeyboardModels = [JFSearchKeyboardModel]()
            
            for dict in successResult {
                let model = JFSearchKeyboardModel(dict: dict)
                searchKeyboardModels.append(model)
            }
            
            finished(searchKeyboardModels, error)
        }
    }
}
