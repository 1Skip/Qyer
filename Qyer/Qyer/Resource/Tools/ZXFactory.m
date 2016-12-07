//
//  ZXFactory.m
//  AllpeopleTV
//
//  Created by tarena on 16/12/2.
//  Copyright © 2016年 Zx. All rights reserved.
//

#import "ZXFactory.h"

@implementation ZXFactory

+(void)addBackItemToVC:(UIViewController *)vc
{
      //如果barButtonItem 上方有两个图,  高亮+普通,那就只能自定义一个按钮,把按钮放到barButtonItem上.   因为其默认是系统的只支持默认的一张图 .高亮的时候它会决定变化程度.
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setBackgroundImage:[UIImage imageNamed:@"btn_nav_hp_player_back_normal_30x30"] forState:UIControlStateNormal];
    [btn setBackgroundImage:[UIImage imageNamed:@"btn_nav_hp_player_back_selected_30x30"] forState:UIControlStateHighlighted];
    btn.frame = CGRectMake(0, 0, 20, 20);
    // 修复距离按钮   杠杆...
    UIBarButtonItem* fixitem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    fixitem.width = -15;
    [btn bk_addEventHandler:^(id sender) {
        [vc.navigationController popViewControllerAnimated:YES];
    } forControlEvents:UIControlEventTouchUpInside];
     UIBarButtonItem* item = [[UIBarButtonItem alloc]initWithCustomView:btn];
    vc.navigationItem.leftBarButtonItems = @[fixitem,item];
}
+(void)addSearchItemToVC:(UIViewController *)vc action:(void (^)())handler
{
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setBackgroundImage:[UIImage imageNamed:@"btn_nav_search_normal_25x25_"] forState:UIControlStateNormal];
    [btn setBackgroundImage:[UIImage imageNamed:@"btn_nav_search_selected_25x25_"] forState:UIControlStateHighlighted];
    btn.frame = CGRectMake(0, 0, 25, 25);
    [btn bk_addEventHandler:^(id sender) {
        
        !handler ?: handler();
        
    } forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem* item = [[UIBarButtonItem alloc]initWithCustomView:btn];
    vc.navigationItem.rightBarButtonItem = item;

}
+ (UIButton *)addSystemBtnWithName:(NSString *)name
{
    UIButton *btn  = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn setImage:[UIImage imageNamed:name] forState:UIControlStateNormal];
    return btn;
}
+(UIView *)Loadingbackground
{
    UIView* view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, kWidth, kHight)];
    UIImageView* image2 = [UIImageView new];
    [view addSubview:image2];
    [image2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(0);
        make.width.height.equalTo(65);
    }];
    image2.layer.borderWidth = 1.5;
    
    image2.layer.borderColor = [UIColor grayColor].CGColor;
    
    image2.layer.cornerRadius = 5;
    
    image2.clipsToBounds = YES;
    
    UIImageView* image = [UIImageView new];
//        image.layer.borderWidth = 1.5;
//    
//        image.layer.borderColor = [UIColor grayColor].CGColor;
//    
//        image.layer.cornerRadius = 5;
//    
//        image.clipsToBounds = YES;
    image.tintColor = [UIColor greenColor];
    

    [view addSubview:image];
    [image mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(0);
    }];
    NSMutableArray<UIImage*>* arr = [NSMutableArray new];
    for (int i = 0; i < 13; i ++)
    {
        NSString* str = [NSString stringWithFormat:@"Loading_000%d_90x90_",i];
        if (i > 9) {
             str = [NSString stringWithFormat:@"Loading_00%d_90x90_",i];
        }
        UIImage* image = [UIImage imageNamed:str];
        
//        image  = [image imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];

        [arr addObject:image];
    }
   
    [image isAnimating];
    
    // 1. 设置图片的数组
    
    [image setAnimationImages:arr];
    
    // 2. 设置动画时长，默认每秒播放30张图片
    
    [image setAnimationDuration:arr.count * 0.2];
    
    // 3. 设置动画重复次数，默认为0，无限循环
    
    [image setAnimationRepeatCount:0];
    
    // 4. 开始动画
    
    [image startAnimating];
    
    // 5. 动画播放完成后，清空动画数组
    
    [image performSelector:@selector(setAnimationImages:) withObject:nil afterDelay:image.animationDuration];
    

    return view;
    
}
@end
