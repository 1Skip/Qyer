//
//  CommunityModel.h
//  Qyer
//
//  Created by Yang Xiong on 11/12/2016.
//  Copyright © 2016 DKD. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CommunityDataModel,CommunityIconListModel,CommunityIndexListModel,CommunityTagListModel;

@interface CommunityModel : NSObject
@property(nonatomic) CommunityDataModel *data;
@end

@interface CommunityDataModel : NSObject
@property(nonatomic) NSArray<CommunityIconListModel *> *icon_list;
@property(nonatomic) NSArray<CommunityIndexListModel *> *index_list;
@property(nonatomic) NSArray<CommunityTagListModel *> *tag_list;
@end

@interface CommunityIconListModel : NSObject
@property(nonatomic) NSString *icon;
@property(nonatomic) NSString *icon_pic;
@property(nonatomic) NSString *icon_type;
@property(nonatomic) NSString *link_url;
@property(nonatomic) NSString *sub_id;
@end

@interface CommunityIndexListModel : NSObject
@property(nonatomic) NSString *appview_url;
@property(nonatomic) NSString *author;
@property(nonatomic) NSString *avatar;
@property(nonatomic) NSArray *bigpic_arr;
@property(nonatomic) NSString *forum;
@property(nonatomic) NSString *forum_id;
@property(nonatomic) NSString *ID;
@property(nonatomic) NSString *is_best;
@property(nonatomic) NSString *is_hot;
@property(nonatomic) NSString *reply_num;
@property(nonatomic) NSString *reply_time;
@property(nonatomic) NSString *title;
@property(nonatomic) NSString *type;
@property(nonatomic) NSString *user_id;
@property(nonatomic) NSString *user_qualif;
@end

@interface CommunityTagListModel : NSObject
@property(nonatomic) NSString *icon_type;
@property(nonatomic) NSString *link_url;
@property(nonatomic) NSString *sub_id;
@property(nonatomic) NSString *tag_cover;
@property(nonatomic) NSString *tag_name;
@end

/*
 "icon_type": "qyerelite",
 "link_url": "",
 "sub_id": "3",
 "tag_cover": "http://pic.qyer.com/public/2016/11/28/583ba19041a8b.png",
 "tag_name": "最新精华游记"
 */
