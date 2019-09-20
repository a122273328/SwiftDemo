//
//  WZHPOPLabelView.h
//  NumLabel
//
//  Created by WZH on 2019/8/27.
//  Copyright © 2019 WZH. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface WZHPOPLabelView : UIView

/**
 结束动画x坐标 默认当前x值
 */
@property (nonatomic, assign)CGFloat finshX;

/**
 结束动画y坐标 默认当前y值+60
 */
@property (nonatomic, assign)CGFloat finshY;

/**
 往上滚动消失动画时间默认0.7
 */
@property (nonatomic, assign)CGFloat durationUp;

/**
 下方label往上滚动消失动画时间，默认0.5
 */
@property (nonatomic, assign)CGFloat durationDown;

/**
 动画过程中缩放比例默认1
 */
@property (nonatomic, assign)CGFloat scale;

/**
 下方label开始滚动的y，默认事当前的y+30
 */
@property (nonatomic, assign)CGFloat downStartY;


+ (WZHPOPLabelView *)createdPopViewFrame:(CGRect)frame WithSuperView:(UIView *)supView WithResult:(NSString *)num;

/**
 加载新的数据

 @param num 数据
 */
- (void)reloadNewNumData:(NSString *)num;

@end

NS_ASSUME_NONNULL_END
