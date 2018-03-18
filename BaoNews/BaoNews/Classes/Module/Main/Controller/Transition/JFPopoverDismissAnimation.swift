//
//  JFPopoverDismissAnimation.swift
//  BaoNews
//
//  Created by WXQ on 16/11/9.
//  Copyright © 2016年 WXQ. All rights reserved.
//

import UIKit

class JFPopoverDismissAnimation: NSObject, UIViewControllerAnimatedTransitioning {
    
    // 动画时间
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.5
    }
    
    // dismiss动画
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        
        // 获取到modal出来的控制器的view
        let fromView = transitionContext.view(forKey: UITransitionContextViewKey.from)!
        
        // 动画收起modal出来的控制器的view
        UIView.animate(withDuration: transitionDuration(using: nil), animations: {
            fromView.transform = CGAffineTransform(translationX: 0, y: (SCREEN_HEIGHT + 64))
        }, completion: { (_) in
            transitionContext.completeTransition(true)
        }) 
        
    }
}
