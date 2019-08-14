//
//  SelectOrderNavLineCollectionViewCell.h
//  BottomViewDemo
//
//  Created by WZH on 2019/7/26.
//  Copyright © 2019 WZH. All rights reserved.
//

#import <UIKit/UIKit.h>
@class OrderNavLineNode;
NS_ASSUME_NONNULL_BEGIN

@interface SelectOrderNavLineCollectionViewCell : UICollectionViewCell
//订单类型
@property (weak, nonatomic) IBOutlet UILabel *OrderSendTypeLbel;
//d配送距离
@property (weak, nonatomic) IBOutlet UILabel *DistanceLbel;
//订单状态
@property (weak, nonatomic) IBOutlet UILabel *OrderStateLabel;
//取货地址
@property (weak, nonatomic) IBOutlet UIImageView *takeAddressImage;
@property (weak, nonatomic) IBOutlet UILabel *takeAddressLabel;
//收货地
@property (weak, nonatomic) IBOutlet UIImageView *DestinationAddressImage;
@property (weak, nonatomic) IBOutlet UILabel *DestinationAddressLabel;

@property (weak, nonatomic) IBOutlet UIButton *goOrderDetatilBtn;

@property (weak, nonatomic) IBOutlet UIView *testView;

- (void)reloadData:(OrderNavLineNode *)node;

@end

NS_ASSUME_NONNULL_END
