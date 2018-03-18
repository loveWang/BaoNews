//
//  JFCommon.swift
//  BaoNews
//
//  Created by WXQ on 17/1/1.
//  Copyright © 2017年 WXQ. All rights reserved.
//

import UIKit
import pop
import MJRefresh

/// 基于iPhone6垂直方向适配
///
/// - Parameter size: iPhone6垂直方向尺寸
/// - Returns: 其他型号尺寸
func layoutVertical(iPhone6: CGFloat) -> CGFloat {
    
    var newHeight: CGFloat = 0
    
    switch iPhoneModel.getCurrentModel() {
    case .iPhone5:
        newHeight = iPhone6 * (568.0 / 667.0)
    case .iPhone6:
        newHeight = iPhone6
    case .iPhone6p:
        newHeight = iPhone6 * (736.0 / 667.0)
    default:
        newHeight = iPhone6 * (1024.0 / 667.0 * 0.9)
    }
    
    return newHeight
    
}

/// 基于iPhone6水平方向适配
///
/// - Parameter iPhone6: iPhone6水平方向尺寸
/// - Returns: 其他型号尺寸
func layoutHorizontal(iPhone6: CGFloat) -> CGFloat {
    
    var newWidth: CGFloat = 0
    
    switch iPhoneModel.getCurrentModel() {
    case .iPhone5:
        newWidth = iPhone6 * (320.0 / 375.0)
    case .iPhone6:
        newWidth = iPhone6
    case .iPhone6p:
        newWidth = iPhone6 * (414.0 / 375.0)
    default:
        newWidth = iPhone6 * (768.0 / 375.0 * 0.9)
    }
    
    return newWidth
    
}

/// 基于iPhone6字体的屏幕适配
///
/// - Parameter iPhone6: iPhone字体大小
/// - Returns: 其他型号字体
func layoutFont(iPhone6: CGFloat) -> CGFloat {
    
    var newFont: CGFloat = 0
    
    switch iPhoneModel.getCurrentModel() {
    case .iPhone5:
        newFont = iPhone6 * (320.0 / 375.0)
    case .iPhone6:
        newFont = iPhone6
    case .iPhone6p:
        newFont = iPhone6 * (414.0 / 375.0)
    default:
        newFont = iPhone6 * 1.2
    }
    
    return newFont
}

/**
 手机型号枚举
 */
enum iPhoneModel {
    
    case iPhone4
    case iPhone5
    case iPhone6
    case iPhone6p
    case iPad
    
    /**
     获取当前手机型号
     
     - returns: 返回手机型号枚举
     */
    static func getCurrentModel() -> iPhoneModel {
        switch SCREEN_HEIGHT {
        case 480:
            return .iPhone4
        case 568:
            return .iPhone5
        case 667:
            return .iPhone6
        case 736:
            return .iPhone6p
        default:
            return .iPad
        }
    }
}

/**
 是否是夜间模式
 
 - returns: true 是夜间模式
 */
func isNight() -> Bool {
    return UserDefaults.standard.bool(forKey: NIGHT_KEY)
}

/**
 是否接收推送
 
 - returns: true 接收
 */
func isPush() -> Bool {
    return UserDefaults.standard.bool(forKey: PUSH_KEY)
}

/**
 给控件添加弹簧动画
 */
func jf_setupButtonSpringAnimation(_ view: UIView) {
    let sprintAnimation = POPSpringAnimation(propertyNamed: kPOPViewScaleXY)
    sprintAnimation?.fromValue = NSValue(cgPoint: CGPoint(x: 0.8, y: 0.8))
    sprintAnimation?.toValue = NSValue(cgPoint: CGPoint(x: 1, y: 1))
    sprintAnimation?.velocity = NSValue(cgPoint: CGPoint(x: 30, y: 30))
    sprintAnimation?.springBounciness = 20
    view.pop_add(sprintAnimation, forKey: "springAnimation")
}

/**
 快速创建上拉加载更多控件
 */
func setupFooterRefresh(_ target: AnyObject, action: Selector) -> MJRefreshAutoNormalFooter {
    let footerRefresh = MJRefreshAutoNormalFooter(refreshingTarget: target, refreshingAction: action)
    footerRefresh?.isAutomaticallyHidden = true
    footerRefresh?.setTitle("正在为您加载更多...", for: MJRefreshState.refreshing)
    footerRefresh?.setTitle("上拉即可加载更多...", for: MJRefreshState.idle)
    footerRefresh?.setTitle("没有更多数据啦...", for: MJRefreshState.noMoreData)
    return footerRefresh!
}

/**
 快速创建下拉加载最新控件
 */
func setupHeaderRefresh(_ target: AnyObject, action: Selector) -> MJRefreshNormalHeader {
    let headerRefresh = MJRefreshNormalHeader(refreshingTarget: target, refreshingAction: action)
    headerRefresh?.lastUpdatedTimeLabel.isHidden = true
    headerRefresh?.stateLabel.isHidden = true
    return headerRefresh!
}

/// 保存夜间模式的状态的key
let NIGHT_KEY = "night"

/// 保存正文字体类型的key
let CONTENT_FONT_TYPE_KEY = "contentFontType"

/// 保存正文字体大小的key
let CONTENT_FONT_SIZE_KEY = "contentFontSize"

/// 推送开关
let PUSH_KEY = "push"

/// appStore中的应用id
let APPLE_ID = "1115587250"

/// 更新搜索关键词列表的key
let UPDATE_SEARCH_KEYBOARD = "updateSearchKeyboard"

/// 导航栏背景颜色 - （红色）
let NAVIGATIONBAR_RED_COLOR = UIColor(red:0.831,  green:0.239,  blue:0.243, alpha:1)

/// 导航栏背景颜色 - (白色)
let NAVIGATIONBAR_WHITE_COLOR = UIColor.colorWithRGB(244, g: 244, b: 244)

/// 控制器背景颜色
let BACKGROUND_COLOR = UIColor(red:0.933,  green:0.933,  blue:0.933, alpha:1)

/// 全局边距
let MARGIN: CGFloat = 12

/// 全局圆角
let CORNER_RADIUS: CGFloat = 5

/// 屏幕宽度
let SCREEN_WIDTH = UIScreen.main.bounds.width

/// 屏幕高度
let SCREEN_HEIGHT = UIScreen.main.bounds.height

/// 屏幕bounds
let SCREEN_BOUNDS = UIScreen.main.bounds

/// 全局遮罩透明度
let GLOBAL_SHADOW_ALPHA: CGFloat = 0.6

/// shareSDK
let SHARESDK_APP_KEY = "132016f2c3a12"
let SHARESDK_APP_SECRET = "3c94e6038eff8073d82b426d52288ca7"

/// 微信
let WX_APP_ID = "wx2e1f6f0887148b6c"
let WX_APP_SECRET = "7ad13c3c6dae53e1584c205bf32146f9"

/// QQ
let QQ_APP_ID = "1105411292"
let QQ_APP_KEY = "WfKZYbDH68l7s9AU"

/// 微博
let WB_APP_KEY = "2664017296"
let WB_APP_SECRET = "6c5b97909709e89a72c0f949cc23f5f0"
let WB_REDIRECT_URL = "http://www.baokan.tv"

/// 极光推送
let JPUSH_APP_KEY = "8e0c2d457d44144fd2a6dc52"
let JPUSH_MASTER_SECRET = "a33a60f6935a625c251e33d0"
let JPUSH_CHANNEL = "Publish channel"
let JPUSH_IS_PRODUCTION = true
