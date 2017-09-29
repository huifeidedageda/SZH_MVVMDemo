//
//  SZH_CellModel.h
//  SZH_MVVMDemo
//
//  Created by 智衡宋 on 2017/9/29.
//  Copyright © 2017年 智衡宋. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SZH_CellModel : NSObject
@property (nonatomic, copy) NSString *image;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *subTitle;


- (id)initWithDictionary:(NSDictionary *)dict;
+ (id)SZHInfoWithDictionary:(NSDictionary *)dict;

@end
