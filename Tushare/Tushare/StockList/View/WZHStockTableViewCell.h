//
//  WZHStockTableViewCell.h
//  Tushare
//
//  Created by wzh on 2019/9/21.
//  Copyright © 2019 WZH. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StockModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface WZHStockTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *ts_codeLabel;
@property (weak, nonatomic) IBOutlet UILabel *symbolLabel;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *list_dateLabel;
@property (weak, nonatomic) IBOutlet UILabel *areaLabel;
@property (weak, nonatomic) IBOutlet UILabel *induryLabel;
@property (weak, nonatomic) IBOutlet UILabel *marketLabel;


- (void)reloadStockModel:(StockModel *)model;

@end

NS_ASSUME_NONNULL_END
