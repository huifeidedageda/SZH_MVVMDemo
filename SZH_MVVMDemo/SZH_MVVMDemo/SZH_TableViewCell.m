//
//  SZH_TableViewCell.m
//  SZH_MVVMDemo
//
//  Created by 智衡宋 on 2017/9/29.
//  Copyright © 2017年 智衡宋. All rights reserved.
//

#import "SZH_TableViewCell.h"
#import "SZH_CellModel.h"

@interface SZH_TableViewCell ()

@property (nonatomic,weak)UIImageView *imgView;
@property (nonatomic,weak)UILabel *subLabel;

@end

@implementation SZH_TableViewCell


+ (instancetype)cellWithTableview:(UITableView *)tableView {
    //cell复用，唯一标识
    static NSString *identifier = @"szhCell";
    //从缓存池中取得
    SZH_TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    //缓存池中没有，创建添加标识
    if (cell == nil) {
        cell = [[SZH_TableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    return cell;
}

//重写init方法构建cell内容
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        //图片
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(5, 5, 80, 60)];
        [self.contentView addSubview:imageView];
        self.imgView = imageView;
        
        //标题
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetMaxX(imageView.frame) + 10, 15, 200, 20)];
        label.font = [UIFont systemFontOfSize:20.0f];
        [self.contentView addSubview:label];
        self.label = label;
        
        
        //副标题
        UILabel *subLabel = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetMaxX(imageView.frame) + 10, 40, 200, 13)];
        subLabel.font = [UIFont systemFontOfSize:13.0f];
        [self.contentView addSubview:subLabel];
        self.subLabel = subLabel;
    }
    return self;
}

//重写set方法，模型传递
- (void)setModel:(SZH_CellModel *)model {
    _model = model;
    
    self.imgView.image = [UIImage imageNamed:model.image];
    self.label.text = model.title;
    self.subLabel.text = model.subTitle;
    
    
}



- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
