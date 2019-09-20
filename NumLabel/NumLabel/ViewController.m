//
//  ViewController.m
//  NumLabel
//
//  Created by WZH on 2019/8/26.
//  Copyright © 2019 WZH. All rights reserved.
//

#import "ViewController.h"
#import "WZHPOPLabelView.h"
@interface ViewController ()

@property (nonatomic, strong)UILabel *lastLabel;

@property (nonatomic, strong)WZHPOPLabelView *popView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.lastLabel = [[UILabel alloc] init];
    self.lastLabel.frame = CGRectMake(200, 200, 30, 30);
    self.lastLabel.text = @"+1";
    [self.view addSubview:self.lastLabel];
    
    self.popView = [WZHPOPLabelView createdPopViewFrame:CGRectMake(100, 200, 30, 30) WithSuperView:self.view WithResult:@"+10"];
    self.popView.backgroundColor = [UIColor yellowColor];
    
}

- (IBAction)testAction:(id)sender {
    
    [self.popView reloadNewNumData:@"+9"];
    
    NSString *str = @"+1";
    
    if (self.lastLabel) {
        
        //  随机产生一个动画结束点的X值
        CGFloat finishX = 200;//这里写成固定//frame.size.width - round(random() % 200);
        //  动画结束点的Y值
        CGFloat finishY = 100;
        //  label在运动过程中的缩放比例
        CGFloat scale = 1;//round(random() % 2) + 0.7;
        // 生成一个作为速度参数的随机数
        //CGFloat speed = 1;//1 / round(random() % 900) + 0.6;
        //  动画执行时间
        NSTimeInterval duration = 1;//4 * speed;
//        //  如果得到的时间是无穷大，就重新附一个值（这里要特别注意，请看下面的特别提醒）
//        if (duration == INFINITY) duration = 1;
        
        //  开始动画
        [UIView beginAnimations:nil context:(__bridge void *_Nullable)(self.lastLabel)];
        //  设置动画时间
        [UIView setAnimationDuration:duration];
        
        //  设置imageView的结束frame
        self.lastLabel.frame = CGRectMake( finishX, finishY, 30 * scale, 30 * scale);
        
        //  设置渐渐消失的效果，这里的时间最好和动画时间一致
        [UIView animateWithDuration:duration animations:^{
            self.lastLabel.alpha = 0;
            self.lastLabel = nil;
            NSLog(@"消失");
        }];
        
        //  结束动画，调用onAnimationComplete:finished:context:函数
        [UIView setAnimationDidStopSelector:@selector(onAnimationComplete:finished:context:)];
        //  设置动画代理
        [UIView setAnimationDelegate:self];
        [UIView commitAnimations];
        
    }
    
    if (str.length > 0) {
        NSLog(@"出现新的");
        self.lastLabel = [[UILabel alloc] init];
        self.lastLabel.frame = CGRectMake(200, 220, 30, 30);
        self.lastLabel.text = str;
        [self.view addSubview:self.lastLabel];
        self.lastLabel.alpha = 0;
        [UIView animateWithDuration:0.5 animations:^{
            self.lastLabel.alpha = 1.0;
            self.lastLabel.frame = CGRectMake(200, 200, 30, 30);
            CGAffineTransform transfrom = CGAffineTransformMakeScale(1.3, 1.3);
            self.lastLabel.transform = CGAffineTransformScale(transfrom, 1, 1);
        }];
    }
    
    
    
}

/// 动画完后销毁iamgeView
- (void)onAnimationComplete:(NSString *)animationID finished:(NSNumber *)finished context:(void *)context{
    UILabel *label = (__bridge UILabel *)(context);
    NSLog(@"销毁");
    [label removeFromSuperview];
    label = nil;
}



@end
