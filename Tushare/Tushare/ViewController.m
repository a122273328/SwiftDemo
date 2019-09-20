//
//  ViewController.m
//  Tushare
//
//  Created by WZH on 2019/9/20.
//  Copyright © 2019 WZH. All rights reserved.
//

#import "ViewController.h"
#import "HttpHelper.h"
#import "API_Header.h"
@interface ViewController ()

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)testAction:(id)sender {
    
    NSDictionary *parameters = @{@"is_hs":@"S",@"list_status":@"L",@"exchange":@"SZSE"};
    [[HttpHelper sharedManager] TusharePOST:stock_basic parameters:parameters completionHandler:^(NSURLResponse * _Nonnull response, id  _Nullable responseObject, NSError * _Nullable error) {
        
        NSLog(@"response:%@",response);
        NSLog(@"responseObject:%@",responseObject);
        NSLog(@"error:%@",error);
        
    }];
}


@end
