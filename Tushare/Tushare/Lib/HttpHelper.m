//
//  HttpHelper.m
//  Tushare
//
//  Created by WZH on 2019/9/21.
//  Copyright © 2019 WZH. All rights reserved.
//

#import "HttpHelper.h"

@interface HttpHelper()
@property (strong, nonatomic) AFHTTPSessionManager *AFManager;
@end
static NSString *const ServerHTTPHost = @"http://api.tushare.pro";
@implementation HttpHelper

+ (instancetype)sharedManager{
    
    static HttpHelper *_sharedSingleton = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedSingleton = [[HttpHelper alloc] init];
    });
    return _sharedSingleton;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.AFManager = [[AFHTTPSessionManager alloc] initWithBaseURL:[NSURL URLWithString:ServerHTTPHost]];
        self.AFManager.requestSerializer = [AFHTTPRequestSerializer serializer];
        // FIXME: 此处应该添加一些服务器指定的的请求头信息
        //[self.AFManager.requestSerializer setValue:@"" forHTTPHeaderField:@""];
        
        // 返回JSON格式
        self.AFManager.responseSerializer = [AFJSONResponseSerializer serializer];
        self.AFManager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript",@"text/plain",@"text/html", nil];
    }
    return self;
}

- (NSURLSessionDataTask *)POST:(NSString *)URLString
                    parameters:(id)parameters
                       success:(void (^)(NSURLSessionDataTask * _Nonnull, id _Nullable))success
                       failure:(void (^)(NSURLSessionDataTask * _Nullable, NSError * _Nonnull))failure{
    
    return [self.AFManager POST:URLString parameters:parameters progress:nil success:success failure:failure];

}



- (void)test{
    
    // 请求URL
    NSString *accessPath = @"http://api.tushare.pro";
    // 请求参数字典
    NSDictionary *params = @{
                             @"api_name":@"stock_basic",
                             @"token":@"06e6dd821cff4defe472330ca8c08e7e46c88aac2cb94b35b0e1f3d9",
                             @"params":@{@"is_hs":@"S",@"list_status":@"L",@"exchange":@"SZSE"},
                             @"fields":@""
                             };
    
    NSLog(@"发送请求url=%@,params=%@",accessPath,params);
    
    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    
    NSMutableURLRequest *request = [[AFJSONRequestSerializer serializer] requestWithMethod:@"POST" URLString:accessPath parameters:params error:nil];
    request.timeoutInterval = 10.f;
    [request setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request setValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    NSURLSessionDataTask *task = [manager dataTaskWithRequest:request completionHandler:^(NSURLResponse * _Nonnull response, id  _Nullable responseObject, NSError * _Nullable error) {
        NSLog(@"-----responseObject===%@+++++",responseObject);
        if (!error) {
            if ([responseObject isKindOfClass:[NSDictionary class]]) {
                // 请求成功数据处理
            } else {
                
            }
        } else {
            NSLog(@"请求失败error=%@", error);
        }
    }];
    
    [task resume];
}



@end
