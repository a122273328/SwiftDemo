//
//  HttpHelper.h
//  Tushare
//
//  Created by WZH on 2019/9/21.
//  Copyright © 2019 WZH. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking.h>
NS_ASSUME_NONNULL_BEGIN

@interface HttpHelper : NSObject

+ (instancetype)sharedManager;


/**
 tushare数据请求专用接口

 @param api_name 请求接口
 @param parameters 参数
 @param block 回调
 */
- (void)TusharePOST:(NSString *)api_name
         parameters:(id)parameters
  completionHandler:(void (^)(NSURLResponse * _Nonnull response, id  _Nullable responseObject, NSError * _Nullable error))block;

//- (NSURLSessionDataTask *)POST:(NSString *)URLString
//                    parameters:(id)parameters
//                       success:(void (^)(NSURLSessionDataTask * _Nonnull, id _Nullable))success
//                       failure:(void (^)(NSURLSessionDataTask * _Nullable, NSError * _Nonnull))failure;
//- (void)test;
//


@end

NS_ASSUME_NONNULL_END
