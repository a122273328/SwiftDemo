//
//  UUCurrentPageViewController.swift
//  UUFeirenSwift
//
//  Created by WZH on 2019/8/17.
//  Copyright © 2019 WZH. All rights reserved.
//

import UIKit

class UUCurrentPageViewController: UUBaseViewController {
    @IBOutlet weak var contentWidth: NSLayoutConstraint!
    
    @IBOutlet weak var contentHeight: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()

        let http = HTTPTool()
        print(http)
        //初始化约束
        self.configConstraint()
    }
    
    /// 初始化约束
    func configConstraint(){
        
        self.contentWidth.constant = UIScreen.main.bounds.size.width
        self.contentHeight.constant = 700
        
    }


    

}
