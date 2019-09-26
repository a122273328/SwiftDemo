//
//  StockModel.h
//  Tushare
//
//  Created by wzh on 2019/9/21.
//  Copyright © 2019 WZH. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface StockModel : NSObject

/**
 TS代码
 */
@property (nonatomic, copy)NSString *ts_code;

/**
 股票代码
 */
@property (nonatomic, copy)NSString *symbol;

/**
 股票名字
 */
@property (nonatomic, copy)NSString *name;

/**
 所在地域
 */
@property (nonatomic, copy)NSString *area;

/**
 所属行业
 */
@property (nonatomic, copy)NSString *industry;

/**
 市场分类
 */
@property (nonatomic, copy)NSString *market;

/**
 上市时间
 */
@property (nonatomic, copy)NSString *list_date;

@end

NS_ASSUME_NONNULL_END
