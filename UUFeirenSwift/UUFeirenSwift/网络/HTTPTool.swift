//
//  HTTPTool.swift
//  UUFeirenSwift
//
//  Created by WZH on 2019/8/17.
//  Copyright © 2019 WZH. All rights reserved.
//

import UIKit
import Alamofire
typealias ReqRsponseSuccess = (_ response: AnyObject) -> Void
typealias ReqResponseFail = (_ error: AnyObject) -> Void
typealias NetworkStatus = (_ HTNetworkStatus: Int32) -> Void

@objc enum HTNetworkStatus: Int32 {
    case  HttpUnknow       = -1  //未知
    case  HttpNoReachable  = 0  // 无网络
    case  HttpWwan         = 1   //2g ， 3g 4g
    case  HttpWifi         = 2  // wifi
}
struct HTTPAPI {
    
    // 设置公共域名或者Ip
    static let  hostName = ""
}
enum methodType {
    case RequestMethodGet
    case RequestMethodPost
}


class HTTPTool: NSObject {
    
    override init() {
        print("请求开始")
        Alamofire.request("https://httpbin.org/get", method: .get, parameters: ["api_name":"stock_basic","token":"","params":"","fields":""], encoding: URLEncoding.default, headers: ["token":"1"]).responseJSON { (response) in
            print("请求试试：\(response)")
        }
        
        
        Alamofire.request("http://api.tushare.pro", method: .post, parameters: ["foo":"bar"], encoding: URLEncoding.default, headers: ["token":"2"]).responseJSON { (response) in
            print("post请求试试：\(response)")
        }
    }
    
    static func postRequest(url:String,params:[String:Any]?,
                            success:@escaping ReqRsponseSuccess,
                            error:@escaping ReqResponseFail){
        print("静态方法")
    }

}
