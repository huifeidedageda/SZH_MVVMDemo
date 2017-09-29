//
//  SZH_CellViewModel.m
//  SZH_MVVMDemo
//
//  Created by 智衡宋 on 2017/9/29.
//  Copyright © 2017年 智衡宋. All rights reserved.
//

#import "SZH_CellViewModel.h"
#import "SZH_CellModel.h"
#import "SZH_TableViewCell.h"
@implementation SZH_CellViewModel

- (NSMutableArray *)SZHInfoArray {
    if (!_SZHInfoArray) {
        _SZHInfoArray = [NSMutableArray array];
    }
    return _SZHInfoArray;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        [self szh_getInfo];
    }
    return self;
}

#pragma mark -------------- 获取数据

- (void)szh_getInfo {
    
    //实际开发数据是网络获取到的，这里模拟给出一个数据
    NSArray *array = @[@[@{@"image" : @"hero", @"title" : @"标题1", @"subTitle" : @"副标题1"},
                         @{@"image" : @"hero", @"title" : @"标题2", @"subTitle" : @"副标题2"}],
                       @[@{@"image" : @"hero", @"title" : @"标题3", @"subTitle" : @"副标题3"},
                         @{@"image" : @"hero", @"title" : @"标题4", @"subTitle" : @"副标题4"},
                         @{@"image" : @"hero", @"title" : @"标题5", @"subTitle" : @"副标题5"},
                         @{@"image" : @"hero", @"title" : @"标题6", @"subTitle" : @"副标题6"},
                         @{@"image" : @"hero", @"title" : @"标题7", @"subTitle" : @"副标题7"}]];
    
    //解析数据，转模型保存
    for (int i = 0; i < array.count; i++) {
        NSMutableArray *tempArray = [NSMutableArray array];
        for (NSDictionary *dict in array[i]) {
            [tempArray addObject:[SZH_CellModel SZHInfoWithDictionary:dict]];
        }
        [self.SZHInfoArray addObject:tempArray];
    }
    
}

#pragma mark -------------- 外部获取数据

- (NSInteger)numberOfSections {
    return self.SZHInfoArray.count;
}
- (NSInteger)numberOfItemsInSecion:(NSInteger)section {
    return [self.SZHInfoArray[section] count];
}
- (NSString *)titleForHeaderInSecion:(NSInteger)section {
    
    if (section == 0) {
        return @"第一组";
    }
    return @"第二组";
}
- (NSString *)titleForFooterInSecion:(NSInteger)section {
    
    return @"这是尾部标题";
}
- (SZH_TableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:( NSIndexPath *)indexPath {
    SZH_TableViewCell *cell = [SZH_TableViewCell cellWithTableview:tableView];
    cell.model = self.SZHInfoArray[indexPath.section];
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 70.0f;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:( NSIndexPath *)indexPath {
    
    SZH_TableViewCell *cell = (SZH_TableViewCell *)[tableView cellForRowAtIndexPath:indexPath];
    NSString *str = [NSString stringWithFormat:@"点击了第%ld组第%ld行", indexPath.section, indexPath.row];
    cell.label.text = str;
}

@end
