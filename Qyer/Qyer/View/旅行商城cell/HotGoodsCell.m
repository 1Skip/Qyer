//
//  HotGoodsCell.m
//  Qyer
//
//  Created by Yang Xiong on 25/11/2016.
//  Copyright © 2016 DKD. All rights reserved.
//

#import "HotGoodsCell.h"

@implementation HotGoodsCell

-(UIColor *)backgroundColor
{
    return [UIColor colorWithRed:47 / 255.0 green:176 / 255.0 blue:116 / 255.0 alpha:1.0];
}

-(UIColor *)buttonBorderColor
{
    return [UIColor colorWithRed:211 / 255.0 green:211 / 255.0 blue:211 / 255.0 alpha:0.5];
}

-(UIView *)cityView
{
    if (!_cityView)
    {
        _cityView = [UIView new];
        [self.contentView addSubview:_cityView];
        [_cityView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(0);
            make.width.equalTo([UIScreen mainScreen].bounds.size.width);
        }];
        _cityView.backgroundColor = [UIColor whiteColor];
    }
    return _cityView;
}

-(UILabel *)cityTitle
{
    if (!_cityTitle)
    {
        _cityTitle = [UILabel new];
        [self.cityView addSubview:_cityTitle];
        [_cityTitle mas_makeConstraints:^(MASConstraintMaker *make)
         {
             make.top.equalTo((kHight *(1128.f / 1132.f)) * (35.f / 1128.f));
             make.left.right.equalTo(0);
             make.height.equalTo((kHight *(988.f / 1132.f)) * (40.f / 988.f));
             make.width.equalTo(kWidth);
         }];
        _cityTitle.textAlignment = NSTextAlignmentCenter;
        _cityTitle.font = [UIFont boldSystemFontOfSize:18.f];
    }
    return _cityTitle;
}


-(NSArray<UIButton *> *)goodsBtn
{
    if (!_goodsBtn)
    {
        NSMutableArray *tmpArr = [NSMutableArray new];
        UIView *lastView = nil;
        for (NSInteger i = 0; i < 6; i ++)
        {
            UIButton *btn = [UIButton new];
            [self.contentView addSubview:btn];
            [btn mas_makeConstraints:^(MASConstraintMaker *make) {
                make.width.equalTo(kWidth * (278.f / 639.f));
                make.height.equalTo((kHight *(1128.f / 1132.f)) * (340.f / 1128.f));
                
                if ( i >= 0 && i <= 1 )
                {
                    if (i == 0)
                    {
                        make.top.equalTo(self.cityTitle.mas_bottom).equalTo((kHight *(1128.f / 1132.f)) * (35.f / 1128.f));
                        make.left.equalTo(kWidth * (30.f / 639.f));
                    }
                    else
                    {
                        make.top.equalTo(lastView);
                        make.left.equalTo(lastView.mas_right).equalTo((kHight *(1128.f / 1132.f)) * (30.f / 1128.f));
                        //make.width.equalTo(lastView);
                        make.right.equalTo(-(kWidth * (30.f / 639.f)));
                    }
                }
                else if ( i >= 2 && i <= 3 )
                {
                    
                    if ( i == 2 )
                    {
                        make.left.equalTo(kWidth * (30.f / 639.f));
                        make.top.equalTo(lastView.mas_bottom).offset((kHight *(1128.f / 1132.f)) * (30.f / 1128.f));
                    }
                    else
                    {
                        make.top.equalTo(lastView);
                        make.left.equalTo(lastView.mas_right).equalTo(kWidth * (30.f / 639.f));
                        //make.width.equalTo(lastView);
                        make.right.equalTo(-(kWidth * (30.f / 639.f)));
                    }
                }
                else if ( i >= 4 && i <= 5 )
                {
                    
                    if ( i == 4 )
                    {
                        make.left.equalTo(kWidth * (30.f / 639.f));
                        make.top.equalTo(lastView.mas_bottom).offset((kHight *(1128.f / 1132.f)) * (30.f / 1128.f));
                    }
                    else
                    {
                        make.top.equalTo(lastView);
                        make.left.equalTo(lastView.mas_right).equalTo(kWidth * (30.f / 639.f));
                        //make.width.equalTo(lastView);
                        make.right.equalTo(-(kWidth * (30.f / 639.f)));                    }
                }
                
            }];
            btn.layer.borderWidth = 1;
            btn.layer.borderColor = self.buttonBorderColor.CGColor;
            btn.layer.cornerRadius = 5.f;
            btn.clipsToBounds = YES;
            lastView = btn;
            [tmpArr addObject:btn];
        }
        _goodsBtn = tmpArr.copy;
    }
    return _goodsBtn;
}

