//
//  CommunityIndexCell.m
//  Qyer
//
//  Created by Yang Xiong on 11/12/2016.
//  Copyright © 2016 DKD. All rights reserved.
//

#import "CommunityIndexCell.h"

@implementation CommunityIndexCell
-(UIColor *)lightGray
{
    return [UIColor colorWithRed:167 / 255.f green:167 / 255.f blue:167 / 255.f alpha:1.f];
}

-(UIColor *)green
{
    return [UIColor colorWithRed:36 / 255.f green:190 / 255.f blue:123 / 255.f alpha:1.f];
}

-(UIImageView *)coverIV
{
    if (!_coverIV)
    {
        _coverIV = [UIImageView new];
        [self.contentView addSubview:_coverIV];
        [_coverIV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.equalTo(kWidth * (70.f / 640.f));
            make.height.equalTo((kHight *(230.f / 1132.f)) * (70.f / 230.f));
            make.top.equalTo((kHight *(428.f / 1132.f)) * (25.f / 428.f));
            make.left.equalTo(kWidth * (20.f / 640.f));
        }];
        _coverIV.layer.masksToBounds = YES;
        _coverIV.layer.cornerRadius = 22.f;
        _coverIV.clipsToBounds = YES;
    }
    return _coverIV;
}

-(UILabel *)userName
{
    if (!_userName)
    {
        _userName = [UILabel new];
        [self.contentView addSubview:_userName];
        [_userName mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.equalTo(kWidth * (200.f / 640.f));
            make.height.equalTo((kHight *(428.f / 1132.f)) * (35.f / 428.f));
            make.top.equalTo((kHight *(428.f / 1132.f)) * (25.f / 428.f));
            make.left.equalTo(self.coverIV.mas_right).offset(15.f );
        }];
    }
    _userName.font = [UIFont systemFontOfSize:16.f];
    _userName.textColor = self.lightGray;
    return _userName;
}

-(UILabel *)titleLB
{
    if (!_titleLB)
    {
        _titleLB = [UILabel new];
        [self.contentView addSubview:_titleLB];
        [_titleLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.equalTo(kWidth * (504.f / 640.f));
            make.height.equalTo((kHight *(428.f / 1132.f)) * (90.f / 428.f));
            make.left.equalTo(self.userName);
            make.top.equalTo(self.userName.mas_bottom).offset((kHight *(428.f / 1132.f)) * (8.f / 428.f));
        }];
        _titleLB.numberOfLines = 2;
        _titleLB.font = [UIFont systemFontOfSize:20.f];
    }
    return _titleLB;
}

-(NSArray<UIImageView *> *)detailIV
{
    if (!_detailIV)
    {
        NSMutableArray *tmpArr = [NSMutableArray new];
        UIView *lastView = nil;
        for (NSInteger i = 0; i < 3; i ++)
        {
            UIImageView *detailImage = [UIImageView new];
            [self.contentView addSubview:detailImage];
            [detailImage mas_makeConstraints:^(MASConstraintMaker *make) {
                make.width.equalTo(kWidth * (155.f / 640.f));
                make.height.equalTo((kHight *(428.f / 1132.f)) * (150.f / 428.f));
                make.top.equalTo(self.titleLB.mas_bottom).offset((kHight *(428.f / 1132.f)) * (25.f / 428.f));
                if (i == 0)
                {
                    make.left.equalTo(self.coverIV.mas_right).offset(kWidth * (15.f / 640.f));
                }
                else
                {
                    make.left.equalTo(lastView.mas_right).offset(kWidth * (18.f / 640.f));
                    if (i == 2)
                    {
                        make.right.equalTo(-(kWidth * (35.f / 640.f)));
                    }
                }
            }];
            detailImage.layer.cornerRadius = 5.f;
            detailImage.clipsToBounds = YES;
            lastView = detailImage;
            [tmpArr addObject:detailImage];
        }
        _detailIV = tmpArr.copy;
    }
    return _detailIV;
}

-(UILabel *)countryLB
{
    if (!_countryLB)
    {
        _countryLB = [UILabel new];
        [self.contentView addSubview:_countryLB];
        [_countryLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.equalTo(kWidth * (200.f / 640.f));
            make.height.equalTo((kHight *(428.f / 1132.f)) * (28.f / 428.f));
            make.left.equalTo(self.titleLB);
            make.bottom.equalTo(-(kHight *(428.f / 1132.f)) * (28.f / 428.f));
        }];
        _countryLB.font = [UIFont systemFontOfSize:16.f];
        _countryLB.textColor = self.green;
    }
    return _countryLB;
}

-(UILabel *)timeLB
{
    if (!_timeLB)
    {
        _timeLB = [UILabel new];
        [self.contentView addSubview:_timeLB];
        [_timeLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.equalTo(kWidth * (126.f / 640.f));
            make.height.equalTo(self.countryLB);
            make.top.equalTo(self.countryLB);
            make.right.equalTo(-(kWidth * (100.f / 640.f)));
        }];
        _timeLB.font = [UIFont systemFontOfSize:16.f];
        _timeLB.textColor = self.lightGray;
    }
    return _timeLB;
}

-(UILabel *)commitLB
{
    if (!_commitLB)
    {
        _commitLB = [UILabel new];
        [self.contentView addSubview:_commitLB];
        [_commitLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.equalTo(kWidth * (50.f / 640.f));
            make.height.equalTo(self.countryLB);
            make.top.equalTo(self.countryLB);
            make.right.equalTo(-(kWidth * (10.f / 640.f)));
        }];
        _commitLB.font = [UIFont systemFontOfSize:16.f];
        _commitLB.textColor = self.lightGray;
    }
    return _commitLB;
    
}
@end
