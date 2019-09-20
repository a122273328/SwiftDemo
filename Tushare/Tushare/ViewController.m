//
//  ViewController.m
//  Tushare
//
//  Created by WZH on 2019/9/20.
//  Copyright © 2019 WZH. All rights reserved.
//

#import "ViewController.h"
#import "HttpHelper.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)testAction:(id)sender {
    
    NSDictionary *dic = @{
                          @"api_name":@"stock_basic",
                          @"token":@"06e6dd821cff4defe472330ca8c08e7e46c88aac2cb94b35b0e1f3d9",
                          @"params":@{@"is_hs":@"S",@"list_status":@"L",@"exchange":@"SZSE"},
                          @"fields":@""
                          };
    
    [[HttpHelper sharedManager] POST:@"http://api.tushare.pro" parameters:dic success:^(NSURLSessionDataTask * task, id respond) {
        
        NSLog(@"%@",respond);
        
    } failure:^(NSURLSessionDataTask * task, NSError * error) {
        NSLog(@"%@",error);
    }];
    
    
    [[HttpHelper sharedManager] test];
}


@end
