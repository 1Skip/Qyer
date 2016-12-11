//
//  CommunityViewController.m
//  Qyer
//
//  Created by “Skip、 on 2016/11/18.
//  Copyright © 2016年 DKD. All rights reserved.
//

#import "CommunityViewController.h"

@interface CommunityViewController ()
@property(nonatomic) CommunityModel *communityModel;
@property(nonatomic) NSMutableArray<CommunityIconListModel *> *iconList;
@property(nonatomic) NSMutableArray<CommunityIndexListModel *> *indexList;
@property(nonatomic) NSMutableArray<CommunityTagListModel *> *tagList;
@property(nonatomic) NSInteger pages;
@property(nonatomic) UIColor *lightGray;
@end

@implementation CommunityViewController
-(UIColor *)lightGray
{
    return [UIColor colorWithRed:167 / 255.f green:167 / 255.f blue:167 / 255.f alpha:1.f];
}

-(CommunityModel *)communityModel
{
    if (!_communityModel)
    {
        _communityModel = [CommunityModel new];
    }
    return _communityModel;
}

-(NSMutableArray<CommunityIconListModel *> *)iconList
{
    if (!_iconList)
    {
        _iconList = [NSMutableArray new];
    }
    return _iconList;
}

-(NSMutableArray<CommunityIndexListModel *> *)indexList
{
    if (!_indexList)
    {
        _indexList = [NSMutableArray new];
    }
    return _indexList;
}

-(NSMutableArray<CommunityTagListModel *> *)tagList
{
    if (!_tagList)
    {
        _tagList = [NSMutableArray new];
    }
    return _tagList;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView setBackgroundColor:[UIColor whiteColor]];
    [self.tableView registerClass:[CommunityIconCell class] forCellReuseIdentifier:@"iconCell"];
    [self.tableView registerClass:[CommunitTagCell class] forCellReuseIdentifier:@"tagCell"];
    [self.tableView registerClass:[CommunityIndexCell class] forCellReuseIdentifier:@"indexCell"];
    
    
    self.tableView.separatorColor = self.lightGray;
    self.tableView.separatorInset = UIEdgeInsetsZero;
    //self.tableView.separatorStyle =
    
    self.tableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
        [NetManager getCommunityWithPage:1 completionHandler:^(CommunityModel *model, NSError *error) {
            [self.tableView.mj_header endRefreshing];
            if (!error)
            {
                self.communityModel = model;
                [self.tableView reloadData];
                
                self.pages = 1;
            }
        }];
    }];
    [self.tableView.mj_header beginRefreshing];
    
    self.tableView.mj_footer = [MJRefreshBackFooter footerWithRefreshingBlock:^{
        [NetManager getCommunityWithPage:self.pages completionHandler:^(CommunityModel *model, NSError *error) {
            [self.tableView.mj_footer endRefreshing];
            if (!error)
            {
                self.communityModel = model;
                [self.tableView reloadData];
                
                self.pages ++ ;
            }
        }];
    }];
}


#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.communityModel.data.index_list.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{

    
    [self.indexList addObjectsFromArray:self.communityModel.data.index_list];
    
    CommunityIndexCell *cell = [tableView dequeueReusableCellWithIdentifier:@"indexCell"];
    if (!cell)
    {
        cell = [[CommunityIndexCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"indexCell"];
    }

    [cell.coverIV setImageURL:self.indexList[indexPath.row].avatar.wx_URL];
    cell.userName.text = self.indexList[indexPath.row].author;
    cell.titleLB.text = self.indexList[indexPath.row].title;
    if (self.indexList[indexPath.row].bigpic_arr.count != 0)
    {
        [cell.detailIV enumerateObjectsUsingBlock:^(UIImageView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            [obj setImageURL:self.indexList[indexPath.row].bigpic_arr[idx]];
        }];
    }
    else
    {
        [cell.detailIV enumerateObjectsUsingBlock:^(UIImageView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            [obj setImageURL:nil];
        }];
    }
    
    cell.countryLB.text = self.indexList[indexPath.row].forum;
    cell.timeLB.text = self.indexList[indexPath.row].reply_time;
    cell.commitLB.text = self.indexList[indexPath.row].reply_num;
    
        return cell;
}

# pragma -mark 每个分组的高度
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return (kHight * (428.f / 1132.f));
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    shoppingWebPageController *wc = [[shoppingWebPageController alloc]initWithURL:self.indexList[indexPath.row].appview_url.wx_URL];
    [self.navigationController pushViewController:wc animated:YES];
}
@end
