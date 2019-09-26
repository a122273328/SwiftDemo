//
//  WZHBaseViewController.m
//  Tushare
//
//  Created by wzh on 2019/9/21.
//  Copyright © 2019 WZH. All rights reserved.
//

#import "WZHBaseViewController.h"
@interface WZHBaseViewController ()

@end

@implementation WZHBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


/**
 tushare数据请求专用接口
 
 @param api_name 请求接口
 @param parameters 参数
 @param block 回调
 */
- (void)TusharePOST:(NSString *)api_name
         parameters:(id)parameters
  completionHandler:(void (^)(NSURLResponse * _Nonnull response, id  _Nullable responseObject, NSError * _Nullable error))block{
    [[HttpHelper sharedManager] TusharePOST:api_name parameters:parameters completionHandler:block];
}



@end
