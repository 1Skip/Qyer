//
//  CommunityIconCell.m
//  Qyer
//
//  Created by Yang Xiong on 11/12/2016.
//  Copyright © 2016 DKD. All rights reserved.
//

#import "CommunityIconCell.h"

@implementation CommunityIconCell
-(NSArray<UIButton *> *)iconBtn
{
    if (!_iconBtn)
    {
        NSMutableArray *tmpArr = [NSMutableArray new];
        UIView *lastView = nil;
        for (NSInteger i = 0; i < 5; i ++)
        {
            UIButton *btn = [UIButton new];
            [self.contentView addSubview:btn];
            [btn mas_makeConstraints:^(MASConstraintMaker *make) {
                make.width.equalTo(kWidth * (90.f / 640.f));
                make.height.equalTo((kHight *(230.f / 1132.f)) * (120.f / 230.f));
                make.top.equalTo((kHight *(230.f / 1132.f)) * (58.f / 230.f));
                
                if (i == 0)
                {
                    make.left.equalTo(kWidth * (35.f / 640.f));
                }
                else
                {
                    make.left.equalTo(lastView.mas_right).offset(kWidth * (30.f / 640.f));
                    if (i == 4)
                    {
                        make.right.equalTo(-(kWidth * (35.f / 640.f)));
                    }
                }
            }];
            
            lastView = btn;
            [tmpArr addObject:btn];
        }
        _iconBtn = tmpArr.copy;
    }
    return _iconBtn;
}

-(NSArray<UIImageView *> *)iconIV
{
    if (!_iconIV)
    {
        NSMutableArray *tmpArr = [NSMutableArray new];
        UIView *lastView = nil;
        for (NSInteger i = 0; i < 5; i ++)
        {
            UIImageView *iconPic = [UIImageView new];
            [self.contentView addSubview:iconPic];
            [iconPic mas_makeConstraints:^(MASConstraintMaker *make) {
                make.width.equalTo(self.iconBtn[i]).dividedBy(2.f);
                make.centerX.equalTo(self.iconBtn[i]);
                make.top.equalTo(self.iconBtn[i]);
                make.height.equalTo((kHight *(230.f / 1132.f)) * (68.f / 230.f));
                
                if (i == 0)
                {
                    make.left.equalTo(self.iconBtn[0]);
                }
                else
                {
                    make.left.equalTo(lastView.mas_right).offset(kWidth * (30.f / 640.f));
                    if (i == 5)
                    {
                        make.right.equalTo(self.iconBtn[4]);
                    }
                }
            }];
            
            lastView = iconPic;
            [tmpArr addObject:iconPic];
        }
        _iconIV = tmpArr.copy;
    }
    return _iconIV;
}

-(NSArray<UILabel *> *)titleLB
{
    if (!_titleLB)
    {
        NSMutableArray *tmpArr = [NSMutableArray new];
        UIView *lastView = nil;
        for (NSInteger i = 0; i < 5; i ++)
        {
            UILabel *iconLB = [UILabel new];
            [self.contentView addSubview:iconLB];
            [iconLB mas_makeConstraints:^(MASConstraintMaker *make) {
                make.width.equalTo(self.iconBtn[i]);
                make.height.equalTo((kHight *(230.f / 1132.f)) * (30.f / 230.f));
                make.top.equalTo(self.iconIV[i].mas_bottom).offset((kHight *(230.f / 1132.f)) * (20.f / 230.f));
                if (i == 0)
                {
                    make.left.equalTo(self.iconBtn[0]);
                }
                else
                {
                    make.left.equalTo(lastView.mas_right).offset(kWidth * (30.f / 640.f));
                    if (i == 4)
                    {
                        make.right.equalTo(self.iconBtn[4]);
                    }
                }
            }];
            iconLB.font = [UIFont systemFontOfSize:10.f];
            lastView = iconLB;
            [tmpArr addObject:iconLB];
        }
        _titleLB = tmpArr.copy;
    }
    return _titleLB;
}
@end
