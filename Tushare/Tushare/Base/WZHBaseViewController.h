//
//  WZHBaseViewController.h
//  Tushare
//
//  Created by wzh on 2019/9/21.
//  Copyright © 2019 WZH. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HttpHelper.h"
#import "API_Header.h"
NS_ASSUME_NONNULL_BEGIN

@interface WZHBaseViewController : UIViewController


/**
 tushare数据请求专用接口
 
 @param api_name 请求接口
 @param parameters 参数
 @param block 回调
 */
- (void)TusharePOST:(NSString *)api_name
         parameters:(id)parameters
  completionHandler:(void (^)(NSURLResponse * _Nonnull response, id  _Nullable responseObject, NSError * _Nullable error))block;

@end

NS_ASSUME_NONNULL_END
