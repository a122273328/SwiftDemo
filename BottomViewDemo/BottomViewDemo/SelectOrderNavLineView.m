//
//  SelectOrderNavLineView.m
//  BottomViewDemo
//
//  Created by WZH on 2019/7/26.
//  Copyright © 2019 WZH. All rights reserved.
//

#import "SelectOrderNavLineView.h"
#import "SelectOrderNavLineCollectionViewCell.h"
#import "OrderNavLineNode.h"

#define KCellSpace 10
#define KCellWidth (([UIScreen mainScreen].bounds.size.width) - 60)
#define KCellHeight 205

@interface SelectOrderNavLineView()<UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>{
    CGFloat _offer;
}

@property (nonatomic, strong)UICollectionView *collectionView;

@property (nonatomic, strong)NSMutableArray *mutableArr;

@end

@implementation SelectOrderNavLineView
/**
 创建view
 
 @param frame 布局
 @return 返回view
 */
+ (SelectOrderNavLineView *)CreatedSelectOrderNavLineViewFrame:(CGRect)frame{
    
    SelectOrderNavLineView *navLineView = [[SelectOrderNavLineView alloc] initWithFrame:frame];
    navLineView.backgroundColor = [UIColor cyanColor];
    [navLineView initConfig];
    [navLineView initData];
    return navLineView;
}


- (void)initConfig{
    
    //初始化layout
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    //设置滚动方向
    [layout setScrollDirection:UICollectionViewScrollDirectionHorizontal];
    layout.sectionInset = UIEdgeInsetsMake(0, 16, 0, 16);//设置其边界
    [layout setMinimumInteritemSpacing:0]; //设置 y 间距
    [layout setMinimumLineSpacing:KCellSpace]; //设置 x 间距
    layout.itemSize = CGSizeMake(KCellWidth, KCellHeight);
    
    self.collectionView = [[UICollectionView alloc] initWithFrame:self.bounds collectionViewLayout:layout];
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    self.collectionView.scrollsToTop = NO;
    self.collectionView.showsVerticalScrollIndicator = NO;
    self.collectionView.showsHorizontalScrollIndicator = NO;
    self.collectionView.backgroundColor = [UIColor whiteColor];
    //翻页效果
    //self.collectionView.pagingEnabled = YES;
    [self addSubview:self.collectionView];
    
    //注册cell
    [self.collectionView registerNib:[UINib nibWithNibName:@"SelectOrderNavLineCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:@"SelectOrderNavLineCollectionViewCell"];
    
}

- (void)initData{
    self.mutableArr = [NSMutableArray array];
    for (int i = 0; i < 5; i++) {
        
        OrderNavLineNode *node = [[OrderNavLineNode alloc] init];
        
        if (i == 0) {
            node.isSelect = YES;
        }else{
            node.isSelect = NO;
        }
        [self.mutableArr addObject:node];
    }
    
}

#pragma mark -- UICollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    return self.mutableArr.count;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    SelectOrderNavLineCollectionViewCell *cell = (SelectOrderNavLineCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"SelectOrderNavLineCollectionViewCell" forIndexPath:indexPath];
    OrderNavLineNode *node = self.mutableArr[indexPath.row];
    [cell reloadData:node];
    
    return cell;
}


- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    
    //选中某个item
    [self.collectionView selectItemAtIndexPath:indexPath animated:YES scrollPosition:UICollectionViewScrollPositionCenteredHorizontally];
    [self selectItem:indexPath.row];
}



-(void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView{
    _offer = scrollView.contentOffset.x;
    NSLog(@"end========%f",_offer);
    
}

//滑动减速是触发的代理，当用户用力滑动或者清扫时触发。
- (void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView{
    if (fabs(scrollView.contentOffset.x -_offer) > 10) {
        [self scrollToNextPage:scrollView];
    }
}
//用户拖拽时调用
- (void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset{
    if (fabs(scrollView.contentOffset.x -_offer) > 10) {
        [self scrollToNextPage:scrollView];
    }
}
//控制翻页
-(void)scrollToNextPage:(UIScrollView *)scrollView{
    if (scrollView.contentOffset.x > _offer) {//下一页
        int i = scrollView.contentOffset.x/KCellWidth+1;
        if (i >= 5) {
            return;
        }
        NSIndexPath * indexPath =  [NSIndexPath indexPathForRow:i inSection:0];
        //[_collectionView scrollToItemAtIndexPath:indexPath atScrollPosition:UICollectionViewScrollPositionCenteredHorizontally animated:YES];
        [self.collectionView selectItemAtIndexPath:indexPath animated:YES scrollPosition:UICollectionViewScrollPositionCenteredHorizontally];
        [self selectItem:indexPath.row];
    }else{//上一页
        int i = scrollView.contentOffset.x/KCellWidth+1;
        if (i < 1) {
            return;
        }
        NSIndexPath * indexPath =  [NSIndexPath indexPathForRow:i-1 inSection:0];
        //[_collectionView scrollToItemAtIndexPath:indexPath atScrollPosition:UICollectionViewScrollPositionCenteredHorizontally animated:YES];
        [self.collectionView selectItemAtIndexPath:indexPath animated:YES scrollPosition:UICollectionViewScrollPositionCenteredHorizontally];
        [self selectItem:indexPath.row];
    }
}


- (void)selectItem:(NSInteger)index{
    
    NSLog(@"选中：%ld",index);
    
    for (int i = 0; i < self.mutableArr.count; i ++ ) {
        OrderNavLineNode *node = self.mutableArr[i];
        if (i == index) {
            node.isSelect = YES;
        }else{
            node.isSelect = NO;
        }
    }
    [self.collectionView reloadData];
    if (self.delegate && [self.delegate respondsToSelector:@selector(selectOrderNavLineIndex:)]) {
        [self.delegate selectOrderNavLineIndex:index];
    }
}



@end
