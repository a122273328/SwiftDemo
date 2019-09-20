//
//  WZHPOPLabelView.m
//  NumLabel
//
//  Created by WZH on 2019/8/27.
//  Copyright © 2019 WZH. All rights reserved.
//

#import "WZHPOPLabelView.h"

@interface WZHPOPLabelView()

@property (nonatomic, strong)UILabel *lastLabel;

@end

@implementation WZHPOPLabelView

+ (WZHPOPLabelView *)createdPopViewFrame:(CGRect)frame WithSuperView:(UIView *)supView WithResult:(NSString *)num{
    
    WZHPOPLabelView *popView = [[WZHPOPLabelView alloc] initWithFrame:frame];
    popView.finshX = 0;
    popView.finshY = 60;
    popView.durationUp = .7f;
    popView.durationDown = .5f;
    popView.scale = 1;
    popView.downStartY = 30;
    popView.lastLabel = [[UILabel alloc] init];
    popView.lastLabel.frame = popView.bounds;
    popView.lastLabel.text = num;
    popView.lastLabel.font = [UIFont fontWithName:@"PingFangSC-Medium" size:18];
    popView.lastLabel.textColor = [UIColor colorWithRed:1 green:139/255.0 blue:3/255.0 alpha:1];
    popView.lastLabel.textAlignment = NSTextAlignmentCenter;
    [popView addSubview:popView.lastLabel];

    [supView addSubview:popView];
    return popView;
}



/**
 加载新的数据
 
 @param num 数据
 */
- (void)reloadNewNumData:(NSString *)num{
    
    
    if (self.lastLabel) {
        
        //  开始动画
        [UIView beginAnimations:nil context:(__bridge void *_Nullable)(self.lastLabel)];
        //  设置动画时间
        [UIView setAnimationDuration:self.durationUp];
        //  设置label的结束frame
        self.lastLabel.frame = CGRectMake( self.finshX, -self.finshY, self.lastLabel.frame.size.width * self.scale, self.lastLabel.frame.size.height * self.scale);
        //  设置渐渐消失的效果，这里的时间最好和动画时间一致
        [UIView animateWithDuration:self.durationUp animations:^{
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
    
    if (num.length > 0) {
        NSLog(@"出现新的");
        self.lastLabel = [[UILabel alloc] init];
        self.lastLabel.frame = CGRectMake(0, self.downStartY, self.bounds.size.width, self.bounds.size.height);
        self.lastLabel.text = num;
        [self addSubview:self.lastLabel];
        self.lastLabel.alpha = 0;
        self.lastLabel.font = [UIFont fontWithName:@"PingFangSC-Medium" size:18];
        self.lastLabel.textColor = [UIColor colorWithRed:1 green:139/255.0 blue:3/255.0 alpha:1];
        self.lastLabel.textAlignment = NSTextAlignmentCenter;
//        CGAffineTransform transfrom = CGAffineTransformMakeScale(self.scale * 0.8, self.scale * 0.8);
//        self.lastLabel.transform = CGAffineTransformScale(transfrom, 1, 1);
        [UIView animateWithDuration:self.durationDown animations:^{
            self.lastLabel.alpha = 1.0;
            self.lastLabel.frame = self.bounds;
//            CGAffineTransform transfrom = CGAffineTransformMakeScale(self.scale, self.scale);
//            self.lastLabel.transform = CGAffineTransformScale(transfrom, 1, 1);
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
