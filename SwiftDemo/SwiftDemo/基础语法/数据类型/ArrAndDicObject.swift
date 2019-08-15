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
        //判断数组是否为空
        if shoppingList.isEmpty {
            print("数组为空")
        }else{
            print("数组不为空")
        }
        
        shoppingList += ["hhh","kkk"]
        print("+=过后的数组\(shoppingList)")
        shoppingList[0] = "111"
        print("修改数组第一个元素\(shoppingList)")
        //移除数组不在事例
        //shoppingList.removeLast()
        
        if shoppingList.contains("hhh") {
            print("数组中包含hhh")
        }
        //数组遍历
        for item in shoppingList {
            print(item)
        }
        
        //数组遍历可以使用enumerated返回一个由索引值和数组值组成的元组数组
        for (index , value) in shoppingList.enumerated() {
            print("数组的索引：\(index),值:\(value)")
        }
        
        
    //集合Sets用来存储相同类型并且没有确定顺序的值。当集合元素顺序不重要时或者希望确保每个元素只出s现一次时可以使用集合，而不是数组
    //集合类型的哈希值，一个类型为了存储在集合中，该类型必须是可哈希化的--也就是说，该类型必须提供一个方法来计算它的哈希值。一个哈希值是Int类型，相等的对象哈希值必须相同，比如a == b,因此必须a.hashValue == b.hashValue。swift的所有基本类型（string，int,double,bool）默认都是可哈希化的，可以作为集合值的类型或者字典健的类型
        
        //创建一个空的集合
        var letters = Set<Character>()
        print("空集合：\(letters)")
        //插入数据
        letters.insert("a")
        print("集合letters:\(letters)")
        letters.insert("b")
        print("集合letters:\(letters)")
        letters.insert("c")
        print("集合letters:\(letters)")
        letters.insert("d")
        letters.insert("d")
        print("集合letters:\(letters)")
        print("集合的元素有\(letters.count)个")
        if letters.isEmpty {
            print("集合为空")
        }else{
            print("集合不为空")
        }
        
        if letters.contains("f"){
            print("集合中包含f")
        }else{
            print("集合中不包含f")
        }
        
        //遍历集合
        for item in letters {
            print("遍历集合:\(item)")
        }
        //集合的基本操作
        /**
         使用 intersection(_:) 方法根据两个集合的交集创建一个新的集合。
         使用 symmetricDifference(_:) 方法根据两个集合不相交的值创建一个新的集合。
         使用 union(_:) 方法根据两个集合的所有值创建一个新的集合。
         使用 subtracting(_:) 方法根据不在另一个集合中的值创建一个新的集合。
         */
        var letSet = Set<Character>()
        letSet.insert("a")
        letSet.insert("f")
        
        let interSet = letters.intersection(letSet)
        print("交集：\(interSet)")//交集：["a"]
        
        let symmSet = letters.symmetricDifference(letSet)
        print("两个集合不相交的组成新的集合：\(symmSet)")//两个集合不相交的组成新的集合：["b", "c", "f", "d"]
        
        let unionSet = letSet.union(letters)
        print("两个集合所有值创建新集合:\(unionSet)")//两个集合所有值创建新集合:["f", "a", "b", "c", "d"]
        
        let subSet = letters.subtracting(letSet)
        print("两个集合不在另一个集合中创建新的集合：\(subSet)")//两个集合不在另一个集合中创建新的集合：["c", "d", "b"]
        
        /**
         使用“是否相等”运算符（==）来判断两个集合包含的值是否全部相同。
         使用 isSubset(of:) 方法来判断一个集合中的所有值是否也被包含在另外一个集合中。
         使用 isSuperset(of:) 方法来判断一个集合是否包含另一个集合中所有的值。
         使用 isStrictSubset(of:) 或者 isStrictSuperset(of:) 方法来判断一个集合是否是另外一个集合的子集合或者父集合并且两个集合并不相等。
         使用 isDisjoint(with:) 方法来判断两个集合是否不含有相同的值（是否没有交集）。
         */
        //
//        let houseAnimals: Set = ["🐶", "🐱"]
//        let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
//        let cityAnimals: Set = ["🐦", "🐭"]
//        
//        houseAnimals.isSubset(of: farmAnimals)
//        // true
//        farmAnimals.isSuperset(of: houseAnimals)
//        // true
//        farmAnimals.isDisjoint(with: cityAnimals)
//        // true
        
        
        
        
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
