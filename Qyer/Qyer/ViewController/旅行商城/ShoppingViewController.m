//
//  ShoppingViewController.m
//  Qyer
//
//  Created by “Skip、 on 2016/11/18.
//  Copyright © 2016年 DKD. All rights reserved.
//

#import "ShoppingViewController.h"

@interface ShoppingViewController ()
@property(nonatomic) UIColor *shoppingBackgroundColor;
@property(nonatomic) ShoppingModel *shoppingModel;
@property(nonatomic) NSMutableArray<ShoppingIconListModel *> *iconList;
@property(nonatomic) NSMutableArray<ShoppingMarketTopicModel *> *marketTopicList;
@property(nonatomic) NSMutableArray<ShoppingListModel *> *list;
@property(nonatomic) NSMutableArray<ShoppingPlaceModel *> *place;
@property(nonatomic) NSMutableArray<ShoppingListModel *> *list1;
@property(nonatomic) NSMutableArray<ShoppingPlaceModel *> *place1;
@property(nonatomic) NSMutableArray<ShoppingListModel *> *list2;
@property(nonatomic) NSMutableArray<ShoppingPlaceModel *> *place2;

@end

@implementation ShoppingViewController
-(UIColor *)shoppingBackgroundColor
{
    return [UIColor colorWithRed:242 / 255.0 green:242 / 255.0 blue:242 / 255.0 alpha:1];
}

-(NSMutableArray<ShoppingIconListModel *> *)iconList
{
    if (!_iconList)
    {
        _iconList = [NSMutableArray new];
    }
    return _iconList;
}

-(NSMutableArray<ShoppingMarketTopicModel *> *)marketTopicList
{
    if (!_marketTopicList)
    {
        _marketTopicList = [NSMutableArray new];
    }
    return _marketTopicList;
}

-(NSMutableArray<ShoppingListModel *> *)list
{
    if (!_list)
    {
        _list = [NSMutableArray new];
    }
    return _list;
}

-(NSMutableArray<ShoppingPlaceModel *> *)place
{
    if (!_place)
    {
        _place = [NSMutableArray new];
    }
    return _place;
}

-(NSMutableArray<ShoppingListModel *> *)list1
{
    if (!_list1)
    {
        _list1 = [NSMutableArray new];
    }
    return _list1;
}

-(NSMutableArray<ShoppingPlaceModel *> *)place1
{
    if (!_place1)
    {
        _place1 = [NSMutableArray new];
    }
    return _place1;
}

-(NSMutableArray<ShoppingListModel *> *)list2
{
    if (!_list2)
    {
        _list2 = [NSMutableArray new];
    }
    return _list2;
}

-(NSMutableArray<ShoppingPlaceModel *> *)place2
{
    if (!_place2)
    {
        _place2 = [NSMutableArray new];
    }
    return _place2;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView setBackgroundColor:[UIColor whiteColor]];
    [self.tableView registerClass:[AdvertisementCell class] forCellReuseIdentifier:@"AdvertisementCell"];
    [self.tableView registerClass:[WorldCell class] forCellReuseIdentifier:@"WorldCell"];
    
    // 调用网络请求的方法，把所有所需的数据解析出来
    self.tableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
        [NetManager getShoppingCompletionHandler:^(ShoppingModel *model, NSError *error) {
            [self.tableView.mj_header endRefreshing];
            if (!error)
            {
                self.shoppingModel = model;
                [self.tableView reloadData];
                
                self.tableView.tableHeaderView = [self setHeaderView];
            }
            
        }];
    }];
    [self.tableView.mj_header beginRefreshing];
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 4;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSInteger i = self.shoppingModel.data.market_topic.count;
    NSInteger j = self.shoppingModel.data.hot_area[1].place.count;

    switch (section)
    {
        case 0:
            if (i != 0)
            {
                return 1;
            }
            else
            {
                return 0;
            }
            break;
        case 1:
            if (j != 0)
            {
                return 1;
            }
            else
            {
                return 0;
            }
            break;
        case 2:
            if (j != 0)
            {
                return 1;
            }
            else
            {
                return 0;
            }
            break;
        case 3:
            if (j != 0)
            {
                return 1;
            }
            else
            {
                return 0;
            }
            break;
            
        default:
            break;
    }
    return 0;
}


