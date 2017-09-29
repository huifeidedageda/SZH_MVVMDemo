//
//  SZH_CellModel.m
//  SZH_MVVMDemo
//
//  Created by 智衡宋 on 2017/9/29.
//  Copyright © 2017年 智衡宋. All rights reserved.
//

#import "SZH_CellModel.h"

@implementation SZH_CellModel

- (id)initWithDictionary:(NSDictionary *)dict {
    self = [super init];
    if (self) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

+ (id)SZHInfoWithDictionary:(NSDictionary *)dict {
    return [[self alloc]initWithDictionary:dict];
}


@end
