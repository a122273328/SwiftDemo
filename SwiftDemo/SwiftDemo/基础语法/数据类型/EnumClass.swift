//
//  EnumClass.swift
//  SwiftDemo
//
//  Created by WZH on 2019/7/24.
//  Copyright © 2019 WZH. All rights reserved.
//

import UIKit
//protocol ExampleProtocol {
//    var simpleDescription: String{ get }
//    mutating func adjust()
//}

class EnumClass: NSObject {
    

    
    enum Rank:Int{
        case ace = 1
        case two = 2
        case three = 3
        //枚举可以并联对应的函数
        func simpleDescription() -> String {
            switch self {
            case .ace:
                return "ace"
            case Rank.two:
                return "two"
            case .three:
                return "three"
            default:
                return String(self.rawValue)
            }
        }
    }
    
    
    enum Suit {
        case A,B,C,D
    }
    enum ServerResponse {
        case result(String,String)
        case failure(String)
    }
    
    
    /// 结构体
    struct Card {
        var rank:Rank
        var suit:Suit
        
        func simpleDescription() -> String {
            return "the \(rank.simpleDescription()) of \(suit)"
        }
        
    }
    
    func test() -> Void {
        
        print("====枚举结构体====")
        
        let ace = Rank.ace
        print(ace)
        let accRawValue = ace.rawValue
        print(accRawValue)
        
        
        if let convertedRank = Rank(rawValue: 3) {
            let threeDescriotion = convertedRank.simpleDescription()
            print(threeDescriotion)
        }
        
        let suit = Suit.A
        print(suit)
        
        let success = ServerResponse.result("6:00 am", "8:10 pm")
        let failure = ServerResponse.failure("Out of cheese.")
        
        switch success {
        case let .result(sunrise, sunset):
            print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
        case let .failure(message):
            print("Failure...  \(message)")
        default:
            print("hehe")
        }
        
        let threeSpades = Card(rank: .three, suit: .A)
        print(threeSpades.simpleDescription())
        
        print("====枚举结构体结束====")
    }
    

}


