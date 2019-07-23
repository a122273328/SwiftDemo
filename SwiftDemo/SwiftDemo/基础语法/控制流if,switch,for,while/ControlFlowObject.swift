//
//  ControlFlowObject.swift
//  SwiftDemo
//
//  Created by WZH on 2019/7/23.
//  Copyright © 2019 WZH. All rights reserved.
//

import UIKit

class ControlFlowObject: NSObject {
    
    func test() -> Void {
        print("====控制流====")

        //正常循环 条件语句
        let arr = [75, 43, 103, 87, 12]
        var teamScore = 0
        for score in arr {
            if score > 50 {
                teamScore += 3
            }else{
                teamScore += 1
            }
        }
        print(teamScore)
        
        //可选值
    //您可以使用if和let一起处理可能缺少的值。这些值表示为选项。可选值包含值或包含nil以指示缺少值。?在值的类型后面写一个问号（）以将值标记为可选。
        let optionalName: String? = "hello"
        print(optionalName == "hello")
        print(optionalName == nil)

        let name:String? = "hhh"
        print(name == nil)
        
        let optionalString:String? = "哈哈"
        var greeting = "hello!"
        if let name = optionalString {
            greeting = "hello,\(name)"
            print(greeting)
        }
   //如果是可选值nil，则条件为，false并且跳过括号中的代码。否则，将解包可选值并将其分配给常量let，这使得在代码块内可用的展开值可用。
        let optionalString1:String? = nil
        var greeting1 = "hello!"
        if let name = optionalString1 {
            greeting1 = "hello,\(name)"
            print(greeting1)
        }
        
        //处理可选值的另一种方法是使用??运算符提供默认值。如果缺少可选值，则使用默认值。
        let nickName:String? = nil
        let fullName:String = "jack"
        let fillName = "hi \(nickName ?? fullName)"
        print(fullName)
        print(fillName)
        
        let nickName1:String? = "aaa"
        let fillName1 = "hi \(nickName1 ?? fullName)"
        print(fillName1)
        
        
        //switch支持任何类型的数据和各种各样的比较操作 - 它们不仅限于整数和相等的测试。
        print("====switch支持任何类型的数据和各种各样的比较操作 - 它们不仅限于整数和相等的测试。====")
        let vegetable = "red pepper"
        switch vegetable {
        case "dasda":
            print("瞎打")
        case "red":
            print("瞎打")
        case "pepper":
            print("瞎打")
        case "red pepper":
            print("来了")
        default:
            print("没有呵呵😄")
        }
        
        let vegetable1 = "red pepper"
        switch vegetable1 {
        case "dasda":
            print("瞎打")
        case "red":
            print("瞎打")
        case "pepper":
            print("瞎打")
        default:
            print("没有呵呵😄")
        }
        
        
        print("====您可以使用for- in通过提供一对用于每个键值对的名称来迭代字典中的项目。字典是无序集合，因此它们的键和值以任意顺序迭代。====")
        let interestingNumbers = [
            "prime":[2,3,5,7,11,13],
            "fibonacci":[1,1,2,3,5,8],
            "square":[1,4,9,16,25]
        ]
        var largest = 0
        for (key,numbers) in interestingNumbers {
            //字典无序，每次遍历的都不会按照顺序进行
            print("key:\(key)")
            print("value:\(numbers)")
            for number in numbers{
                if number > largest {
                    largest = number
                }
            }
        }
        print("字典中最大的数字是\(largest)")
        
        //while
        print("====while====")
        var n = 2
        while n < 100 {
            print(n)
            n *= 2
        }
        print(n)
        
        print("======")
        var m = 2
        repeat {
            print(m)
            m *= 2
        }while m < 100
        print(m)
        
        print("====")
        print("通过使用..<一系列索引来保持循环中的索引。")
        var total = 0
        for i in 0..<10 {
            print("i:\(i)")
            print("total:\(total)")
            total += i
        }
        print(total)
        
        
    
        print("====控制流结束====")
    }
}
