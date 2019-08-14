//
//  SelectOrderNavLineView.h
//  BottomViewDemo
//
//  Created by WZH on 2019/7/26.
//  Copyright © 2019 WZH. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol SelectOrderNavLineDelegate <NSObject>

- (void)selectOrderNavLineIndex:(NSInteger)index;

@end

@interface SelectOrderNavLineView : UIView

@property (nonatomic, weak)id<SelectOrderNavLineDelegate> delegate;


/**
 创建view

 @param frame 布局
 @return 返回view
 */
+ (SelectOrderNavLineView *)CreatedSelectOrderNavLineViewFrame:(CGRect)frame;

@end

NS_ASSUME_NONNULL_END
