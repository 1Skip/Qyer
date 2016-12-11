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
@property(nonatomic) NSMutableArray<ShoppingHotGoodsModel *> *hotGoodsList;
@property(nonatomic) NSMutableArray<ShoppingDisCountTopicListModel *> *topicList;
@property(nonatomic) NSMutableArray<ShoppingDisCountTopicListModel *> *topicList1;
@property(nonatomic) NSMutableArray<ShoppingListModel *> *list;
@property(nonatomic) NSMutableArray<ShoppingPlaceModel *> *place;
@property(nonatomic) NSMutableArray<ShoppingListModel *> *list1;
@property(nonatomic) NSMutableArray<ShoppingPlaceModel *> *place1;
@property(nonatomic) NSMutableArray<ShoppingListModel *> *list2;
@property(nonatomic) NSMutableArray<ShoppingPlaceModel *> *place2;
@property(nonatomic) NSString *cityDetailIDStr0;
@property(nonatomic) NSMutableArray *cityDetailIDList0;
@property(nonatomic) NSString *cityDetailIDStr1;
@property(nonatomic) NSMutableArray *cityDetailIDList1;
@property(nonatomic) NSString *worldIDStr0;
@property(nonatomic) NSMutableArray *worldIDList0;
@property(nonatomic) NSString *worldIDStr1;
@property(nonatomic) NSMutableArray *worldIDList1;
@property(nonatomic) NSString *worldIDStr2;
@property(nonatomic) NSMutableArray *worldIDList2;
@property(nonatomic) NSString *idStr;
@property(nonatomic) NSMutableArray *goodsIdList;
@property(nonatomic) NSString *adverSpecialTicketStr;
@property(nonatomic) NSString *adverFlyStr;
@property(nonatomic) NSString *adverVisaStr;
@property(nonatomic) NSString *banner1Str;
@property(nonatomic) NSString *banner2Str;

@end

@implementation ShoppingViewController
-(UIColor *)shoppingBackgroundColor
{
    return [UIColor colorWithRed:242 / 255.0 green:242 / 255.0 blue:242 / 255.0 alpha:1];
}


# pragma -mark 所有变量的初始化
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

-(NSMutableArray<ShoppingDisCountTopicListModel *> *)topicList
{
    if (!_topicList)
    {
        _topicList = [NSMutableArray new];
    }
    return _topicList;
}

-(NSMutableArray<ShoppingDisCountTopicListModel *> *)topicList1
{
    if (!_topicList1)
    {
        _topicList1 = [NSMutableArray new];
    }
    return _topicList1;
}

-(NSMutableArray<ShoppingHotGoodsModel *> *)hotGoodsList
{
    if (!_hotGoodsList)
    {
        _hotGoodsList = [NSMutableArray new];
    }
    return _hotGoodsList;
}

-(NSString *)idStr
{
    if (!_idStr)
    {
        _idStr =[NSString new];
    }
    return _idStr;
}

-(NSMutableArray *)goodsIdList
{
    if (!_goodsIdList)
    {
        _goodsIdList = [NSMutableArray new];
    }
    return _goodsIdList;
}

-(NSString *)cityDetailIDStr0
{
    if (!_cityDetailIDStr0)
    {
        _cityDetailIDStr0 = [NSString new];
    }
    return _cityDetailIDStr0;
}

-(NSString *)cityDetailIDStr1
{
    if (!_cityDetailIDStr1)
    {
        _cityDetailIDStr1 = [NSString new];
    }
    return _cityDetailIDStr1;
}

-(NSMutableArray *)cityDetailIDList0
{
    if (!_cityDetailIDList0)
    {
        _cityDetailIDList0 = [NSMutableArray new];
    }
    return _cityDetailIDList0;
}

-(NSMutableArray *)cityDetailIDList1
{
    if (!_cityDetailIDList1)
    {
        _cityDetailIDList1 = [NSMutableArray new];
    }
    return _cityDetailIDList1;
}

-(NSString *)worldIDStr0
{
    if (!_worldIDStr0)
    {
        _worldIDStr0 = [NSString new];
    }
    return _worldIDStr0;
}

