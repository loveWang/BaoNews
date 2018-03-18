//
//  JFArticleStorage.swift
//  BaoNews
//
//  Created by WXQ on 17/6/8.
//  Copyright © 2017年 WXQ. All rights reserved.
//

import UIKit
import YYWebImage

class JFArticleStorage: NSObject {
    
    /**
     根据key获取文件路径
     
     - parameter key: 存储的key，YYWebImage是用url作为key
     
     - returns: 返回文件的路径
     */
    class func getFilePathForKey(_ key: String) -> String {
        return "\(getArticleImageCache().diskCache.path)/data/\(JFObjcTool.jf_md5(key)!)"
    }
    
    /**
     获取自定义的文章图片缓存对象 - (换成系统默认的缓存了)
     
     - returns: 返回自定义缓存对象
     */
    class func getArticleImageCache() -> YYImageCache {
        // 返回自定义缓存对象
        return YYImageCache.shared()
    }
    
    
}
