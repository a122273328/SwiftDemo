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
        
        //类型注解
        let welcomeMessage : String = "haha"
        print(welcomeMessage)
        //定义多个同类型的变量，用逗号分割，并在最后一个变量h名后添加类型注解
        var red,green,blue:Double
        red = 1.00
        green = 2.00
        blue = 3.00
        
        //一般情况下不会使用类型注解，swift会自动判断类型
        
        //变量名字可以包含任何字符
        let π = 3.1415926
        let 你好 = "你好啊。"
        let 🐂🐂 = "牛啊🐂"
        print("\(你好)\(π)\(🐂🐂)")
        
        
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
        
        //swift不要求每行代码结束都适用;分号，如果需要一行处理多条独立语句需要加;
        let cat = "🐱"; print(cat);
        
        //Int
        /**
         一般来说，你不需要专门指定整数的长度。Swift 提供了一个特殊的整数类型 Int，长度与当前平台的原生字长相同：
         在32位平台上，Int 和 Int32 长度相同。
         在64位平台上，Int 和 Int64 长度相同。
         除非你需要特定长度的整数，一般来说使用 Int 就够了。这可以提高代码一致性和可复用性。即使是在32位平台上，Int 可以存储的整数范围也可以达到 -2,147,483,648 ~ 2,147,483,647，大多数时候这已经足够大了。
         */
        
        //UInt
        /**
         UInt
         Swift 也提供了一个特殊的无符号类型 UInt，长度与当前平台的原生字长相同：
         在32位平台上，UInt 和 UInt32 长度相同。
         在64位平台上，UInt 和 UInt64 长度相同。
         注意
         尽量不要使用 UInt，除非你真的需要存储一个和当前平台原生字长相同的无符号整数。除了这种情况，最好使用 Int，即使你要存储的值已知是非负的。统一使用 Int 可以提高代码的可复用性，避免不同类型数字之间的转换，并且匹配数字的类型推断
         */
        
        
        //整数何浮点数转换
        let three = 3
        let point = 0.14159
        let pi = Double(three) + point
        print(pi)
        //转化整数
        let inter = Int(pi)
        print(inter)
        
        
        //元组
        //元组（tuples）把多个值组合成一个复合值。元组内的值可以是任意类型，并不要求是相同类型。你可以把任意顺序的类型组合成一个元组，这个元组可以包含所有类型。只要你想，你可以创建一个类型为 (Int, Int, Int) 或者 (String, Bool) 或者其他任何你想要的组合的元组。
        let httpError = (404,"not found","呵呵")
        print(httpError)
        
        
        //错误处理
        
        func canThrowAnError()throws -> String{
            return "jjjj"
        }
        
        
        
        
        
        
    }
}
