//
//  SimpleClass.swift
//  SwiftDemo
//
//  Created by WZH on 2019/7/25.
//  Copyright © 2019 WZH. All rights reserved.
//

import UIKit

protocol ExampleProtocol {
    var simpleDescription: String { get }
    mutating func adjust()
}

class SimpleClass: NSObject {
    
    //错误处理
    
    enum PrinterError:Error {
        case outOfPaper
        case noToner
        case onFire
    }
    
    func test(){
        
        print("====错误处理====")
        
        do{
            let printerResponse = try send(job: 1040, topringer: "Never Has Toner1")
            
            print("printerResponse:\(printerResponse)")
            
        }catch{
            print("==\(error)")
        }
        
        print("====错误处理====")
    }
    
    
    func send(job:Int,topringer:String) throws -> String {
        
        if topringer == "Never Has Toner1"{
            throw PrinterError.outOfPaper
        }
        if topringer == "Never Has Toner2"{
            throw PrinterError.noToner
        }
        if topringer == "Never Has Toner3"{
            throw PrinterError.onFire
        }
        
        return "job sent"
    }
    
    
    

}
