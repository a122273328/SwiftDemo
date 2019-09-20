//
//  Extension.swift
//  UUFeirenSwift
//
//  Created by WZH on 2019/8/20.
//  Copyright © 2019 WZH. All rights reserved.
//

import UIKit
private var key:Void?
extension String {
    
    var url:String{
        
        get{
            return objc_getAssociatedObject(self, &key) as! String
            
        }set{
            objc_setAssociatedObject(self, &key, newValue, .OBJC_ASSOCIATION_COPY_NONATOMIC)
        }
        
    }
}