-(NSArray<UIImageView *> *)goodsPic
{
    if (!_goodsPic)
    {
        NSMutableArray *tmpArr = [NSMutableArray new];
        UIView *lastView = nil;
        for (NSInteger i = 0; i < 6; i ++)
        {
            UIImageView *image = [UIImageView new];
            [self.contentView addSubview:image];
            [image mas_makeConstraints:^(MASConstraintMaker *make) {
                make.height.equalTo((kHight *(1128.f / 1132.f)) * (198.f / 1128.f));
                make.width.equalTo(kWidth * (278.f / 639.f));
                
                if ( i >= 0 && i <= 1 )
                {
                    if (i == 0)
                    {
                        make.top.equalTo(self.cityTitle.mas_bottom).equalTo((kHight *(1128.f / 1132.f)) * (37.f / 1128.f));
                        make.left.equalTo(kWidth * (30.f / 639.f));
                    }
                    else
                    {
                        make.top.equalTo(lastView);
                        make.left.equalTo(lastView.mas_right).equalTo((kHight *(1128.f / 1132.f)) * (30.f / 1128.f));
                        //make.width.equalTo(lastView);
                        make.right.equalTo(-(kWidth * (30.f / 639.f)));
                    }
                }
                else if ( i >= 2 && i <= 3 )
                {
                    
                    if ( i == 2 )
                    {
                        make.left.equalTo(kWidth * (30.f / 639.f));
                        make.top.equalTo(lastView.mas_bottom).offset((kHight *(1128.f / 1132.f)) * (172.f / 1128.f));
                    }
                    else
                    {
                        make.top.equalTo(lastView);
                        make.left.equalTo(lastView.mas_right).equalTo(kWidth * (30.f / 639.f));
                        //make.width.equalTo(lastView);
                        make.right.equalTo(-(kWidth * (30.f / 639.f)));                    }
                }
                else if ( i >= 4 && i <= 5 )
                {
                    
                    if ( i == 4 )
                    {
                        make.left.equalTo(kWidth * (30.f / 639.f));
                        make.top.equalTo(lastView.mas_bottom).offset((kHight *(1128.f / 1132.f)) * (172.f / 1128.f));
                    }
                    else
                    {
                        make.top.equalTo(lastView);
                        make.left.equalTo(lastView.mas_right).equalTo(kWidth * (30.f / 639.f));
                        //make.width.equalTo(lastView);
                        make.right.equalTo(-(kWidth * (30.f / 639.f)));                    }
                }
                
            }];

            //image.layer.cornerRadius = 5.f;
            //image.clipsToBounds = YES;
            lastView = image;
            [tmpArr addObject:image];
        }
        _goodsPic = tmpArr.copy;
    }
    return _goodsPic;
}


-(NSArray<UILabel *> *)titleLB
{
    if (!_titleLB)
    {
        NSMutableArray *tmpArr = [NSMutableArray new];
        UIView *lastView = nil;
        for (NSInteger i = 0; i < 6; i ++)
        {
            UILabel *title = [UILabel new];
            [self.contentView addSubview:title];
            [title mas_makeConstraints:^(MASConstraintMaker *make) {
                make.height.equalTo((kHight *(1128.f / 1132.f)) * (75.f / 1128.f));
                make.width.equalTo(kWidth * (238.f / 639.f));
                
                if ( i >= 0 && i <= 1 )
                {
                    if (i == 0)
                    {
                        make.top.equalTo(self.goodsPic[0].mas_bottom).offset((kHight *(1128.f / 1132.f)) * (10.f / 1128.f));
                        //make.top.equalTo(self.cityTitle.mas_bottom).equalTo(145);
                        make.left.equalTo(kWidth * (50.f / 639.f));
                    }
                    else
                    {
                        make.top.equalTo(lastView);
                        make.left.equalTo(lastView.mas_right).equalTo(kWidth * (70.f / 639.f));
                        //make.width.equalTo(lastView);
                        make.right.equalTo(-(kWidth * (50.f / 639.f)));
                    }
                }
                else if ( i >= 2 && i <= 3 )
                {
                    
                    if ( i == 2 )
                    {
                        make.left.equalTo(kWidth * (50.f / 639.f));
                        make.top.equalTo(self.goodsPic[2].mas_bottom).offset((kHight *(1128.f / 1132.f)) * (8.f / 1128.f));
                    }
                    else
                    {
                        make.top.equalTo(lastView);
                        make.left.equalTo(lastView.mas_right).equalTo(kWidth * (70.f / 639.f));
                        //make.width.equalTo(lastView);
                        make.right.equalTo(-(kWidth * (50.f / 639.f)));                    }
                }
                else if ( i >= 4 && i <= 5 )
                {
                    
                    if ( i == 4 )
                    {
                        make.left.equalTo(kWidth * (50.f / 639.f));
                        make.top.equalTo(self.goodsPic[4].mas_bottom).offset((kHight *(1128.f / 1132.f)) * (8.f / 1128.f));
                    }
                    else
                    {
                        make.top.equalTo(lastView);
                        make.left.equalTo(lastView.mas_right).equalTo(kWidth * (70.f / 639.f));
                        //make.width.equalTo(lastView);
                        make.right.equalTo(-(kWidth * (50.f / 639.f)));                    }
                }
                
            }];
            //[title setBackgroundColor:[UIColor redColor]];
            title.numberOfLines = 2;
            title.font = [UIFont systemFontOfSize:13.0];
            lastView = title;
            [tmpArr addObject:title];
        }
        _titleLB = tmpArr.copy;
    }
    return _titleLB;
}

