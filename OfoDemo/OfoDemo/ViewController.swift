//
//  ViewController.swift
//  OfoDemo
//
//  Created by 朱乐乐 on 2018/9/12.
//  Copyright © 2018年 朱乐乐. All rights reserved.
//

import UIKit
import SWRevealViewController


class ViewController: UIViewController {
    
    
    @IBOutlet weak var panelView: UIView!
    
    // 定位按钮触发方法
    @IBAction func locationBtnTap(_ sender: UIButton) {
        
        
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // 设置导航图标
        self.navigationItem.titleView = UIImageView(image: #imageLiteral(resourceName: "ofoLogo"))
        self.navigationItem.leftBarButtonItem?.image = #imageLiteral(resourceName: "leftTopImage").withRenderingMode(.alwaysOriginal)
        self.navigationItem.rightBarButtonItem?.image = #imageLiteral(resourceName: "rightTopImage").withRenderingMode(.alwaysOriginal)
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
        if let revealVC = revealViewController() {
            revealVC.rearViewRevealWidth = 280
            navigationItem.leftBarButtonItem?.target = revealVC
            navigationItem.leftBarButtonItem?.action = #selector(SWRevealViewController.revealToggle(_:))
            view.addGestureRecognizer(revealVC.panGestureRecognizer())
        }

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

