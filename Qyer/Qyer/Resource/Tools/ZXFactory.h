//
//  ZXFactory.h
//  AllpeopleTV
//
//  Created by tarena on 16/12/2.
//  Copyright © 2016年 Zx. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZXFactory : NSObject
// 创建导航栏左边返回按钮
+ (void)addBackItemToVC:(UIViewController*)vc;
//
+ (void)addSearchItemToVC:(UIViewController *)vc action:(void(^)())handler;
+ (UIButton*)addSystemBtnWithName:(NSString*)name;
+ (UIView*)Loadingbackground;
//设置按钮在上字体在下
+ (void)initFramaWithBtn:(UIButton*)btn;
@end