-(NSString *)worldIDStr1
{
    if (!_worldIDStr1)
    {
        _worldIDStr1 = [NSString new];
    }
    return _worldIDStr1;
}

-(NSString *)worldIDStr2
{
    if (!_worldIDStr2)
    {
        _worldIDStr2 = [NSString new];
    }
    return _worldIDStr2;
}

-(NSMutableArray *)worldIDList0
{
    if (!_worldIDList0)
    {
        _worldIDList0 = [NSMutableArray new];
    }
    return _worldIDList0;
}

-(NSMutableArray *)worldIDList1
{
    if (!_worldIDList1)
    {
        _worldIDList1 = [NSMutableArray new];
    }
    return _worldIDList1;
}

-(NSMutableArray *)worldIDList2
{
    if (!_worldIDList2)
    {
        _worldIDList2 = [NSMutableArray new];
    }
    return _worldIDList2;
}

-(NSString *)adverSpecialTicketStr
{
    if (!_adverSpecialTicketStr)
    {
        _adverSpecialTicketStr = [NSString new];
    }
    return _adverSpecialTicketStr;
}

-(NSString *)adverFlyStr
{
    if (!_adverFlyStr)
    {
        _adverFlyStr = [NSString new];
    }
    return _adverFlyStr;
}

-(NSString *)adverVisaStr
{
    if (!_adverVisaStr)
    {
        _adverVisaStr = [NSString new];
    }
    return _adverVisaStr;
}

-(NSString *)banner1Str
{
    if (!_banner1Str)
    {
        _banner1Str = [NSString new];
    }
    return _banner1Str;
}

-(NSString *)banner2Str
{
    if (!_banner2Str)
    {
        _banner2Str = [NSString new];
    }
    return _banner2Str;
}


# pragma -mark 主程序
- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView setBackgroundColor:[UIColor whiteColor]];
    [self.tableView registerClass:[AdvertisementCell class] forCellReuseIdentifier:@"AdvertisementCell"];
    [self.tableView registerClass:[WorldCell class] forCellReuseIdentifier:@"WorldCell"];
    [self.tableView registerClass:[DiscountTopicCell class] forCellReuseIdentifier:@"DiscountTopicCell"];
    [self.tableView registerClass:[HotGoodsCell class] forCellReuseIdentifier:@"HotGoodsCell"];
    
    // 去掉tableViewCell中的分割线
    self.tableView.separatorStyle = NO;
    
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
    return 7;
}


# pragma -mark 每组有多少个元素
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSInteger i = self.shoppingModel.data.market_topic.count;
    NSInteger j = self.shoppingModel.data.hot_area[1].place.count;
    NSInteger k = self.shoppingModel.data.discount_topic[1].list.count;
    NSInteger l = self.shoppingModel.data.hot_goods.count;

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
        case 4:
            if (k != 0)
            {
                return 1;
            }
            else
            {
                return 0;
            }
            break;
        case 5:
            if (k != 0)
            {
                return 1;
            }
            else
            {
                return 0;
            }
        case 6:
            if (l != 0)
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


