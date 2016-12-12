//
//  BournCityVC.h
//  Qyer
//
//  Created by 😘王艳 on 2016/11/23.
//  Copyright © 2016年 DKD. All rights reserved.
//
#import "BournCityVC.h"
#import "CityheadCell.h"
#import "HeaddownCell.h"
#import "TwoHeaddownCell.h"
#import "ThreeHeaddownCell.h"
#import "ThreeCell.h"
#import "HeadCell.h"
#import "MapVC.h"
//屏幕宽
#define WIDTH  [UIScreen mainScreen].bounds.size.width
#define HEIGHT [UIScreen mainScreen].bounds.size.height

@interface BournCityVC ()<UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout,iCarouselDelegate,iCarouselDataSource>



@property(nonatomic) CityVSCountryModel* datalist;

@property(nonatomic) NSArray<NSString*> *picture;

@property(nonatomic) UICollectionView *cityView;

@property(nonatomic) UICollectionViewFlowLayout* layou;

@property(nonatomic) iCarousel* icvc;

@property(nonatomic) UIView* HeadView;

@property(nonatomic) NSTimer* timer;
//顶部视图
@property(nonatomic) UIView* startView;
//中文名称
@property(nonatomic) UILabel* ename;
//英文名称
@property(nonatomic) UILabel* cname;

//@property(nonatomic)
@end

@implementation BournCityVC

#pragma  mark ------ iC代理
-(NSInteger)numberOfItemsInCarousel:(iCarousel *)carousel
{
    return self.picture.count;
}
//  每个 carousel 显示什么
-(UIView *)carousel:(iCarousel *)carousel viewForItemAtIndex:(NSInteger)index reusingView:(UIView *)view
{
    if (!view) {
        view = [[UIImageView alloc]initWithFrame:carousel.bounds];
    }
    [((UIImageView*)view) setImageURL:self.picture[index].wx_URL];
    return view;
}
//     设置允许循环滚动
-(CGFloat)carousel:(iCarousel *)carousel valueForOption:(iCarouselOption)option withDefault:(CGFloat)value
{
    if (option == iCarouselOptionWrap) {
        value = YES;
    }
    return value;
}

#pragma mark ----- HeadView懒加载
//顶部视图
-(UIView *)startView
{
    if (!_startView)
    {
        _startView = [UIView new];
        [self.cityView addSubview:_startView];
        _startView.backgroundColor = [UIColor colorWithRed:36 / 255.0 green:190 / 255.0 blue:123 / 255.0 alpha:0];
        _startView.frame = CGRectMake(0, 0, WIDTH, 64);
    }
    return _startView;
}
// 中文名称
-(UILabel *)ename
{
    if (!_ename) {
        _ename = [UILabel new];
        [_startView addSubview:_ename];
        _ename.textColor = [UIColor whiteColor];
        _ename.alpha = 0;
        _ename.font = [UIFont systemFontOfSize:16];
        [_ename mas_makeConstraints:^(MASConstraintMaker *make) {
            make.center.equalTo(0);
        }];
    }
    return _ename;
}
//  英文名称
-(UILabel *)cname
{
    if (!_cname) {
        _cname = [UILabel new];
        [_startView addSubview:_cname];
        _cname.textColor = [UIColor whiteColor];
        _cname.alpha = 0;
        _cname.font = [UIFont systemFontOfSize:9];
        [_cname mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(0);
            make.bottom.equalTo(-9);
        }];
    }
    return _cname;
}
-(UIView *)HeadView
{
    if (!_HeadView) {
        CGFloat hight = HEIGHT * 467 / 1135;
        _HeadView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, hight)];
        if (!_icvc) {
            _icvc = [iCarousel new];
            [self.HeadView addSubview:_icvc];
            [_icvc mas_makeConstraints:^(MASConstraintMaker *make) {
                make.edges.equalTo(0);
            }];
            self.icvc.delegate = self;
            self.icvc.dataSource = self;
            _icvc.scrollSpeed = 0;
        }
    }
    return _HeadView;
}



