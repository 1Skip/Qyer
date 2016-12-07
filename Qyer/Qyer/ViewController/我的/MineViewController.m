//
//  MineViewController.m
//  Qyer
//
//  Created by “Skip、 on 2016/11/18.
//  Copyright © 2016年 DKD. All rights reserved.
//

#import "MineViewController.h"
#import "HeaderView.h"
@interface MineViewController ()

#define khigh 220
//@property(nonatomic)UIView* image;
@property (nonatomic) NSArray* photoArr;

@property (nonatomic) NSArray* titleArr;

@property(nonatomic)UIView* image;

@end

@implementation MineViewController
-(NSArray *)photoArr
{
    if (!_photoArr) {
        NSArray * arr = @[@"myOrder_icon_19x21_",@"myOrderCollecte_icon",@"mycoupon_icon"];
        NSArray* arr2 = @[@"mywantto_icon",@"MyFootPrint_icon",@"MyComment_icon"];
        NSArray* arr3 = @[@"MyPosts_icon",@"MyQuestionsAnswers_icon",@"MyGoWith_icon"];
        _photoArr = @[arr,arr2,arr3];
    }
    return _photoArr;
}
-(NSArray *)titleArr
{
    if (!_titleArr) {
        NSArray* arr = @[@"我的订单",@"我收藏的折扣",@"我的优惠券"];
        NSArray* arr2 = @[@"我收藏的目的地",@"我的足迹",@"等我点评的目的地"];
        NSArray* arr3 = @[@"我发布的帖子",@"我的回答",@"我的结伴"];
        _titleArr = @[arr,arr2,arr3];
    }
    return _titleArr;
}
//-(void)viewWillAppear:(BOOL)animated
//{
//
//[self.navigationController setNavigationBarHidden:YES animated:YES];
//
//    
//self.navigationController.navigationBar.hidden=YES;
//}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self Setnavigationbar];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"reuseIdentifier"];
    self.image = [[NSBundle mainBundle]loadNibNamed:@"Headerview" owner:nil options:nil].firstObject;
    [self.tableView addSubview:self.image];
    self.image.frame = CGRectMake(0, -khigh , WIDTH, khigh + 64);
    [self addWoolglass];
    self.tableView.contentInset = UIEdgeInsetsMake(khigh, 0, 0, 0);
    self.tableView.separatorInset = UIEdgeInsetsZero;
    
}
-(void)addWoolglass
{
    UIBlurEffect* effe = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
    
    UIVisualEffectView *effect = [[UIVisualEffectView alloc]initWithEffect:effe];
    
    effect.alpha = 0.6;
    
    [self.image addSubview:effect];
    
    [effect mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(0);
    }];

}
//设置导航栏
-(void)Setnavigationbar
{
    //设置导航栏成不透明
    self.navigationController.navigationBar.translucent = NO;
    self.tableView.contentInset = UIEdgeInsetsMake(khigh, 0, 0, 0);
    self.navigationItem.title = @"个人中心";
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    //修改 title 字体大小以及颜色
    self.navigationController.navigationBar.titleTextAttributes = @{UITextAttributeTextColor: [UIColor whiteColor],UITextAttributeFont : [UIFont boldSystemFontOfSize:17]};
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"Msg_Alert"] style:UIBarButtonItemStyleDone target:nil action:nil];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"QYNavSettingGreen_40x40_"] style:UIBarButtonItemStyleDone target:nil action:nil];
}
-(void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    CGFloat off_y = scrollView.contentOffset.y;

    if ( -off_y   >  khigh   ) {
        CGRect fram = self.image.frame;
        
        NSLog(@"原有%f",fram.origin.y);
        
        fram.origin.y = off_y;
        
        fram.size.height = -off_y;
        
        self.image.frame = fram;
        
        NSLog(@"变化%f",fram.origin.y);
    }
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView * view = [UIView new];
    if (section == 0) {
        view.backgroundColor = [UIColor whiteColor];
        NSArray* arr = @[@"MyPosts_icon",@"downloadAdvice_icon",@"myTravel_icon"];
        UIButton* btn1 = [ZXFactory addSystemBtnWithName:arr[0]];
        UIButton* btn2 = [ZXFactory addSystemBtnWithName:arr[1]];
        UIButton* btn3 = [ZXFactory addSystemBtnWithName:arr[2]];
        [view addSubview:btn1];
        [view addSubview:btn2];
        [view addSubview:btn3];
        [btn1 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(50);
            make.top.equalTo(25);
        }];
        [btn2 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(0);
            make.top.equalTo(25);
        }];
        [btn3 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.equalTo(-50);
            make.top.equalTo(25);
        }];
   
        return view;
    }
    view.backgroundColor = [[UIColor grayColor] colorWithAlphaComponent:0.5];
    
    return view;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    if (section == 0) {
        CGFloat higt = kHight * 160 / 1135;
        return higt;
    }
    CGFloat higt = kHight * 22 / 1135;
    return higt;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CGFloat higt  =  kHight * 100 / 1135;
    return higt;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.photoArr.count + 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return 0;
    }
    return 3;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"reuseIdentifier" forIndexPath:indexPath];
    cell.textLabel.text = self.titleArr[indexPath.section - 1][indexPath.row];
    cell.imageView.image = [UIImage imageNamed:self.photoArr[indexPath.section - 1][indexPath.row]];
    UIImageView* image = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"QYRightArrowGreen_12x13_"]];
    cell.accessoryView = image;
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
