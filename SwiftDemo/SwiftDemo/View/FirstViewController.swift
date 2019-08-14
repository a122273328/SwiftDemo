//
//  FirstViewController.swift
//  SwiftDemo
//
//  Created by WZH on 2019/8/14.
//  Copyright © 2019 WZH. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    public var parser = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("参数\(parser)")
        //普通view
        createdView()
        //按钮
        createdBtn()
        //label
        createdLabel()
        //图片
        createdImage()
        //列表
        createdTableview()
        //滑动视图
        createdScrollview()
        //collection
        createdCollectionView()
    }
    
    func createdView(){
        //创建view
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        //设置背景
        view.backgroundColor = UIColor.init(red: 20/255.0, green: 100/255.0, blue: 90/255.0, alpha: 0.5)
        //切边
        //view.clipsToBounds = true
        view.layer.masksToBounds = true
        view.layer.cornerRadius = 50
        //是否隐藏
        view.isHidden = false
        self.view.addSubview(view)
        view.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer(target: self, action:#selector(viewTapAction))
        view.addGestureRecognizer(tap)
        
        
        
    }
    
    @objc func viewTapAction(tap:UITapGestureRecognizer){
        print("view的点击事件")
    }
    
    func createdBtn(){
        let btn = UIButton()
        btn.setTitle("123", for: UIControl.State.normal)
        btn.backgroundColor = UIColor.red
        btn.frame = CGRect.init(x: 100, y: 0, width: 50, height: 50)
        btn.addTarget(self, action:#selector(btnAction(_:)), for: .touchUpInside)
        self.view.addSubview(btn)
    }
    
    @objc func btnAction(_ sender:UIButton){
        
        print("hahahahha")
    }
    
    
    func createdLabel(){
        
        let label = UILabel(frame: CGRect(x: 150, y: 0, width: 100, height: 60))
        label.text = "我是label我是label"
        label.backgroundColor = UIColor.cyan
        label.textColor = #colorLiteral(red: 1, green: 0.9056723151, blue: 0.01176470588, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 20)
        label.numberOfLines = 0
        label.textAlignment = .center

        self.view.addSubview(label)
    }
    
    func createdImage(){
        
        let imageview = UIImageView(image: #imageLiteral(resourceName: "deleteItemPhoto"))
        imageview.frame = CGRect(x: 250, y: 0, width: 50, height: 50)
        imageview.backgroundColor = #colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1)
        self.view.addSubview(imageview)
        
        let imageview1 = UIImageView(image: UIImage(named:"cameraSubmit"))
        imageview1.frame = CGRect(x: 300, y: 0, width: 50, height: 50)
        imageview1.backgroundColor = #colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1)
        self.view.addSubview(imageview1)
    }


    @IBAction func testAction(_ sender: UIButton) {
    }
    
    
    func createdTableview(){
        
        let tableView = UITableView(frame: CGRect(x: 0, y: 100, width: self.view.frame.size.width, height: 200), style: .plain)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 30
        //注册cell
        tableView.register(UINib.init(nibName: "FirstTableViewCell", bundle: nil), forCellReuseIdentifier: "FirstTableViewCell")
        self.view.addSubview(tableView)
        
    }
    
    func createdScrollview(){
        
        let scrollView = UIScrollView(frame: CGRect(x: 0, y: 300, width: self.view.frame.size.width, height: 100))
        scrollView.delegate = self
        scrollView.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        scrollView.contentSize = CGSize(width: 1000, height: 100)
        scrollView.showsVerticalScrollIndicator = true
        scrollView.showsHorizontalScrollIndicator = true
        self.view.addSubview(scrollView)
        
        let arr = ["itemImage","itemImage","itemImage","itemImage","itemImage","itemImage","itemImage","itemImage","itemImage","itemImage"]
        
        var i = 0
        for str in arr {
            let imageView = UIImageView(frame: CGRect(x: 100*i, y: 0, width: 100, height: 100))
            imageView.image = UIImage.init(imageLiteralResourceName: str)
            scrollView.addSubview(imageView)
            i+=1
        }
        
        
    }
    
    func createdCollectionView(){
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 100, height: 100)
        //垂直滚动
        layout.scrollDirection = .vertical
        //水平滚动
        //layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 10
        layout.minimumInteritemSpacing = 0
        
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        
        let collectionView = UICollectionView(frame: CGRect(x: 0, y: 410, width: self.view.frame.size.width, height: 130), collectionViewLayout: layout)
        collectionView.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        collectionView.dataSource = self
        collectionView.delegate = self
        self.view.addSubview(collectionView)
        collectionView.register(UINib(nibName: "FirstCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "FirstCollectionViewCell")
        
    }
    

}

extension FirstViewController:UITableViewDelegate,UITableViewDataSource,UIScrollViewDelegate,UICollectionViewDataSource,UICollectionViewDelegate{
    
    
    //cell的的代理数据源方法
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "FirstTableViewCell") as! FirstTableViewCell
        
        if indexPath.row%2 == 0{
            cell.textLabel?.text = "你好！"
            cell.backgroundColor = #colorLiteral(red: 1, green: 0.9056723151, blue: 0.01176470588, alpha: 1)
        }else{
            cell.backgroundColor = #colorLiteral(red: 1, green: 0.6159420609, blue: 0, alpha: 1)
            cell.textLabel?.text = "嗯，你好！"
        }
        cell.setSelected(false, animated: true)
        return cell 
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("选择了第\(indexPath.row)个")
    }
    
    //滑动视图的代理方法
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print(scrollView.contentOffset.x)
    }
    
    
    //collection的代理
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10;
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FirstCollectionViewCell", for: indexPath)
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("选择第\(indexPath.row)个item")
    }
    
}
