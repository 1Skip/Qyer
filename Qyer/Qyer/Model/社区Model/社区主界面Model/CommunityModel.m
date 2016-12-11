//
//  CommunityModel.m
//  Qyer
//
//  Created by Yang Xiong on 11/12/2016.
//  Copyright © 2016 DKD. All rights reserved.
//

#import "CommunityModel.h"

@implementation CommunityModel

@end

@implementation CommunityDataModel
+(NSDictionary<NSString *,id> *)modelContainerPropertyGenericClass
{
    return @{@"icon_list" : @"CommunityIconListModel",
             @"index_list" : @"CommunityIndexListModel",
             @"tag_list" : @"CommunityTagListModel"};
}
@end

@implementation CommunityIconListModel

@end

@implementation CommunityIndexListModel
+(NSDictionary<NSString *,id> *)modelCustomPropertyMapper
{
    return @{@"ID" : @"id"};
}
@end

@implementation CommunityTagListModel

@end
