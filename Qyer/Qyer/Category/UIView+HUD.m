//
//  UIView+HUD.m
//  Day11-汽车之家
//
//  Created by tarena on 16/11/14.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "UIView+HUD.h"

@implementation UIView (HUD)

- (void)showBusy{
    [self hideBusy];
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self animated:YES];
    [hud hideAnimated:YES afterDelay:30];
}

- (void)hideBusy{
    [MBProgressHUD hideAllHUDsForView:self animated:YES];
}
- (void)showMsg:(NSString *)msg{
    [self hideBusy];
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self animated:YES];
    hud.mode = MBProgressHUDModeText;
    hud.label.text = msg;
    [hud hideAnimated:YES afterDelay:1.5];
}

@end
