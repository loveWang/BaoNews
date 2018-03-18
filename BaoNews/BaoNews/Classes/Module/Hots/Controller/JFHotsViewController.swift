//
//  JFHotsViewController.swift
//  BaoNews
//
//  Created by WXQ on 16/12/20.
//  Copyright © 2016年 WXQ. All rights reserved.
//

import UIKit

class JFHotsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(newsVc.view)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
        navigationController?.navigationBar.barTintColor = NAVIGATIONBAR_RED_COLOR
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIApplication.shared.statusBarStyle = UIStatusBarStyle.lightContent
    }
    
    @IBAction func didTappedSearchButton(_ sender: UIButton) {
        navigationController?.pushViewController(JFSearchViewController(), animated: true)
    }
    
    // MARK: - 懒加载
    lazy var newsVc: JFNewsTableViewController = {
        let newsVc = JFNewsTableViewController()
        self.addChildViewController(newsVc)
        newsVc.view.frame = self.view.bounds
        newsVc.classid = 461
        return newsVc
    }()

}
