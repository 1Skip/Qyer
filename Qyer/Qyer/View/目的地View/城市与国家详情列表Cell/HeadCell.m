//
//  HeadCell.m
//  Qyer
//
//  Created by 😘王艳 on 2016/11/26.
//  Copyright © 2016年 DKD. All rights reserved.
//

#import "HeadCell.h"

@implementation HeadCell
-(UILabel *)enname
{
    if (!_enname) {
        _enname = [UILabel new];
        [self.contentView addSubview:_enname];
        _enname.textColor = [UIColor whiteColor];
        [_enname mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.cnname.mas_bottom).offset(20);
            make.centerX.equalTo(0);
        }];
        
    }
    return _enname;
}
-(UILabel *)cnname
{
    if (!_cnname) {
        _cnname = [UILabel new];
        [self.contentView addSubview:_cnname];
        _cnname.textColor = [UIColor whiteColor];
        _cnname.font = [UIFont systemFontOfSize:20];
        _cnname.font = [UIFont fontWithName:@"Helvetica-Bold" size:20];
        [_cnname mas_makeConstraints:^(MASConstraintMaker *make) {
            CGFloat hit = higt * 175 / 468;
            make.top.equalTo(hit);
            make.centerX.equalTo(0);
        }];
    }
    return _cnname;
}
// 想去
-(UIButton *)tour
{
    if (!_tour) {
        //  图片在上文字在下 需要修改一下默认的模式
        _tour = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.contentView addSubview:_tour];
        _tour.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;//使图片和文字水平居中显示
        [_tour setTitleEdgeInsets:UIEdgeInsetsMake(_tour.imageView.frame.size.height ,_tour.imageView.frame.size.width, 0.0,0.0)];//文字距离上边框的距离增加imageView的高度，距离左边框减少imageView的宽度，距离下边框和右边框距离不变
        [_tour setImageEdgeInsets:UIEdgeInsetsMake(0.0, 0.0,0.0, _tour.titleLabel.bounds.size.width)];//图片距离右边框距离减少图片的宽度，其它不边
        [_tour setImage:[UIImage imageNamed:@"想去normal"] forState:UIControlStateNormal];
        [_tour setImage:[UIImage imageNamed:@"已想去icon"] forState:UIControlStateSelected];
        [_tour setTitle:@"想去" forState:UIControlStateNormal];
        [_tour setTitle:@"已想去" forState:UIControlStateSelected];
        [_tour setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_tour setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
        [_tour mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.equalTo(-30);
            make.bottom.equalTo(-30);
        }];
    }
    return _tour;
}

-(UILabel *)info
{
    if (!_info) {
        _info = [UILabel new];
        [self.contentView addSubview:_info];
        _info.font = [UIFont systemFontOfSize:15];
        _info.textColor = [UIColor whiteColor];
        [_info mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(30);
            make.bottom.equalTo(-30);
        }];
    }
    return _info;
}
@end
