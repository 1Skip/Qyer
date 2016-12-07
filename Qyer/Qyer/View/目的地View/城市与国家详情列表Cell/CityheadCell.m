//
//  CityheadCell.m
//  Qyer
//
//  Created by 😘王艳 on 2016/11/23.
//  Copyright © 2016年 DKD. All rights reserved.
//

#import "CityheadCell.h"

@implementation CityheadCell

-(UIImageView *)image
{
    if (!_image) {
        _image = [UIImageView new];
        [self.contentView addSubview:_image];
        [_image mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(0);
            make.left.equalTo(20);
        }];
    }
    return _image;
}

-(UILabel *)cityName
{
    if (!_cityName) {
        _cityName = [UILabel new];
        [self.contentView addSubview:_cityName];
        _cityName.textAlignment = NSTextAlignmentLeft;
        _cityName.font = [UIFont systemFontOfSize:15];
        [_cityName mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.image.mas_right).offset(15);
            make.centerY.equalTo(0);
        }];
    }
    return _cityName;
}

-(UILabel *)bookNum
{
    if (!_bookNum) {
        _bookNum = [UILabel new];
        _bookNum.font = [UIFont systemFontOfSize:12];
        _bookNum.textColor = [UIColor grayColor];
        [self.contentView addSubview:_bookNum];
        [_bookNum mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.equalTo(-40);
            make.centerY.equalTo(0);
        }];
    }
    return _bookNum;
}

-(UIImageView *)image2
{
    if (!_image2) {
        _image2 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"RightArrow_Gray_5x12_"]];
        [self.contentView addSubview:_image2];
        [_image2 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(0);
            make.right.equalTo(-25);
        }];
    }
    return _image2;
}

@end
