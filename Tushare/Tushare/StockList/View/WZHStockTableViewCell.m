//
//  WZHStockTableViewCell.m
//  Tushare
//
//  Created by wzh on 2019/9/21.
//  Copyright © 2019 WZH. All rights reserved.
//

#import "WZHStockTableViewCell.h"

@implementation WZHStockTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    // Initialization code
}

- (void)reloadStockModel:(StockModel *)model{
    
    self.nameLabel.text = model.name;
    self.ts_codeLabel.text = model.ts_code;
    self.symbolLabel.text = model.symbol;
    self.areaLabel.text = model.area;
    self.induryLabel.text = model.industry;
    self.marketLabel.text = model.market;
    self.list_dateLabel.text = model.list_date;
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
