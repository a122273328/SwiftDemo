//
//  ViewController.m
//  doudong
//
//  Created by WZH on 2019/9/19.
//  Copyright © 2019 WZH. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *myView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)click:(id)sender {
    
    //创建动画
    CAKeyframeAnimation * keyAnimaion = [CAKeyframeAnimation animation];
    keyAnimaion.keyPath = @"transform.rotation";
    keyAnimaion.values = @[@(0 /180.0 * M_PI),@(-10 / 180.0 * M_PI),@(0 /180.0 * M_PI),@(10/ 180.0 * M_PI),@(0 /180.0 * M_PI)];//度数转弧度
    keyAnimaion.removedOnCompletion = NO;
    keyAnimaion.fillMode = kCAFillModeForwards;
    keyAnimaion.duration = 0.6;
    keyAnimaion.repeatCount = 100;//动画次数
    [self.myView.layer addAnimation:keyAnimaion forKey:nil];
}

@end
