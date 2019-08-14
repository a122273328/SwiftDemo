//
//  SelectOrderNavLineCollectionViewCell.m
//  BottomViewDemo
//
//  Created by WZH on 2019/7/26.
//  Copyright © 2019 WZH. All rights reserved.
//

#import "SelectOrderNavLineCollectionViewCell.h"
#import "OrderNavLineNode.h"
//#import <QuartzCore/QuartzCore.h>
@implementation SelectOrderNavLineCollectionViewCell

- (void)reloadData:(OrderNavLineNode *)node{
    
    
    [UIView animateWithDuration:0.5 animations:^{
        if (node.isSelect) {
            self.alpha = 1;
        }else{
            self.alpha = 0.5;
        }
    }];
    
    
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    self.layer.cornerRadius = 5;
    self.layer.masksToBounds = YES;
    
    self.goOrderDetatilBtn.layer.cornerRadius = 3;
    self.goOrderDetatilBtn.layer.masksToBounds = YES;
    self.goOrderDetatilBtn.layer.borderWidth = 1;
    self.goOrderDetatilBtn.layer.borderColor = [UIColor colorWithRed:255/255.0 green:139/255.0 blue:3/255.0 alpha:1].CGColor;
    self.backgroundColor = [UIColor yellowColor];
    
    self.testView.layer.shadowColor = [UIColor blackColor].CGColor;//[UIColor colorWithRed:0.0f/255.0f green:0.0f/255.0f blue:0.0f/255.0f alpha:1.0f].CGColor;
    self.testView.layer.shadowOffset = CGSizeMake(10, 10);
    self.testView.layer.shadowOpacity = 0.5;
    self.testView.layer.shadowRadius = 10;
    
    
}

- (IBAction)gotoOrderDetatilAction:(UIButton *)sender {
    
    
}


@end
