//
//  ArrAndDicObject.swift
//  SwiftDemo
//
//  Created by WZH on 2019/7/23.
//  Copyright © 2019 WZH. All rights reserved.
//

import UIKit

class ArrAndDicObject: NSObject {

    func Test() -> Void {
        
        print("5:====数组字典====")
        //创建数组
        var shoppingList = ["catfish","water","tulips"]
        print(shoppingList)
        //访问数组中的元素 修改水为一瓶水
        shoppingList[1] = "bottle of water"
        print(shoppingList[1])
        //添加元素
        shoppingList.append("foot")
        print(shoppingList)
        
        //创建字典
        var occupations = [
            "张三" : "程序员",
            "李四" : "产品"
        ]
        print(occupations)
        //直接给字典添加key-values
        occupations["王五"] = "啥都会"
        print(occupations)
        
        //创建空数组
        var emptyArr = [String]()
        print(emptyArr)
        emptyArr.append("你好")
        print(emptyArr)
        //创建空字典
        var emptyDic = [String:integer_t]()
        print(emptyDic)
        emptyDic["小明"] = 10
        print(emptyDic)
        
        print("5:====数组字典结束====")
    }
}