-(UICollectionViewFlowLayout *)layou
{
    if (!_layou) {
        _layou = [[UICollectionViewFlowLayout alloc]init];
    }
    return _layou;
}
-(UICollectionView*)cityView
{
    if (!_cityView) {
        _cityView = [[UICollectionView alloc]initWithFrame:CGRectMake( 0, 0, WIDTH , HEIGHT) collectionViewLayout:self.layou];
        
        _cityView.delegate = self;
        _cityView.dataSource = self;
        [_cityView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"Cell"];
        _cityView.backgroundColor = [UIColor whiteColor];
        _cityView.scrollEnabled = YES;
        //注册单元格
        [_cityView registerClass:[CityheadCell class] forCellWithReuseIdentifier:@"CityheadCell"];
        [_cityView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"Cell"];
        [_cityView registerClass:[ThreeCell class] forCellWithReuseIdentifier:@"ThreeCell"];
        [_cityView registerClass:[HeadCell class] forCellWithReuseIdentifier:@"HeadCell"];
        //注册分区头
        [_cityView registerClass:[HeaddownCell class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"HeaddownCell"];
        [_cityView registerClass:[TwoHeaddownCell class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"TwoHeaddownCell"];
        [_cityView registerClass:[UICollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:@"footView"];
        [_cityView registerClass:[ThreeHeaddownCell class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"ThreeHeaddownCell"];
        
    }
    return _cityView;
}
#pragma mark ----- ViewDidLoad
//  push过来的时候  隐藏  即将消失的时候 显示回来
-(UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated ];
    self.navigationController.navigationBarHidden = YES;
    //    self.tabBarController.hidesBottomBarWhenPushed = YES;
}
- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBarHidden = NO;
        self.tabBarController.hidesBottomBarWhenPushed = NO;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    UIView* LoadView = [ZXFactory Loadingbackground];
    [self.view addSubview:LoadView];
    self.view.backgroundColor = [UIColor whiteColor];
    self.cityView.backgroundColor = [UIColor whiteColor];
    // 添加到父类中.并调用其懒加载
    
    //  获取数据
    
    [NetManager getBournCityVSCountryModelWithidField:self.idField completionHandler:^(CityVSCountryModel *pic, NSError *error) {
        self.datalist = pic;
        [self.view addSubview:self.cityView];
        //添加返回按钮
        [self.view addSubview:self.startView];
        // 将其删除
        [LoadView removeFromSuperview];
        self.ename.text = self.datalist.data.cnname;
        self.cname.text = self.datalist.data.enname;
        [self createWithgoback];
    }];
    
    
}
//  返回按钮  加到顶部视图前面
-(void)createWithgoback
{
    UIButton* goback = [UIButton buttonWithType:UIButtonTypeCustom];
    //暂时先染成黄色
    goback.tintColor = [UIColor whiteColor];
    UIImage * image = [UIImage imageNamed:@"QYNavBack_55x40_-1"];
    // 设置图片渲染模式...根据 TintColor 改变
    [image imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    [goback setImage:image forState:UIControlStateNormal];
    [self.view addSubview:goback];
    [goback mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(10);
        make.top.equalTo(20);
    }];
    //  添加按钮点击事件
    [goback bk_addEventHandler:^(id sender) {
        [self.navigationController popViewControllerAnimated:YES];
    } forControlEvents:UIControlEventTouchUpInside];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark ----- Collection 代理


-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 3;
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    if (section == 0) {
        return 2;
    }
    if (section == 1) {
        return 2;
    }
    if (section == 2) {
        return 6;
    }
    return 0;
}
-(UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CityheadCell* cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CityheadCell" forIndexPath:indexPath];
    //
    CiCodataModel* Model = self.datalist.data;
    // 第一个分区第一列
    if (indexPath.section == 0) {
        if (indexPath.row) {
            [cell image];
            cell.image.image = [UIImage imageNamed:@"CC_Guide_10x24_"];
            
            cell.cityName.text = [Model.cnname stringByAppendingString:@"锦囊"];
            cell.bookNum.text = [NSString stringWithFormat:@"全部%ld本",Model.guideNum];
            
            [cell image2];
            cell.backgroundColor = [UIColor whiteColor];
            return cell;
            
        }
        // 第一分区第0列
        else
        {
            HeadCell* cell = [self.cityView dequeueReusableCellWithReuseIdentifier:@"HeadCell" forIndexPath:indexPath];
            // 拿到顶部视图数据....
            self.picture = self.datalist.data.cityPic;
            // 将石头添加到 cell里面. 并且懒加载调用  顺带 生成iC
            [cell.contentView addSubview:self.HeadView];
            //  刷新 iC
            [self.icvc reloadData];
            //  赋值
            cell.enname.text = Model.enname;
            cell.cnname.text = Model.cnname;
            //  使用字符串将天气 拼接
            NSString* str = [NSString stringWithFormat:@"%@    %@~%@",Model.weather.info,Model.weather.low_temp,Model.weather.high_temp];
            //天气存在的时候在赋值
            if (Model.weather.info.length > 0) {
                cell.info.text = str;
            }
            [cell tour];
            //启动定时器让iC无限滚动  为防止复用时重新启动定时器..
            static int num = 0;
            if (!num) {
                _timer = [NSTimer bk_scheduledTimerWithTimeInterval:3.0 block:^(NSTimer *timer) {
                    [self.icvc setCurrentItemIndex:self.icvc.currentItemIndex + 1];
                } repeats:YES];
                num++;
            }
            return cell;
        }
    }
    // 第二个分区第零列
    if (indexPath.section  ==  1) {
        if (indexPath.row == 0) {
            UICollectionViewCell* cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
            UIImageView* image = [UIImageView new];
            [image setImageURL:Model.city_map.wx_URL];
            //            NSLog(@"%@",Model.city_map);
            [cell.contentView addSubview:image];
            [image mas_makeConstraints:^(MASConstraintMaker *make) {
                make.edges.equalTo(0);
            }];
            UILabel* mapname = [UILabel new];
            [cell.contentView addSubview:mapname];
            mapname.backgroundColor = [UIColor whiteColor];
            mapname.layer.cornerRadius = 15;
            mapname.layer.borderWidth = 1.5;
            mapname.layer.borderColor =  [UIColor colorWithRed:36 / 255.0 green:190 / 255.0 blue:123 / 255.0 alpha:1].CGColor;
            mapname.clipsToBounds = YES;
            mapname.text = [Model.cnname stringByAppendingString:@"地图"];
            mapname.textColor = [UIColor colorWithRed:36 / 255.0 green:190 / 255.0 blue:123 / 255.0 alpha:1];
            mapname.textAlignment = NSTextAlignmentCenter;
            [mapname mas_makeConstraints:^(MASConstraintMaker *make) {
                make.center.equalTo(0);
                make.width.equalTo(120);
                make.height.equalTo(30);
            }];
            image.contentMode = UIViewContentModeScaleAspectFill;
            
            return cell;
        }
        // 第二个分区第一列
        if (indexPath.row == 1) {
            cell.image.image = [UIImage imageNamed:@"已想去icon"];
            cell.cityName.text = [NSString stringWithFormat:@"我收藏的%@目的地",Model.cnname];
            [cell image2];
            cell.backgroundColor = [UIColor whiteColor];
            return cell;
        }
    }
    if (indexPath.section == 2) {
        ThreeCell* cell = [self.cityView dequeueReusableCellWithReuseIdentifier:@"ThreeCell" forIndexPath:indexPath];
        cell.backgroundColor = [UIColor whiteColor];
        [cell.icon setImageURL:Model.not_miss.pois[indexPath.row].photo.wx_URL];
        cell.name.text = Model.not_miss.pois[indexPath.row].name;
        cell.grade.text = Model.not_miss.pois[indexPath.row].grade;
        
        return cell;
    }
    return cell;
}

-(UICollectionReusableView*)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    
    // Top必去数据
    CiConot_missModel* missModel = self.datalist.data.not_miss;
    static int num = 0;
    if (indexPath.section == 0) {
        HeaddownCell* headerView =[self.cityView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"HeaddownCell" forIndexPath:indexPath];
        for (UIView *view in headerView.subviews)
        {
            [view removeFromSuperview];
        }
        headerView.backgroundColor = [UIColor whiteColor];
        NSLog(@"%@",headerView);
        if (num == 1) {
            NSLog(@"第%d次我是0分区%ld----%ld",num,indexPath.section,indexPath.row);
        }
        
        num++;
        return headerView;
    }
    if (indexPath.section == 1) {
        TwoHeaddownCell* headerView = [self.cityView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"TwoHeaddownCell" forIndexPath:indexPath];
        headerView.backgroundColor = [UIColor whiteColor];
        //        [headerView iconViewWithIcon:4];
        return headerView;
        
    }
    if (indexPath.section == 2) {
        ThreeHeaddownCell* headdown = [self.cityView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"ThreeHeaddownCell" forIndexPath:indexPath];
        
        [headdown title];
        if (missModel.events.count == 2) {
            [headdown.image1 setImageURL:missModel.events[0].photo.wx_URL];
            [headdown.image2 setImageURL:missModel.events[0].icon.wx_URL];
            headdown.content1.text = missModel.events[0].name;
            [headdown.image2 setImageURL:missModel.events[1].photo.wx_URL];
            headdown.content2.text = missModel.events[1].name;
        }
        if (missModel.events.count == 1) {
            [headdown.image1 setImageURL:missModel.events[0].photo.wx_URL];
            headdown.content1.text = missModel.events[0].name;
        }
        headdown.backgroundColor = [UIColor whiteColor];
        return headdown;
    }
    return nil;
    
}
//  ScrollView 代理方法.... 视图在移动变化的时候调用。
-(void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    CGFloat y  = scrollView.contentOffset.y;
    UIColor* color = [UIColor colorWithRed:36 / 255.0 green:190 / 255.0 blue:123 / 255.0 alpha:1];
    if (y > 0) {
        CGFloat alpha = (y) / 100;
        _startView.backgroundColor = [color colorWithAlphaComponent:alpha];
        _cname.alpha = alpha;
        _ename.alpha = alpha;
    }
}
#pragma mark ----- layou 代理
// 表尾 大小
-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout referenceSizeForFooterInSection:(NSInteger)section
{
    CGFloat hight = HEIGHT * 10 / 1135;
    return CGSizeMake(WIDTH, hight);
}
// 表头大小
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section
{
    CGFloat hight  = 0;
    if (section == 0) {
        hight = HEIGHT * 467 / 1135;
        //        hight = 0;
        return CGSizeMake(WIDTH, 1);
        
    }
    if (section == 1) {
        hight = HEIGHT * 385 / 1135;
        
    }
    if (section == 2) {
        hight = Higt;
    }
    return CGSizeMake(WIDTH, hight);
    
}

// 边距
-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    if (section == 2) {
        CGFloat widg = (WIDTH) * 30  / 640;
        return UIEdgeInsetsMake(20, widg, 50, widg);
    }
    return UIEdgeInsetsMake(0, 0, 0, 0);
}
// 行
-(CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section
{
    if (section == 2) {
        return 25;
    }
    return 0;
}
// 列
-(CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section
{
    if (section == 2) {
        return 10;
    }
    return 0;
}
// item 大小
-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    // CGFloat hight = HEIGHT *
    if (!indexPath.section)
    {
        if (indexPath.row) {
            return CGSizeMake(WIDTH,HEIGHT * 90 / 1135);
        }else return CGSizeMake(WIDTH, (HEIGHT) * 467 / 1135);
        
    }
    if (indexPath.section == 1)
    {
        if (indexPath.row == 1)
        {
            return CGSizeMake(WIDTH,HEIGHT* 80 / 1135 );
        }
        if (indexPath.row == 0)
        {
            return CGSizeMake(WIDTH, HEIGHT * 166 / 1135);
        }
    }
    if (indexPath.section == 2) {
        return CGSizeMake((WIDTH) * 180 / 640, (HEIGHT) * 320 / 1135);
    }
    return CGSizeMake(0, 0);
}
//点击Cell相应事件
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    CiCodataModel* Model = self.datalist.data;
    NSString* MapName = [Model.cnname stringByAppendingString:@"地图"];
    if (indexPath.section == 1 && indexPath.row == 0) {
        MapVC* vc = [MapVC new];
        vc.title = MapName;
        self.tabBarController.hidesBottomBarWhenPushed = NO;
        [self.navigationController pushViewController:vc animated:YES];
        self.tabBarController.hidesBottomBarWhenPushed = YES;
    }
}
@end