# pragma -mark 每组的 cell 显示样式
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
            [cell.leftBtn addTarget:self action:@selector(leftBtn:) forControlEvents:UIControlEventTouchUpInside];

            [cell.rightUpBtn setBackgroundImageWithURL:self.marketTopicList[1].pic.wx_URL forState:UIControlStateNormal options:0];
            [cell.rightUpBtn addTarget:self action:@selector(rightUpBtn:) forControlEvents:UIControlEventTouchUpInside];
            
            [cell.rightDownBtn setBackgroundImageWithURL:self.marketTopicList[2].pic.wx_URL forState:UIControlStateNormal options:0];
            [cell.rightDownBtn addTarget:self action:@selector(rightDownBtn:) forControlEvents:UIControlEventTouchUpInside];
            
            
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
        
        
        
        
        [cell.cityBtn enumerateObjectsUsingBlock:^(UIButton * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            [obj setBackgroundImageWithURL:self.place[idx].photo.wx_URL forState:UIControlStateNormal options:NO];
        }];
        
        [cell.cityName enumerateObjectsUsingBlock:^(UILabel * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            obj.text = self.place[idx].name;
        }];
        
        cell.cityTitle.text = @"日韩";
        
        UIImageView *hkIV = [UIImageView new];
        [cell.cityView addSubview:hkIV];
        [hkIV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.equalTo(kWidth * (600.f / 639.f));
            make.height.equalTo((120.f / 710.f) * (kHight * (718.f / 1132.f)));
            make.left.equalTo(kWidth * (30.f / 639.f));
            make.top.equalTo(-(30.f / 710.f) * (kHight * (718.f / 1132.f)));
        }];
        hkIV.image = [UIImage imageNamed:@"日本_375x65_"];
        [cell.cityView addSubview:hkIV];
        
        
        [cell.cityPic1 setImageURL:self.list[0].photo.wx_URL];
        cell.title1LB.text = self.list[0].title;
        cell.sold1LB.text = self.list[0].sold;
        cell.price1LB.text = [self.list[0].price stringByAppendingString:@" 元起"];
        
        
        [cell.cityPic2 setImageURL:self.list[1].photo.wx_URL];
        cell.title2LB.text = self.list[1].title;
        cell.sold2LB.text = self.list[1].sold;
        cell.price2LB.text = [self.list[1].price stringByAppendingString:@" 元起"];
        
        for (NSInteger i = 0; i < 2; i ++)
        {
            self.worldIDStr0 = self.list[i].ID;
            [self.worldIDList0 addObject:self.worldIDStr0];
        }
        
        cell.cityDetail01Btn.tag = 0;
        [cell.cityDetail01Btn addTarget:self action:@selector(world0Btn:) forControlEvents:UIControlEventTouchUpInside];
        
        cell.cityDetail02Btn.tag = 1;
        [cell.cityDetail02Btn addTarget:self action:@selector(world0Btn:) forControlEvents:UIControlEventTouchUpInside];
        
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
            
            cell.cityTitle.text = @"东南亚";
            
            UIImageView *eastIV = [UIImageView new];
            [cell.cityView addSubview:eastIV];
            [eastIV mas_makeConstraints:^(MASConstraintMaker *make) {
                make.width.equalTo(kWidth * (600.f / 639.f));
                make.height.equalTo((120.f / 710.f) * (kHight * (718.f / 1132.f)));
                make.left.equalTo(kWidth * (20.f / 639.f));
                make.top.equalTo(-(20.f / 710.f) * (kHight * (718.f / 1132.f)));
            }];

            eastIV.image = [UIImage imageNamed:@"泰国_375x65_"];
            [cell.cityView addSubview:eastIV];

            
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
            
            for (NSInteger i = 0; i < 2; i ++)
            {
                self.worldIDStr1 = self.list1[i].ID;
                [self.worldIDList1 addObject:self.worldIDStr1];
            }
            
            cell.cityDetail01Btn.tag = 0;
            [cell.cityDetail01Btn addTarget:self action:@selector(world1Btn:) forControlEvents:UIControlEventTouchUpInside];
            
            cell.cityDetail02Btn.tag = 1;
            [cell.cityDetail02Btn addTarget:self action:@selector(world1Btn:) forControlEvents:UIControlEventTouchUpInside];
            
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
        
        
        cell.cityTitle.text = @"欧洲美国";
        
        UIImageView *usatIV = [UIImageView new];
        [cell.cityView addSubview:usatIV];
        [usatIV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.equalTo(kWidth * (600.f / 639.f));
            make.height.equalTo((120.f / 710.f) * (kHight * (718.f / 1132.f)));
            make.left.equalTo(kWidth * (10.f / 639.f));
            make.top.equalTo(-(20.f / 710.f) * (kHight * (718.f / 1132.f)));
        }];
        usatIV.image = [UIImage imageNamed:@"欧美其他_375x65_"];
        
        [cell.cityView addSubview:usatIV];

        
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
        
        for (NSInteger i = 0; i < 2; i ++)
        {
            self.worldIDStr2 = self.list2[i].ID;
            [self.worldIDList2 addObject:self.worldIDStr2];
        }
        
        cell.cityDetail01Btn.tag = 0;
        [cell.cityDetail01Btn addTarget:self action:@selector(world2Btn:) forControlEvents:UIControlEventTouchUpInside];
        
        cell.cityDetail02Btn.tag = 1;
        [cell.cityDetail02Btn addTarget:self action:@selector(world2Btn:) forControlEvents:UIControlEventTouchUpInside];
        
        [cell.moreContentBtn setTitle:[NSString stringWithFormat: @"查看东南亚专题 >"] forState:UIControlStateNormal];
        return cell;
    }
    if (indexPath.section == 4)
    {
        [self.topicList addObjectsFromArray:self.shoppingModel.data.discount_topic[0].list];
        DiscountTopicCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DiscountTopicCell"];
        if (cell == nil)
        {
            cell = [[DiscountTopicCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"DiscountTopicCell"];
        }
        
        
        cell.cityTitle.text = self.shoppingModel.data.discount_topic[0].topic.title;
        
        [cell.topIV setBackgroundImageWithURL:self.shoppingModel.data.discount_topic[0].topic.photo.wx_URL forState:UIControlStateNormal options:NO];
        [cell.topIV addTarget:self action:@selector(topIV1:) forControlEvents:UIControlEventTouchUpInside];
        
        
        [cell.cityPic1 setImageURL:self.topicList[0].photo.wx_URL];
        cell.title1LB.text = self.topicList[0].title;
        cell.sold1LB.text = self.topicList[0].sold;
        cell.price1LB.text = [self.topicList[0].price stringByAppendingString:@" 元起"];
        
        
        [cell.cityPic2 setImageURL:self.topicList[1].photo.wx_URL];
        cell.title2LB.text = self.topicList[1].title;
        cell.sold2LB.text = self.topicList[1].sold;
        cell.price2LB.text = [self.topicList[1].price stringByAppendingString:@" 元起"];
        
        [cell.cityPic3 setImageURL:self.topicList[2].photo.wx_URL];
        cell.title3LB.text = self.topicList[2].title;
        cell.sold3LB.text = self.topicList[2].sold;
        cell.price3LB.text = [self.topicList[2].price stringByAppendingString:@" 元起"];
        
        for (NSInteger i = 0; i < 3; i ++)
        {
            self.cityDetailIDStr0 = self.topicList[i].ID;
            [self.cityDetailIDList0 addObject:self.cityDetailIDStr0];
        }
        
        cell.cityDetail01Btn.tag = 0;
        [cell.cityDetail01Btn addTarget:self action:@selector(cityDetail0Btn:) forControlEvents:UIControlEventTouchUpInside];
        
        cell.cityDetail02Btn.tag = 1;
        [cell.cityDetail02Btn addTarget:self action:@selector(cityDetail0Btn:) forControlEvents:UIControlEventTouchUpInside];
        
        cell.cityDetail03Btn.tag = 2;
        [cell.cityDetail03Btn addTarget:self action:@selector(cityDetail0Btn:) forControlEvents:UIControlEventTouchUpInside];
        
        
        [cell.moreContentBtn setTitle:[NSString stringWithFormat: @"查看完整专题 >"] forState:UIControlStateNormal];
        return cell;
    }
    if (indexPath.section == 5)
    {

        [self.topicList1 addObjectsFromArray:self.shoppingModel.data.discount_topic[1].list];
        DiscountTopicCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DiscountTopicCell"];
        if (cell == nil)
        {
            cell = [[DiscountTopicCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"DiscountTopicCell"];
        }
        
        
        cell.cityTitle.text = self.shoppingModel.data.discount_topic[1].topic.title;
        
        [cell.topIV setBackgroundImageWithURL:self.shoppingModel.data.discount_topic[1].topic.photo.wx_URL forState:UIControlStateNormal options:NO];
        [cell.topIV addTarget:self action:@selector(topIV2:) forControlEvents:UIControlEventTouchUpInside];
        

        [cell.cityPic1 setImageURL:self.topicList1[0].photo.wx_URL];
        cell.title1LB.text = self.topicList1[0].title;
        cell.sold1LB.text = self.topicList1[0].sold;
        cell.price1LB.text = [self.topicList1[0].price stringByAppendingString:@" 元起"];
        self.idStr = self.topicList1[1].ID;
        
        [cell.cityPic2 setImageURL:self.topicList1[1].photo.wx_URL];
        cell.title2LB.text = self.topicList1[1].title;
        cell.sold2LB.text = self.topicList1[1].sold;
        cell.price2LB.text = [self.topicList1[1].price stringByAppendingString:@" 元起"];
        
        [cell.cityPic3 setImageURL:self.topicList1[2].photo.wx_URL];
        cell.title3LB.text = self.topicList1[2].title;
        cell.sold3LB.text = self.topicList1[2].sold;
        cell.price3LB.text = [self.topicList1[2].price stringByAppendingString:@" 元起"];
       
  
        for (NSInteger i = 0; i < 3; i ++)
        {
            self.cityDetailIDStr1 = self.topicList1[i].ID;
            [self.cityDetailIDList1 addObject:self.cityDetailIDStr1];
        }
        
        cell.cityDetail01Btn.tag = 0;
        [cell.cityDetail01Btn addTarget:self action:@selector(cityDetail1Btn:) forControlEvents:UIControlEventTouchUpInside];
        
        cell.cityDetail02Btn.tag = 1;
        [cell.cityDetail02Btn addTarget:self action:@selector(cityDetail1Btn:) forControlEvents:UIControlEventTouchUpInside];
        
        cell.cityDetail03Btn.tag = 2;
        [cell.cityDetail03Btn addTarget:self action:@selector(cityDetail1Btn:) forControlEvents:UIControlEventTouchUpInside];
        
        [cell.moreContentBtn setTitle:[NSString stringWithFormat: @"查看完整专题 >"] forState:UIControlStateNormal];
        return cell;
    }
    if (indexPath.section == 6)
    {
        
        [self.hotGoodsList addObjectsFromArray:self.shoppingModel.data.hot_goods];
        HotGoodsCell *cell = [tableView dequeueReusableCellWithIdentifier:@"HotGoodsCell"];
        if (cell == nil)
        {
            cell = [[HotGoodsCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"HotGoodsCell"];
        }
        
        cell.cityTitle.text = @"有好货";
        NSArray *numberList = @[@"0",@"1",@"2",@"3",@"4",@"5"];
        
        [cell.goodsBtn enumerateObjectsUsingBlock:^(UIButton * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            obj.titleLabel.text = numberList[idx];
        }];
        
        [cell.goodsBtn enumerateObjectsUsingBlock:^(UIButton * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            obj.tag = idx;
            self.idStr = self.hotGoodsList[idx].ID;
            
            [self.goodsIdList addObject:self.idStr];
            
            [obj addTarget:self action:@selector(goodsBtn:) forControlEvents:UIControlEventTouchUpInside];
        }];
        
        

        [cell.goodsPic enumerateObjectsUsingBlock:^(UIImageView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            [obj setImageURL:self.hotGoodsList[idx].photo.wx_URL];
        }];
        
        [cell.titleLB enumerateObjectsUsingBlock:^(UILabel * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            obj.text = self.hotGoodsList[idx].title;
        }];
        
        [cell.statusLB enumerateObjectsUsingBlock:^(UILabel * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            obj.text = self.hotGoodsList[idx].status;
        }];
        
        [cell.priceLB enumerateObjectsUsingBlock:^(UILabel * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            obj.text = [NSString stringWithFormat:@"%@元起",self.hotGoodsList[idx].price];
        }];

        return cell;
    }
    return nil;

}


# pragma -mark 每行 cell 都在做什么
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
}

# pragma -mark 每个分组的高度
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.section)
    {
        case 0:
            return (kHight * (216.f / 1132.f));
            break;
        case 1:
            return (kHight * (660.f / 1132.f));
            break;
        case 2:
            return (kHight * (660.f / 1132.f));
            break;
        case 3:
            return (kHight * (660.f / 1132.f));
            break;
        case 4:
            return (kHight * (960.f / 1132.f));
            break;
        case 5:
            return (kHight * (960.f / 1132.f));
            break;
        case 6:
            return (kHight * (1250.f / 1132.f));
            break;
            
        default:
            break;
    }
    return 20;
}

