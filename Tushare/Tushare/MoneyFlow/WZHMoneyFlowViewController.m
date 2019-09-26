//
//  WZHMoneyFlowViewController.m
//  Tushare
//
//  Created by wzh on 2019/9/21.
//  Copyright © 2019 WZH. All rights reserved.
//

#import "WZHMoneyFlowViewController.h"

@interface WZHMoneyFlowViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation WZHMoneyFlowViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (IBAction)requestAction:(id)sender {
//    moneyflow_hsgt
//    NSDictionary *parametes = @{@"start_date":@"20190919", @"end_date":@"20190920"};
    
    //adj_factor
    NSDictionary *parametes = @{@"ts_code":@"",@"start_date":@"20190919", @"end_date":@"20190920"};
    
    
    [self TusharePOST:adj_factor parameters:parametes completionHandler:^(NSURLResponse * _Nonnull response, id  _Nullable responseObject, NSError * _Nullable error) {
        DLog(@"%@",responseObject);
        dispatch_async(dispatch_get_main_queue(), ^{
            self.textView.text = [NSString stringWithFormat:@"%@",responseObject];
        });
    }];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
