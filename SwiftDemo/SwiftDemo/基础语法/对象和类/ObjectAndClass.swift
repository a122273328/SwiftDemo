//
//  ObjectAndClass.swift
//  SwiftDemo
//
//  Created by WZH on 2019/7/23.
//  Copyright © 2019 WZH. All rights reserved.
//

import UIKit

class ObjectAndClass: NSObject {
    
    var name = ""
    private var age = 0
    
    init(name : String,age : Int) {
        print(name)
        print(age)
    }
    
    
    func test(){
        
        print("====对象和类====")
        print("my name is \(name)")
        self.age = 10
        print("my age is \(age)")
        print("====对象和类结束====")
    }


}
