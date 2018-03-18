//
//  JFAboutMeViewController.swift
//  BaoNews
//
//  Created by WXQ on 17/6/11.
//  Copyright © 2017年 WXQ. All rights reserved.
//

import UIKit

class JFAboutMeViewController: UIViewController {

    override func loadView() {
        view = UIWebView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        
        let htmlPath = Bundle.main.path(forResource: "aboutme.html", ofType: nil)!
        let htmlString = try! String(contentsOfFile: htmlPath, encoding: String.Encoding.utf8)
        (view as! UIWebView).loadHTMLString(htmlString, baseURL: URL(fileURLWithPath: htmlPath))
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        UIApplication.shared.statusBarStyle = UIStatusBarStyle.default
        navigationController?.setNavigationBarHidden(false, animated: true)
    }

}