-(NSArray<UILabel *> *)statusLB
{
    if (!_statusLB)
    {
        NSMutableArray *tmpArr = [NSMutableArray new];
        UIView *lastView = nil;
        for (NSInteger i = 0; i < 6; i ++)
        {
            UILabel *status = [UILabel new];
            [self.contentView addSubview:status];
            [status mas_makeConstraints:^(MASConstraintMaker *make) {
                make.height.equalTo((kHight *(1128.f / 1132.f)) * (30.f / 1128.f));
                make.width.equalTo(kWidth * (120.f / 639.f));
                
                if ( i >= 0 && i <= 1 )
                {
                    if (i == 0)
                    {
                        make.top.equalTo(self.goodsPic[0].mas_bottom).equalTo((kHight *(1128.f / 1132.f)) * (90.f / 1128.f));
                        make.left.equalTo(kWidth * (50.f / 639.f));
                    }
                    else
                    {
                        make.top.equalTo(lastView);
                        make.left.equalTo(self.goodsPic[0].mas_right).equalTo(kWidth * (50.f / 639.f));
                    }
                }
                else if ( i >= 2 && i <= 3 )
                {
                    
                    if ( i == 2 )
                    {
                        make.left.equalTo(kWidth * (50.f / 639.f));
                        make.top.equalTo(self.goodsPic[2].mas_bottom).offset((kHight *(1128.f / 1132.f)) * (90.f / 1128.f));
                    }
                    else
                    {
                        make.top.equalTo(lastView);
                        make.left.equalTo(self.goodsPic[2].mas_right).equalTo(kWidth * (50.f / 639.f));
                    }
                }
                else if ( i >= 4 && i <= 5 )
                {
                    
                    if ( i == 4 )
                    {
                        make.left.equalTo(kWidth * (50.f / 639.f));
                        make.top.equalTo(self.goodsPic[4].mas_bottom).offset((kHight *(1128.f / 1132.f)) * (90.f / 1128.f));
                    }
                    else
                    {
                        make.top.equalTo(lastView);
                        make.left.equalTo(self.goodsPic[4].mas_right).equalTo(kWidth * (50.f / 639.f));
                    }
                }
                
            }];
            //[title setBackgroundColor:[UIColor redColor]];
            status.font = [UIFont systemFontOfSize:11.0];
            status.textColor = [UIColor lightGrayColor];
            lastView = status;
            [tmpArr addObject:status];
        }
        _statusLB = tmpArr.copy;
    }
    return _statusLB;
}

-(NSArray<UILabel *> *)priceLB
{
    if (!_priceLB)
    {
        NSMutableArray *tmpArr = [NSMutableArray new];
        UIView *lastView = nil;
        for (NSInteger i = 0; i < 6; i ++)
        {
            UILabel *price = [UILabel new];
            [self.contentView addSubview:price];
            [price mas_makeConstraints:^(MASConstraintMaker *make) {
                make.height.equalTo((kHight *(1128.f / 1132.f)) * (40.f / 1128.f));
                make.width.equalTo(kWidth * (140.f / 639.f));
                
                if ( i >= 0 && i <= 1 )
                {
                    if (i == 0)
                    {
                        make.top.equalTo(self.titleLB[0].mas_bottom).offset((kHight *(1128.f / 1132.f)) * (2.f / 1128.f));
                        make.right.equalTo(self.titleLB[0]);
                    }
                    else
                    {
                        make.top.equalTo(lastView);
                        make.right.equalTo(self.titleLB[1]);
                    }
                }
                else if ( i >= 2 && i <= 3 )
                {
                    
                    if ( i == 2 )
                    {
                        make.right.equalTo(self.titleLB[2]);
                        make.top.equalTo(self.titleLB[2].mas_bottom).offset((kHight *(1128.f / 1132.f)) * (2.f / 1128.f));
                    }
                    else
                    {
                        make.top.equalTo(lastView);
                        make.right.equalTo(self.titleLB[3]);
                    }
                }
                else if ( i >= 4 && i <= 5 )
                {
                    
                    if ( i == 4 )
                    {
                        make.right.equalTo(self.titleLB[4]);
                        make.top.equalTo(self.titleLB[4].mas_bottom).offset((kHight *(1128.f / 1132.f)) * (2.f / 1128.f));
                    }
                    else
                    {
                        make.top.equalTo(lastView);
                        make.right.equalTo(self.titleLB[5]);
                    }
                }
                
            }];
            price.textColor = [UIColor redColor];
            price.font = [UIFont systemFontOfSize:13.0];
            price.textAlignment = NSTextAlignmentRight;
            lastView = price;
            [tmpArr addObject:price];
        }
        _priceLB = tmpArr.copy;
    }
    return _priceLB;
}
@end
