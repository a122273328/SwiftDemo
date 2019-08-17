//
//  UUWZHHomeViewController.swift
//  UUFeirenSwift
//
//  Created by WZH on 2019/8/17.
//  Copyright © 2019 WZH. All rights reserved.
//

import UIKit

class UUWZHHomeViewController: UUBaseViewController {
    
    lazy var curretVC:UUCurrentPageViewController = {//懒加载大厅
        
        let currentVC = UUCurrentPageViewController()
        
        return currentVC
    }()
    
    lazy var orderListVC:UUWZHOrderListViewController = {//懒加载抢单列表
        
        let orderListVC = UUWZHOrderListViewController()
        
        return orderListVC
    }()
    
    lazy var underwayVC:UUWZHUnderwayViewController = {//来加载待完成列表
        
        let underwayVC = UUWZHUnderwayViewController()
        
        return underwayVC
    }()
    
    var collectionView: UICollectionView?
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //大厅头部滚动,以及按钮
        self.configTitleView()
        //创建大厅，抢单列表，待完成列表控制器的容器
        self.createdCollectionView()
    }
    
    func configTitleView(){
        
        let leftBtn = UIButton(type: .custom)
        leftBtn.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        leftBtn.setImage(UIImage(imageLiteralResourceName: "personalCenterEnterButton"), for: .normal)
        leftBtn.addTarget(self, action: #selector(personCenterFunction), for: .touchUpInside)
        let leftItem = UIBarButtonItem(customView: leftBtn)
        self.navigationItem.leftBarButtonItem = leftItem
        
        
        let rightBtn = UIButton(type: .custom)
        rightBtn.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        rightBtn.setImage(UIImage(imageLiteralResourceName: "DiscoverIcon"), for: .normal)
        rightBtn.addTarget(self, action: #selector(ActivityFunction), for: .touchUpInside)
        let rightItem = UIBarButtonItem(customView: rightBtn)
        self.navigationItem.rightBarButtonItem = rightItem
        
        
        let titleView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
        titleView.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        self.navigationItem.titleView = titleView
    }
    
    /// 大厅，抢单列表，待完成列表容器
    func createdCollectionView(){
        
        let width = UIScreen.main.bounds.size.width
        let height = UIScreen.main.bounds.size.height - 64
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: width, height: height)
        //垂直滚动
        //layout.scrollDirection = .vertical
        //水平滚动
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        
        self.collectionView = UICollectionView(frame: CGRect(x: 0, y: 64, width: width, height: height), collectionViewLayout: layout)
        self.collectionView?.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        self.collectionView?.dataSource = self
        self.collectionView?.delegate = self
        self.view.addSubview(self.collectionView ?? UICollectionView())
        self.collectionView?.register(HomeControllerCollectionViewCell.self, forCellWithReuseIdentifier: "HomeControllerCollectionViewCell")
        //设置翻页属性
        self.collectionView?.isPagingEnabled = true
        self.collectionView?.showsVerticalScrollIndicator = false
        self.collectionView?.showsHorizontalScrollIndicator = false
        
    }
    
    
    @objc func personCenterFunction(){
        print("个人中心")
    }
    
    @objc func ActivityFunction(){
        print("活动")
    }
    
    

}

extension UUWZHHomeViewController: UICollectionViewDataSource,UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeControllerCollectionViewCell", for: indexPath)
        cell.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        
        let width = UIScreen.main.bounds.size.width
        let height = UIScreen.main.bounds.size.height - 64
        switch indexPath.row {
        case 0:do {
            self.curretVC.view.frame = CGRect(x: 0, y: 0, width: width, height: height)
            cell.addSubview(self.curretVC.view)
        }
        case 1:do {
            self.orderListVC.view.frame = CGRect(x: 0, y: 0, width: width, height: height)
            cell.addSubview(self.orderListVC.view)
        }
        case 2:do {
            self.underwayVC.view.frame = CGRect(x: 0, y: 0, width: width, height: height)
            cell.addSubview(self.underwayVC.view)
        }
        default:
            self.curretVC.view.frame = CGRect(x: 0, y: 0, width: width, height: height)
            cell.addSubview(self.curretVC.view)
        }
        
        return cell
    }
    
    
}
