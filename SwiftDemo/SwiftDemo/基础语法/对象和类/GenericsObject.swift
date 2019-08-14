//
//  GenericsObject.swift
//  SwiftDemo
//
//  Created by WZH on 2019/7/25.
//  Copyright © 2019 WZH. All rights reserved.
//

import UIKit

class GenericsObject: NSObject {
    
    func test(){
        print("====范型====")
        //非范型
        var a = 1
        var b = 2
        self.swapTwoInts(a: &a, b: &b)
        print("a:\(a),b\(b)")
        
        //范型
        var c = 1
        var d = 2
        self.swapTwoIntsGenerics(a: &c, b: &d)
        print("a:\(c),b\(d)")
        
        var e = "hello"
        var f = "world!"
        self.swapTwoIntsGenerics(a: &e, b: &f)
        print("a:\(e),b\(f)")
        
        
        let arr = self.makeArray(repeating: "haha", numberOfTimes: 5)
        print(arr)
        
        print("====范型====")
    }
    
    //标准非范型函数 交互值 ,该函数参数只能是int
    func swapTwoInts(a: inout Int,b:inout Int){
        
        let temp = a
        a = b
        b = temp
    }
    
    //范型函数,h该函数参数可以是任何类型 T只是占位符，不是实际的类型名，没有明确指明T必须是那种类型，只是指明a,b必须是同意类型
    func swapTwoIntsGenerics<T>(a:inout T,b:inout T){
        
        let temp = a
        a = b
        b = temp
    }
    
    func makeArray<Item>(repeating item:Item,numberOfTimes:Int) -> [Item] {
        var result = [Item]()
        for _ in 0 ..< numberOfTimes {
            result.append(item)
        }
        return result
    }
    

}
