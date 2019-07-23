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
        //基础语法，数据类型
        self.variableTest()

    }
    
    //基础语法，数据类型
    func variableTest() -> Void {
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
        
        
        
    }


}

