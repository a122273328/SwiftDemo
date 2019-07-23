//
//  FuncAndClosuresObject.swift
//  SwiftDemo
//
//  Created by WZH on 2019/7/23.
//  Copyright © 2019 WZH. All rights reserved.
//

import UIKit

class FuncAndClosuresObject: NSObject {
    
    func test() -> Void {
        
        print("====方法和闭包====")
        
        print(self.greet(person: "张三", day:"周二" ))
        
        let statistics = self.calcuteStatistics(scores: [1,2,5,7,8,2,9,15,1])
        print("元组:\(statistics)")
        print("元组 最小值:\(statistics.min)")
        print("元组 最大值:\(statistics.max)")
        print("元组 和:\(statistics.sum)")
    
        
        print("====方法和闭包结束====")
        
    }
    
    //带参数，带返回值的方法
    func greet( person: String ,day:String) -> String {
        
        return "hello \(person), today is \(day)"
    }
    
    //使用元组创建复合值，例如，从函数返回多个值。元组的元素可以通过名称或数字来引用。
    
    //输入一个数组，返回最小值，最大值，和
    func calcuteStatistics(scores: [Int]) -> (min:Int,max:Int,sum:Int) {
        print("输入的数组是:\(scores)")
        
        var min = scores[0]
        var max = scores[0]
        var sum = 0
        for score in scores {
            if score > max{
                max = score
            }else{
                min = score
            }
            sum += score
        }
        print("最小值：\(min),最大值：\(max),和:\(sum)")
        return (min,max,sum)
    }
    

}
