//
//  ViewController.m
//  BottomViewDemo
//
//  Created by WZH on 2019/7/26.
//  Copyright © 2019 WZH. All rights reserved.
//

#import "ViewController.h"
#import "SelectOrderNavLineView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    SelectOrderNavLineView *navLineView = [SelectOrderNavLineView CreatedSelectOrderNavLineViewFrame:CGRectMake(0, self.view.frame.size.height - 205 - 10, self.view.frame.size.width, 205)];
    [self.view addSubview:navLineView];
    
}


@end