/*
-(UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section

{
    [self.marketTopicList  addObjectsFromArray:self.shoppingModel.data.market_topic];
    if (self.marketTopicList.count > 0) {
        if (section == 0)
        {
            NSArray<NSString *> *marketTopicData = [NSArray new];
            NSMutableArray *marketTopicTempArr = [NSMutableArray new];
            for (NSInteger i = 0; i < self.marketTopicList.count; i ++)
            {
                NSString *adViewPath = self.marketTopicList[i].pic;
                [marketTopicTempArr addObject:adViewPath];
            }
            marketTopicData = marketTopicTempArr.copy;
            
            AdvertisementView *adView = [[AdvertisementView alloc]init];
            adView.backgroundColor = [UIColor whiteColor];
            adView.size = CGSizeMake([UIScreen mainScreen].bounds.size.width, 80);
            
            [adView.leftBtn setBackgroundImageWithURL:marketTopicData[0].wx_URL forState:UIControlStateNormal options:0];
            [adView.rightUpBtn setBackgroundImageWithURL:marketTopicData[1].wx_URL forState:UIControlStateNormal options:0];
            [adView.rightDownBtn setBackgroundImageWithURL:marketTopicData[2].wx_URL forState:UIControlStateNormal options:0];
            
            return adView;
        }
        
//        if (section == 1)
//        {
//            // 取得所有热门旅游城市的旅游信息
//            [self.place addObjectsFromArray:self.shoppingModel.data.hot_area[1].place];
//            NSArray<NSString *> *hotArea = [NSArray new];
//            NSMutableArray *hotAreaArr = [NSMutableArray new];
//            for (NSInteger i = 0; i < 4; i ++)
//            {
//                NSString *adPhotoPath = self.place[i].photo;
//                [hotAreaArr addObject:adPhotoPath];
//            }
//            hotArea = hotAreaArr.copy;
//            
//            HongKongJapanView *hjView = [[HongKongJapanView alloc]init];
//            hjView.backgroundColor = [UIColor whiteColor];
//            hjView.size = CGSizeMake([UIScreen mainScreen].bounds.size.width, 80);
//            
//            [hjView.cityBtn enumerateObjectsUsingBlock:^(UIButton * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
//                [obj setBackgroundImageWithURL:hotArea[idx].wx_URL forState:UIControlStateNormal options:NO];
//            }];
//            
//            return hjView ;
//            
//        }
    }
    return nil;
}
*/
 
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // 获取广告的所有数据
    [self.marketTopicList  addObjectsFromArray:self.shoppingModel.data.market_topic];
    // 取得所有热门旅游城市的数据
    
    
        if (indexPath.section == 0)
        {

            AdvertisementCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AdvertisementCell"];
            if (cell == nil)
            {
                cell = [[AdvertisementCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"AdvertisementCell"];
            }
            
            
            [cell.leftBtn setBackgroundImageWithURL:self.marketTopicList[0].pic.wx_URL forState:UIControlStateNormal options:0];
            [cell.rightUpBtn setBackgroundImageWithURL:self.marketTopicList[1].pic.wx_URL forState:UIControlStateNormal options:0];
            [cell.rightDownBtn setBackgroundImageWithURL:self.marketTopicList[2].pic.wx_URL forState:UIControlStateNormal options:0];
            
            [cell addSubview:cell.view];
            return cell;
        }
    if (indexPath.section == 1)
    {
        [self.place addObjectsFromArray:self.shoppingModel.data.hot_area[0].place];
        [self.list addObjectsFromArray:self.shoppingModel.data.hot_area[0].list];
        
        WorldCell *cell = [tableView dequeueReusableCellWithIdentifier:@"WorldCell"];
        if (cell == nil)
        {
            cell = [[WorldCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"WorldCell"];
        }
        
        
        cell.cityTitle.text = @"欧洲美国";
        
        [cell.cityBtn enumerateObjectsUsingBlock:^(UIButton * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            [obj setBackgroundImageWithURL:self.place[idx].photo.wx_URL forState:UIControlStateNormal options:NO];
        }];
        
        [cell.cityName enumerateObjectsUsingBlock:^(UILabel * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            obj.text = self.place[idx].name;
        }];
        
        
        
        [cell.cityPic1 setImageURL:self.list[0].photo.wx_URL];
        cell.title1LB.text = self.list[0].title;
        cell.sold1LB.text = self.list[0].sold;
        cell.price1LB.text = [self.list[0].price stringByAppendingString:@" 元起"];
        
        
        [cell.cityPic2 setImageURL:self.list[1].photo.wx_URL];
        cell.title2LB.text = self.list[1].title;
        cell.sold2LB.text = self.list[1].sold;
        cell.price2LB.text = [self.list[1].price stringByAppendingString:@" 元起"];
        
        //cell.moreContentBtn.titleLabel.text = [NSString stringWithFormat: @"查看港澳台专题 >"];
        
        [cell.moreContentBtn setTitle:[NSString stringWithFormat: @"查看欧洲美国专题 >"] forState:UIControlStateNormal];
        return cell;
    }
    
        if (indexPath.section == 2)
        {
            [self.place1 addObjectsFromArray:self.shoppingModel.data.hot_area[1].place];
            [self.list1 addObjectsFromArray:self.shoppingModel.data.hot_area[1].list];


                WorldCell *cell = [tableView dequeueReusableCellWithIdentifier:@"WorldCell"];
            if (cell == nil)
            {
                cell = [[WorldCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"WorldCell"];
            }
            
        
            cell.cityTitle.text = @"港澳台";
            
            [cell.cityBtn enumerateObjectsUsingBlock:^(UIButton * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                [obj setBackgroundImageWithURL:self.place1[idx].photo.wx_URL forState:UIControlStateNormal options:NO];
            }];
            
            [cell.cityName enumerateObjectsUsingBlock:^(UILabel * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                obj.text = self.place1[idx].name;
            }];
            
            
            
            [cell.cityPic1 setImageURL:self.list1[0].photo.wx_URL];
            cell.title1LB.text = self.list1[0].title;
            cell.sold1LB.text = self.list1[0].sold;
            cell.price1LB.text = [self.list1[0].price stringByAppendingString:@" 元起"];
            
            
            [cell.cityPic2 setImageURL:self.list1[1].photo.wx_URL];
            cell.title2LB.text = self.list1[1].title;
            cell.sold2LB.text = self.list1[1].sold;
            cell.price2LB.text = [self.list1[1].price stringByAppendingString:@" 元起"];
            
            //cell.moreContentBtn.titleLabel.text = [NSString stringWithFormat: @"查看港澳台专题 >"];
            
            [cell.moreContentBtn setTitle:[NSString stringWithFormat: @"查看港澳台专题 >"] forState:UIControlStateNormal];
            return cell;
         }
    
    if (indexPath.section == 3)
    {
        [self.place2 addObjectsFromArray:self.shoppingModel.data.hot_area[2].place];
        [self.list2 addObjectsFromArray:self.shoppingModel.data.hot_area[2].list];
        WorldCell *cell = [tableView dequeueReusableCellWithIdentifier:@"WorldCell"];
        if (cell == nil)
        {
            cell = [[WorldCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"WorldCell"];
        }
        
        
        cell.cityTitle.text = @"东南亚";
        
        [cell.cityBtn enumerateObjectsUsingBlock:^(UIButton * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            [obj setBackgroundImageWithURL:self.place2[idx].photo.wx_URL forState:UIControlStateNormal options:NO];
        }];
        
        [cell.cityName enumerateObjectsUsingBlock:^(UILabel * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            obj.text = self.place2[idx].name;
        }];
        
        
        
        [cell.cityPic1 setImageURL:self.list2[0].photo.wx_URL];
        cell.title1LB.text = self.list2[0].title;
        cell.sold1LB.text = self.list2[0].sold;
        cell.price1LB.text = [self.list2[0].price stringByAppendingString:@" 元起"];
        
        
        [cell.cityPic2 setImageURL:self.list2[1].photo.wx_URL];
        cell.title2LB.text = self.list2[1].title;
        cell.sold2LB.text = self.list2[1].sold;
        cell.price2LB.text = [self.list2[1].price stringByAppendingString:@" 元起"];
        
        //cell.moreContentBtn.titleLabel.text = [NSString stringWithFormat: @"查看港澳台专题 >"];
        
        [cell.moreContentBtn setTitle:[NSString stringWithFormat: @"查看东南亚专题 >"] forState:UIControlStateNormal];
        return cell;
    }
    return nil;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.section)
    {
        case 0:
            return 120;
            break;
        case 1:
            return 360;
            break;
        case 2:
            return 360;
            break;
        case 3:
            return 360;
            break;
            
        default:
            break;
    }
    return 20;
}

//-(UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
//{
//    return nil;
//}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    switch (section)
    {
        case 0:
            return 10;
            break;
        case 1:
            return 0;
            break;
            
        default:
            break;
    }
    return 0;
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    switch (section)
    {
        case 0:
            return 10;
            break;
        case 1:
            return 10;
            break;
        case 2:
            return 10;
            break;
        case 3:
            return 10;
            break;
        default:
            break;
    }
    return 0;
}

// 获取表头的数据内容并显示.
-(UIView *)setHeaderView
{
    ShoppingHeaderView *headerView = [[ShoppingHeaderView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width , 230)];
    
    // 取得所有表头ICON的数据.
    [self.iconList  addObjectsFromArray: self.shoppingModel.data.icon_list];
    
    if (self.iconList.count > 0)
    {
        NSArray<NSString *>  *iconData = [NSArray new];
        NSMutableArray  *iconTempArr = [NSMutableArray new];
        for (NSInteger i = 0; i < self.iconList.count; i ++)
        {
            NSString* iconPath = self.iconList[i].icon_pic;
            [iconTempArr addObject:iconPath];
        }
        iconData = iconTempArr.copy;
        
        // 使用第三方轮子的数组遍历方法把所有的图片遍历出来给btn做背景图片.
        [headerView.headerBtn enumerateObjectsUsingBlock:^(UIButton * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            //[obj setImageWithURL:iconData[idx].wx_URL  forState:UIControlStateNormal options:NO];
            
            [obj setBackgroundImageWithURL:iconData[idx].wx_URL forState:UIControlStateNormal options:NO];
        }];
        
        
        NSArray<NSString *> *textData = [NSArray new];
        NSMutableArray  *textTempArr = [NSMutableArray new];
        for (NSInteger i = 0; i < self.iconList.count; i ++)
        {
            NSString *textContent = self.iconList[i].icon;
            [textTempArr addObject:textContent];
        }
        textData = textTempArr.copy;
        
        // 使用第三方轮子的数组遍历方法把所有的项目栏文字遍历出来并显示的LABLE上.
        [headerView.headerLB enumerateObjectsUsingBlock:^(UILabel * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            obj.text = textData[idx];
        }];
        
        return headerView;
    }
    return nil;
}
@end
