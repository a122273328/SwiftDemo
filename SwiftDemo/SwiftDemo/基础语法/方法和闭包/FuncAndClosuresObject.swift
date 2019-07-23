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
        //带参数，带返回值的方法
        print(self.greet(person: "张三", day:"周二" ))
        
        //使用元组创建复合值，例如，从函数返回多个值。元组的元素可以通过名称或数字来引用。
        let statistics = self.calcuteStatistics(scores: [1,2,5,7,8,2,9,15,1])
        print("元组:\(statistics)")
        print("元组 最小值:\(statistics.min)")
        print("元组 最大值:\(statistics.max)")
        print("元组 和:\(statistics.sum)")
        
        //函数嵌套
        print("====函数嵌套====")
        let y:Int = self.returnFifteen()
        print(y);
        
        print("====函数嵌套 函数作为返回值====")
        let increment = makeIncrementer()
        print(increment(7))
        
        print("====函数嵌套 函数作为参数====")
        print(self.hasAnyMatches(list: [20,19,7,12], condition:lessThanTen))
        
        //函数实际上是闭包的一种特殊情况：可以在以后调用的代码块。闭包中的代码可以访问创建闭包的作用域中可用的变量和函数，即使闭包在执行时处于不同的作用域 - 您已经看到了嵌套函数的示例。您可以使用大括号（{}）来编写没有名称的闭包。使用in分离的参数和从身体返回类型。
        let numbers = [20, 19, 7, 12]
        let mapNumbers = numbers.map({ (number: Int) -> Int in
            let result = 3 * number
            return result
        })
        print(mapNumbers)
        //[60, 57, 21, 36]
        //简写模式
        let mapNumbers1 = numbers.map({number in 3 * number})
        print(mapNumbers1)
        //[60, 57, 21, 36]
        
        
        
        
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
    
    //函数可以嵌套，嵌套函数可以访问外部函数声明的变量。可以使用嵌套函数来组织长或复杂函数中的代码。
    func returnFifteen() -> Int {
        
        var y = 10
        
        func add(){
            y+=5
        }
        
        add()
        return y
    }
    
    //这意味着函数可以返回另一个函数作为其值。
    func makeIncrementer() -> ((Int) -> Int) {
        
        func addOne(number:Int)-> Int{
            return 1 + number
        }
        return addOne
    }
    
    //这样写报错，因为返回时一个函数，而这样者返回的是一个Int
//    func makeIncrementer1(number:Int) -> ((Int) -> Int) {
//
//        func addOne(number:Int)-> Int{
//            return 2 + number
//        }
//        return addOne(number: number)
//    }
    
    //函数作为参数
    func hasAnyMatches(list:[Int],condition:(Int)->Bool) -> Bool {
        
        for item in list {
            if condition(item){
                return true
            }
        }
        return false
    }
    //找出不到10的
    func lessThanTen(number:Int) -> Bool {
        return number < 10
    }
    
    
  
    
}
