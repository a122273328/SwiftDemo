//
//  VariableObject.swift
//  SwiftDemo
//
//  Created by WZH on 2019/7/20.
//  Copyright © 2019 WZH. All rights reserved.
//

import UIKit

class VariableObject: NSObject {
    
    func echoStr() -> Void {
        print("1:hello world!")
    }
    
    func varTest() -> Void {
        /**
         常量或变量必须要分配具有相同类型的值，但是并不是必须明确写入类型。
         编译器会自动判断其类型
         */
        print("2:====变量常量开始：常量或变量必须要分配具有相同类型的值，但是并不是必须明确写入类型。编译器会自动判断其类型=====")
        //变量
        var myVariable = 41
        print(myVariable)
        myVariable = 42
        print(myVariable)
        //常量
        let myConstant = 10
        print(myConstant)
        //myConstant = 11 不能够再次赋值
        print("====变量常量结束=====")
        
        print("3:====初始值不能给正确反应变量类型，可以明确变量的类型用冒号分隔开=====")
        let impInteger = 70
        print("整形值：\(impInteger)")
        let impDouble = 70.00
        print("浮点值：\(impDouble)")
        let expDouble:Double = 70
        print("浮点值：\(expDouble)")
        let str = "====初始值不能给正确反应变量类型，可以明确变量的类型用冒号分隔开====="
        print(str);
        let strt:String = "====结束====="
        print(strt);
        
        print("4:====转换为字符串反斜杠+()====");
        //1
        let label = "the width is"
        let width = 50
        let widthLabel = label+String(width)
        print(widthLabel)
        //2
        let apples = 3
        let oranges = 5
        let applesSum = "you have \(apples) apples."
        let orangesSum = "you have \(oranges) oranges."
        print(applesSum)
        print(orangesSum)
        let fruitSum = "you have \(apples + oranges) pieces of fruit."
        print(fruitSum)
        //"""对于占用多行的字符串
        let quotation = """
        you said "you have \(apples) apples."
        and then you said "you have\(apples + oranges) pieces of fruit."
        """
        let quotation1 = """
        1=哈哈
        2=嘿嘿
        """
        print(quotation)
        print(quotation1)
        print("====转换为字符串反斜杠+()结束====");
    }
}
