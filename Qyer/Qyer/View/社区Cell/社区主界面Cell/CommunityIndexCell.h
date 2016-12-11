//
//  CommunityIndexCell.h
//  Qyer
//
//  Created by Yang Xiong on 11/12/2016.
//  Copyright © 2016 DKD. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CommunityIndexCell : UITableViewCell
@property(nonatomic) UIColor     *lightGray;
@property(nonatomic) UIColor     *green;

@property(nonatomic) UIImageView *coverIV;
@property(nonatomic) UILabel     *userName;
@property(nonatomic) UILabel     *titleLB;
@property(nonatomic) NSArray<UIImageView *> *detailIV;
@property(nonatomic) UILabel     *countryLB;
@property(nonatomic) UILabel     *timeLB;
@property(nonatomic) UILabel     *commitLB;
@end
