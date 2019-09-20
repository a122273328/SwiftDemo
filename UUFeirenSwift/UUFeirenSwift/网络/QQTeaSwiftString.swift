//
//  QQTeaSwiftString.swift
//  UUFeirenSwift
//
//  Created by WZH on 2019/8/20.
//  Copyright © 2019 WZH. All rights reserved.
//

import UIKit

class QQTeaSwiftString: NSObject {
    
    
    /// 加密
    ///
    /// - Parameters:
    ///   - sourceString: 明文字符串
    ///   - passwordString: 密钥字符串
    /// - Returns: 返回密文字符串
    static func EcryptString(sourceString:String ,passwordString:String) -> String{
        
        let character = CharacterSet.init(charactersIn: "!*'\"();:@&=+$,/?%#[]% ")
        
        guard let str = sourceString.addingPercentEncoding(withAllowedCharacters: character) else { return "" }
        
        return str
    }

}
