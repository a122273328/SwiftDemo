//
//  API_Header.h
//  Tushare
//
//  Created by WZH on 2019/9/21.
//  Copyright © 2019 WZH. All rights reserved.
//

#ifndef API_Header_h
#define API_Header_h


#endif /* API_Header_h */

//请求URL
static NSString *const ServerHTTPHost = @"http://api.tushare.pro";

//股票列表
static NSString *const stock_basic = @"stock_basic";

//交易日历
static NSString *const trade_cal = @"trade_cal";

//股票曾用名
static NSString *const namechange = @"namechange";

//沪港通资金流向
static NSString *const moneyflow_hsgt = @"moneyflow_hsgt";

//复权因子
static NSString *const adj_factor = @"adj_factor";





#ifdef DEBUG
# define DLog(format, ...) printf("[%s] %s [第%d行] %s\n", __TIME__, __FUNCTION__, __LINE__, [[NSString stringWithFormat:format, ## __VA_ARGS__] UTF8String]);
#else
# define DLog(...);
#endif

