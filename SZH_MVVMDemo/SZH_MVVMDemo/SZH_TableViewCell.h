//
//  SZH_TableViewCell.h
//  SZH_MVVMDemo
//
//  Created by 智衡宋 on 2017/9/29.
//  Copyright © 2017年 智衡宋. All rights reserved.
//

#import <UIKit/UIKit.h>
@class SZH_CellModel;
@interface SZH_TableViewCell : UITableViewCell

@property (nonatomic,weak)UILabel *label;
@property (nonatomic,strong) SZH_CellModel *model;


+ (instancetype)cellWithTableview:(UITableView *)tableView;

@end
