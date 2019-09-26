//
//  WZHStockListViewController.m
//  Tushare
//
//  Created by wzh on 2019/9/21.
//  Copyright © 2019 WZH. All rights reserved.
//

#import "WZHStockListViewController.h"
#import "StockModel.h"
#import "WZHStockTableViewCell.h"
@interface WZHStockListViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong)NSMutableArray *mutList;
@property (nonatomic, strong)NSArray *list;
@end

@implementation WZHStockListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self configTableView];
    
    [self loadData];
}

- (void)loadData{

    NSDictionary *parameters = @{@"is_hs":@"S",@"list_status":@"L",@"exchange":@"SZSE"};
    [self TusharePOST:stock_basic parameters:parameters completionHandler:^(NSURLResponse * _Nonnull response, id  _Nullable responseObject, NSError * _Nullable error) {
        DLog(@"%@",responseObject);
        
        NSString *Code = [responseObject objectForKey:@"code"];
        
        if ([Code isEqualToString:@"0"]) {//请求成功
            NSDictionary *data = [responseObject objectForKey:@"data"];
            NSArray *dataList = [data objectForKey:@"items"];
            self.mutList = [NSMutableArray array];
            
            for (NSArray *arr in dataList) {
                StockModel *model = [[StockModel alloc] init];
                model.ts_code = [NSString stringWithFormat:@"%@",arr[0]];
                model.symbol = [NSString stringWithFormat:@"%@",arr[1]];
                model.name = [NSString stringWithFormat:@"%@",arr[2]];
                model.area = [NSString stringWithFormat:@"%@",arr[3]];
                model.industry = [NSString stringWithFormat:@"%@",arr[4]];
                model.market = [NSString stringWithFormat:@"%@",arr[5]];
                model.list_date = [NSString stringWithFormat:@"%@",arr[6]];

                [self.mutList addObject:model];
            }
            self.list = [NSArray arrayWithArray:self.mutList];
            dispatch_async(dispatch_get_main_queue(), ^{
               [self.tableView reloadData];
            });
            
        }
    }];
}

- (void)configTableView{
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
    [self.tableView registerNib:[UINib nibWithNibName:@"WZHStockTableViewCell" bundle:nil] forCellReuseIdentifier:@"WZHStockTableViewCell"];

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.list.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    WZHStockTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"WZHStockTableViewCell"];
    StockModel *model = self.list[indexPath.row];
    [cell reloadStockModel:model];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    DLog(@"%ld",(long)indexPath.row);
    
    switch (indexPath.row) {
        case 0:
            
            break;
        case 1:
            
            break;
        case 2:
            
            break;
        case 3:
            
            break;
        case 4:
            
            break;
        case 5:
            
            break;
        case 6:
            
            break;
        case 7:
            
            break;
        case 8:
            
            break;
        case 9:
            
            break;
            
        default:
            break;
    }
}



@end