# pragma  -mark 每组的组头高度
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


# pragma -mark 每组的组尾高度
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
        case 4:
            return 10;
            break;
        case 5:
            return 10;
            break;
        default:
            break;
    }
    return 0;
}


# pragma -mark 表头的设置
// 获取表头的数据内容并显示.
-(UIView *)setHeaderView
{
    ShoppingHeaderView *headerView = [[ShoppingHeaderView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width , kHight * (435 / 1132.0))];
    
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


# pragma -mark 各类 button 的点击事件

// 封装该方法主要作用是用来跳转到下一个界面以及跳转时传递给下个界面的URL
-(IBAction)goodsBtn:(id)sender
{
    UIButton *goodsBtn = (UIButton *)sender;
    
    
    if (goodsBtn.tag == 0)
    {
        NSString *path = [NSString stringWithFormat:kShoppingGoodsPath,self.goodsIdList[0]];
        shoppingWebPageController *wc = [[shoppingWebPageController alloc]initWithURL:path.wx_URL];
        [self.navigationController pushViewController:wc animated:YES];
    }
    if (goodsBtn.tag == 1)
    {
        NSString *path = [NSString stringWithFormat:kShoppingGoodsPath,self.goodsIdList[1]];
        shoppingWebPageController *wc = [[shoppingWebPageController alloc]initWithURL:path.wx_URL];
        [self.navigationController pushViewController:wc animated:YES];
    }
    if (goodsBtn.tag == 2)
    {
        NSString *path = [NSString stringWithFormat:kShoppingGoodsPath,self.goodsIdList[2]];
        shoppingWebPageController *wc = [[shoppingWebPageController alloc]initWithURL:path.wx_URL];
        [self.navigationController pushViewController:wc animated:YES];
    }
    if (goodsBtn.tag == 3)
    {
        NSString *path = [NSString stringWithFormat:kShoppingGoodsPath,self.goodsIdList[3]];
        shoppingWebPageController *wc = [[shoppingWebPageController alloc]initWithURL:path.wx_URL];
        [self.navigationController pushViewController:wc animated:YES];
    }
    if (goodsBtn.tag == 4)
    {
        NSString *path = [NSString stringWithFormat:kShoppingGoodsPath,self.goodsIdList[4]];
        shoppingWebPageController *wc = [[shoppingWebPageController alloc]initWithURL:path.wx_URL];
        [self.navigationController pushViewController:wc animated:YES];
    }
    if (goodsBtn.tag == 5)
    {
        NSString *path = [NSString stringWithFormat:kShoppingGoodsPath,self.goodsIdList[5]];
        shoppingWebPageController *wc = [[shoppingWebPageController alloc]initWithURL:path.wx_URL];
        [self.navigationController pushViewController:wc animated:YES];
    }

}

-(IBAction)cityDetail0Btn:(id)sender
{
    UIButton *button = (UIButton *)sender;
    if (button.tag == 0)
    {
        NSString *path = [NSString stringWithFormat:kShoppingGoodsPath,self.cityDetailIDList0[0]];
        shoppingWebPageController *wc = [[shoppingWebPageController alloc]initWithURL:path.wx_URL];
        [self.navigationController pushViewController:wc animated:YES];
    }
    if (button.tag == 1)
    {
        NSString *path = [NSString stringWithFormat:kShoppingGoodsPath,self.cityDetailIDList0[1]];
        shoppingWebPageController *wc = [[shoppingWebPageController alloc]initWithURL:path.wx_URL];
        [self.navigationController pushViewController:wc animated:YES];
    }
    if (button.tag == 2)
    {
        NSString *path = [NSString stringWithFormat:kShoppingGoodsPath,self.cityDetailIDList0[2]];
        shoppingWebPageController *wc = [[shoppingWebPageController alloc]initWithURL:path.wx_URL];
        [self.navigationController pushViewController:wc animated:YES];
    }
}

-(IBAction)cityDetail1Btn:(id)sender
{
    UIButton *button = (UIButton *)sender;
    if (button.tag == 0)
    {
        NSString *path = [NSString stringWithFormat:kShoppingGoodsPath,self.cityDetailIDList1[0]];
        shoppingWebPageController *wc = [[shoppingWebPageController alloc]initWithURL:path.wx_URL];
        [self.navigationController pushViewController:wc animated:YES];
    }
    if (button.tag == 1)
    {
        NSString *path = [NSString stringWithFormat:kShoppingGoodsPath,self.cityDetailIDList1[1]];
        shoppingWebPageController *wc = [[shoppingWebPageController alloc]initWithURL:path.wx_URL];
        [self.navigationController pushViewController:wc animated:YES];
    }
    if (button.tag == 2)
    {
        NSString *path = [NSString stringWithFormat:kShoppingGoodsPath,self.cityDetailIDList1[2]];
        shoppingWebPageController *wc = [[shoppingWebPageController alloc]initWithURL:path.wx_URL];
        [self.navigationController pushViewController:wc animated:YES];
    }
}

-(IBAction)world0Btn:(id)sender
{
    UIButton *button = (UIButton *)sender;
    if (button.tag == 0)
    {
        NSString *path = [NSString stringWithFormat:kShoppingGoodsPath,self.worldIDList0[0]];
        shoppingWebPageController *wc = [[shoppingWebPageController alloc]initWithURL:path.wx_URL];
        [self.navigationController pushViewController:wc animated:YES];
    }
    if (button.tag == 1)
    {
        NSString *path = [NSString stringWithFormat:kShoppingGoodsPath,self.worldIDList0[1]];
        shoppingWebPageController *wc = [[shoppingWebPageController alloc]initWithURL:path.wx_URL];
        [self.navigationController pushViewController:wc animated:YES];
    }
}

-(IBAction)world1Btn:(id)sender
{
    UIButton *button = (UIButton *)sender;
    if (button.tag == 0)
    {
        NSString *path = [NSString stringWithFormat:kShoppingGoodsPath,self.worldIDList1[0]];
        shoppingWebPageController *wc = [[shoppingWebPageController alloc]initWithURL:path.wx_URL];
        [self.navigationController pushViewController:wc animated:YES];
    }
    if (button.tag == 1)
    {
        NSString *path = [NSString stringWithFormat:kShoppingGoodsPath,self.worldIDList1[1]];
        shoppingWebPageController *wc = [[shoppingWebPageController alloc]initWithURL:path.wx_URL];
        [self.navigationController pushViewController:wc animated:YES];
    }
}

-(IBAction)world2Btn:(id)sender
{
    UIButton *button = (UIButton *)sender;
    if (button.tag == 0)
    {
        NSString *path = [NSString stringWithFormat:kShoppingGoodsPath,self.worldIDList2[0]];
        shoppingWebPageController *wc = [[shoppingWebPageController alloc]initWithURL:path.wx_URL];
        [self.navigationController pushViewController:wc animated:YES];
    }
    if (button.tag == 1)
    {
        NSString *path = [NSString stringWithFormat:kShoppingGoodsPath,self.worldIDList2[1]];
        shoppingWebPageController *wc = [[shoppingWebPageController alloc]initWithURL:path.wx_URL];
        [self.navigationController pushViewController:wc animated:YES];
    }
}

-(IBAction)leftBtn:(id)sender
{
        shoppingWebPageController *wc = [[shoppingWebPageController alloc]initWithURL:kShoppingSpecialPricePath.wx_URL];
        [self.navigationController pushViewController:wc animated:YES];
}

-(IBAction)rightUpBtn:(id)sender
{
    shoppingWebPageController *wc = [[shoppingWebPageController alloc]initWithURL:kShoppingVisaPath.wx_URL];
    [self.navigationController pushViewController:wc animated:YES];
}

-(IBAction)rightDownBtn:(id)sender
{
    shoppingWebPageController *wc = [[shoppingWebPageController alloc]initWithURL:kShoppingFlyTicketPath.wx_URL];
    [self.navigationController pushViewController:wc animated:YES];
}

-(IBAction)topIV1:(id)sender
{
    shoppingWebPageController *wc = [[shoppingWebPageController alloc]initWithURL:kShoppingBanner1Path.wx_URL];
    [self.navigationController pushViewController:wc animated:YES];
}

-(IBAction)topIV2:(id)sender
{
    shoppingWebPageController *wc = [[shoppingWebPageController alloc]initWithURL:kShoppingBanner2Path.wx_URL];
    [self.navigationController pushViewController:wc animated:YES];
}

@end
