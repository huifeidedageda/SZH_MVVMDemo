//
//  SZH_CellViewModel.h
//  SZH_MVVMDemo
//
//  Created by 智衡宋 on 2017/9/29.
//  Copyright © 2017年 智衡宋. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class SZH_TableViewCell,UITableView;

@interface SZH_CellViewModel : NSObject

@property (nonatomic,strong)NSMutableArray *SZHInfoArray;

- (NSInteger)numberOfSections;
- (NSInteger)numberOfItemsInSecion:(NSInteger)section;
- (NSString *)titleForHeaderInSecion:(NSInteger)section;
- (NSString *)titleForFooterInSecion:(NSInteger)section;
- (SZH_TableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:( NSIndexPath *)indexPath;
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath;
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:( NSIndexPath *)indexPath;

@end
