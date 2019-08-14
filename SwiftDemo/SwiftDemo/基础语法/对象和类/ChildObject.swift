//
//  ChildObject.swift
//  SwiftDemo
//
//  Created by WZH on 2019/7/24.
//  Copyright © 2019 WZH. All rights reserved.
//

import UIKit

class ChildObject: ObjectAndClass {
    
    //重写父类方法
    override func test() {
        super.test()
        print("子类方法")
    }

}
