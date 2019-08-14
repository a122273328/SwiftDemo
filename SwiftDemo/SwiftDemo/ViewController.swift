//
//  ViewController.swift
//  SwiftDemo
//
//  Created by WZH on 2019/7/20.
//  Copyright © 2019 WZH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.test()
        
    }
    
    
    @IBAction func pushAction(_ sender: Any) {
        
        let firstVC = FirstViewController()
        firstVC.parser = 10
        self.present(firstVC, animated: true) {
            print("跳转")
        }
    }
    func test() -> Void {
        //基础语法，数据类型
        //变量，字符串
        let obj = VariableObject()
        obj.echoStr()
        obj.varTest()
        
        //数组字典
        let arrAndDic = ArrAndDicObject()
        arrAndDic.Test()
        
        //控制流，if for while
        let controlFlow = ControlFlowObject()
        controlFlow.test()
        
        //方法和闭包
        let funcAndClosure = FuncAndClosuresObject()
        funcAndClosure.test()
        
        //对象和类
        let objectAndClass = ObjectAndClass(name: "jack" , age: 20)
        objectAndClass.name = "tom"
        //objectAndClass.age = 10
        objectAndClass.test()
//        print("===测试get:\(objectAndClass.perimeter)")
//        objectAndClass.perimeter = 100.0
//        print("===测试set之后的值:\(objectAndClass.perimeter)")
        
        //继承
        let childObject = ChildObject(name: "nike", age: 10)
        childObject.test()
        
        //枚举
        let enumClass = EnumClass()
        enumClass.test()
        
        //
        let simple = SimpleClass()
        simple.test()
        
        //范型
        let generics = GenericsObject()
        generics.test()
    }


}

