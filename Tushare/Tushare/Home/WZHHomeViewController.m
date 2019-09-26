//
//  WZHHomeViewController.m
//  Tushare
//
//  Created by wzh on 2019/9/21.
//  Copyright © 2019 WZH. All rights reserved.
//

#import "WZHHomeViewController.h"
#import "WZHBaseViewController.h"
#import "WZHStockListViewController.h"
#import "WZHMoneyFlowViewController.H"
@interface WZHHomeViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation WZHHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [self configTableView];
    
}

- (void)configTableView{
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 10;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"UITableViewCell"];
    }
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    switch (indexPath.row) {
        case 0:
            cell.textLabel.text = @"股票列表";
            break;
        case 1:
            cell.textLabel.text = @"沪港通资金流向";
            break;
        case 2:
            cell.textLabel.text = @"股票列表";
            break;
        case 3:
            cell.textLabel.text = @"股票列表";
            break;
        case 4:
            cell.textLabel.text = @"股票列表";
            break;
        case 5:
            cell.textLabel.text = @"股票列表";
            break;
        case 6:
            cell.textLabel.text = @"股票列表";
            break;
        case 7:
            cell.textLabel.text = @"股票列表";
            break;
        case 8:
            cell.textLabel.text = @"股票列表";
            break;
        case 9:
            cell.textLabel.text = @"股票列表";
            break;
            
        default:
            break;
    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    DLog(@"%ld",(long)indexPath.row);
    
    switch (indexPath.row) {
        case 0:
            [self gotoStockList];
            break;
        case 1:
            [self gotoMoneyFlow];
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

- (void)gotoStockList{
    DLog(@"股票列表");
    WZHStockListViewController *stockListVC = [[WZHStockListViewController alloc] initWithNibName:@"WZHStockListViewController" bundle:nil];
    [self.navigationController pushViewController:stockListVC animated:YES];
}

- (void)gotoMoneyFlow{
    DLog(@"沪港通资金流向");
    WZHMoneyFlowViewController *moneyFlowVc = [[WZHMoneyFlowViewController alloc] initWithNibName:@"WZHMoneyFlowViewController" bundle:nil];
    [self.navigationController pushViewController:moneyFlowVc animated:YES];
}


@end
