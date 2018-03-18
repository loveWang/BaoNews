//
//  JFPopoverModalAnimation.swift
//  BaoNews
//
//  Created by WXQ on 16/11/9.
//  Copyright © 2016年 WXQ. All rights reserved.
//

import UIKit

class JFPopoverModalAnimation: NSObject, UIViewControllerAnimatedTransitioning {
    
    // 动画时间
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.5
    }
    
    // modal动画
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        
        // 获取到需要modal的控制器的view
        let toView = transitionContext.view(forKey: UITransitionContextViewKey.to)!
        toView.alpha = 0
        
        // 将需要modal的控制器的view添加到容器视图
        transitionContext.containerView.addSubview(toView)
        
        // 默认让视图在顶部
        toView.transform = CGAffineTransform(translationX: 0, y: (SCREEN_HEIGHT + 64))
        
        UIView.animate(withDuration: transitionDuration(using: nil), animations: { 
            toView.transform = CGAffineTransform.identity
            toView.alpha = 1
            }, completion: { (_) in
                transitionContext.completeTransition(true)
        }) 
    }
}
