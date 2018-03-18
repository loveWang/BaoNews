//
//  JFPresentationController.swift
//  BaoNews
//
//  Created by WXQ on 16/11/9.
//  Copyright © 2016年 WXQ. All rights reserved.
//

import UIKit

class JFNewsPhotoPresentationController: UIPresentationController {
    
    override func containerViewWillLayoutSubviews() {
        super.containerViewWillLayoutSubviews()
        
        presentedView?.frame = SCREEN_BOUNDS
    }
    
}
